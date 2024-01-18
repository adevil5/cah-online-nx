// Cards Against Humanity JSON sourced from https://crhallberg.com/cah/

const fs = require('fs');

function processJsonToSql(jsonFilePath) {
  const jsonData = JSON.parse(fs.readFileSync(jsonFilePath, 'utf8'));

  let sqlStatements = [];
  let newDecks = new Set();

  // Processing white and black cards
  const whiteCards = jsonData.white;
  const blackCards = jsonData.black;

  // Iterate through each pack
  for (const [_, packData] of Object.entries(jsonData.metadata)) {
    const deckName = packData.name.replace(/'/g, "''");
    const official = packData.official ? 'TRUE' : 'FALSE';

    // Insert new decks
    sqlStatements.push(
      `DO $$ BEGIN IF NOT EXISTS (SELECT 1 FROM decks WHERE name = '${deckName}') THEN INSERT INTO decks (name, official) VALUES ('${deckName}', ${official}); END IF; END $$;`
    );
    newDecks.add(deckName);

    // Process white cards for this pack
    packData.white.forEach((index) => {
      const cardText = whiteCards[index].replace(/'/g, "''").trim();
      sqlStatements.push(
        `INSERT INTO cards (deck_id, text, type) SELECT deck_id, '${cardText}', 'white' FROM decks WHERE name = '${deckName}' AND NOT EXISTS (SELECT 1 FROM cards WHERE text = '${cardText}' AND type = 'white');`
      );
    });

    // Process black cards for this pack
    packData.black.forEach((index) => {
      const card = blackCards[index];
      const cardText = card.text.replace(/'/g, "''").trim();
      const cardPick = card.pick || 1;
      sqlStatements.push(
        `INSERT INTO cards (deck_id, text, type, pick) SELECT deck_id, '${cardText}', 'black', ${cardPick} FROM decks WHERE name = '${deckName}' AND NOT EXISTS (SELECT 1 FROM cards WHERE text = '${cardText}' AND type = 'black');`
      );
    });
  }

  const sqlScript = sqlStatements.join('\n');
  const outputFilePath = jsonFilePath.replace(
    'cah-cards-compact.json',
    'copy-to-seed.sql'
  );
  fs.writeFileSync(outputFilePath, sqlScript);

  return outputFilePath;
}

const jsonFilePath = './supabase/cards/cah-cards-compact.json';
const outputSqlFile = processJsonToSql(jsonFilePath);
console.log(`Generated SQL file: ${outputSqlFile}`);
