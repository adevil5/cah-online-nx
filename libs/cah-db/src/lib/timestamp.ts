export const getTimestamp = () => {
  const date = new Date();
  const year = date.getFullYear(); // gets the year as a 4 digit number
  const month = String(date.getMonth() + 1).padStart(2, '0'); // gets the month (0-11, so we add 1), converts it to a string, and pads it with a 0 if necessary
  const day = String(date.getDate()).padStart(2, '0'); // gets the day of the month (1-31), converts it to a string, and pads it with a 0 if necessary
  const hours = String(date.getHours()).padStart(2, '0'); // gets the hours (0-23), converts it to a string, and pads it with a 0 if necessary
  const minutes = String(date.getMinutes()).padStart(2, '0'); // gets the minutes (0-59), converts it to a string, and pads it with a 0 if necessary
  const seconds = String(date.getSeconds()).padStart(2, '0'); // gets the seconds (0-59), converts it to a string, and pads it with a 0 if necessary
  const timestamp = `${year}${month}${day}${hours}${minutes}${seconds}`;

  return timestamp;
};
