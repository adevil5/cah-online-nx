--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.2

-- Started on 2023-07-01 22:52:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3717 (class 0 OID 28996)
-- Dependencies: 248
-- Data for Name: card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card (id, is_white_card, text, pick_count, card_pack_id) FROM stdin;
da43220c-52cc-4dd7-a50b-0e1f2ed5e5b1	f	This app is basically Tinder, but for _.	1	ea613201-36d3-406d-be15-e7496396a199
5d7894ff-91ea-49a4-b556-6801fafdbdff	f	Such _. Very _. Wow.	2	ea613201-36d3-406d-be15-e7496396a199
f288d584-3449-40bf-b617-3e51dda6806d	f	Nothing says "I love you" like _.	1	ea613201-36d3-406d-be15-e7496396a199
9694b2a6-a7f0-4487-87f2-30d7450fe2c3	f	I'm just gonna stay in tonight. You know, Netflix and _.	1	ea613201-36d3-406d-be15-e7496396a199
d766fa69-a52f-44a6-8b50-277d88baa170	f	I need you like _ needs _.	2	ea613201-36d3-406d-be15-e7496396a199
16e1cfb2-a187-4958-867d-d294892c7c7b	f	Don't worry, Penny! Go Go Gadget _!	1	ea613201-36d3-406d-be15-e7496396a199
ce8839e9-3a6e-4bb4-b85c-83aed1d2dbc8	t	Youtube comments.	\N	ea613201-36d3-406d-be15-e7496396a199
47225892-df15-48ee-a685-afad6a15b734	t	Three years of semen in a shoebox.	\N	ea613201-36d3-406d-be15-e7496396a199
2fb4964a-a84d-43e2-9a8c-5a4c8caa30fb	t	That thing on the Internet everyone's talking about.	\N	ea613201-36d3-406d-be15-e7496396a199
10582acd-68e4-47f5-b5a4-67aebc071a57	t	Taking a shit while running at full speed.	\N	ea613201-36d3-406d-be15-e7496396a199
1c243158-672c-41ef-8d38-be9f9edba9cb	t	Smash Mouth.	\N	ea613201-36d3-406d-be15-e7496396a199
b3660a31-2c29-45d8-a222-de121492f6f2	t	Pretending to be black.	\N	ea613201-36d3-406d-be15-e7496396a199
522f7f32-8695-4bb0-9bfe-ed2a8e8d1ac6	t	My privileged white penis.	\N	ea613201-36d3-406d-be15-e7496396a199
e6526e59-8c11-486e-88d4-0a06f719d816	t	My browser history.	\N	ea613201-36d3-406d-be15-e7496396a199
238bbabb-3d03-49d2-b408-3162c60c7698	t	Matching with Mom on Tinder.	\N	ea613201-36d3-406d-be15-e7496396a199
7fc5fa55-15be-404d-b0ea-48b1b86d4b2d	t	Internet porn analysis paralysis.	\N	ea613201-36d3-406d-be15-e7496396a199
8e7c4ef7-e040-418b-aaf9-ae3fa1e54481	t	Googling.	\N	ea613201-36d3-406d-be15-e7496396a199
8141161a-d955-4b0c-b1ec-034971610e20	t	Goats screaming like people.	\N	ea613201-36d3-406d-be15-e7496396a199
920d6fa1-5bf9-463e-bbd9-49c259837f63	t	Getting teabagged by a fifth grader in Call of Duty.	\N	ea613201-36d3-406d-be15-e7496396a199
de9cca2c-1372-4645-bdde-723346242d62	t	Game of Thrones spoilers.	\N	ea613201-36d3-406d-be15-e7496396a199
4d5f1240-9832-41a2-b221-549f7992648b	t	Destroying Dick Cheney's last horcrux.	\N	ea613201-36d3-406d-be15-e7496396a199
c2c7ec5b-74f4-4f05-afc7-a6c9d9d118b5	t	Cat massage.	\N	ea613201-36d3-406d-be15-e7496396a199
22b32f71-53fb-4870-a7a9-753d6025c4d6	t	A respectful discussion of race and gender on the Internet.	\N	ea613201-36d3-406d-be15-e7496396a199
7d5a5870-b4ba-4764-aa68-22b108ca6e4a	t	A night of Taco Bell and anal sex.	\N	ea613201-36d3-406d-be15-e7496396a199
17f8d0ed-72e8-49cf-9aed-6cf56eba04cd	t	A man from Craigslist.	\N	ea613201-36d3-406d-be15-e7496396a199
6d25a668-7dd3-44fe-b0dc-d2982bf6dd5c	t	A fun, sexy time at the nude beach.	\N	ea613201-36d3-406d-be15-e7496396a199
8b4522ae-7958-43e3-b220-38bedefd0d72	t	A complete inability to understand anyone else's perspective.	\N	ea613201-36d3-406d-be15-e7496396a199
b46444cb-9927-4ee6-b222-495d85912ec1	f	You know what's, like, really funny when you think about it? _.	1	8c660d5b-aaf2-4d12-9584-01460706bc1a
0f84a9e0-caa7-477a-b912-d68d7c1ec0b9	f	Okay here's the pitch. James Franco and Seth Rogen are trying to score some weed, and then _ happens.	1	8c660d5b-aaf2-4d12-9584-01460706bc1a
fed6c880-b447-4452-bbe9-d5fda98a420d	f	Instead of playing a card this round, everyone must stare the Card Czar while making a sound you'd make after tasting something delicious.	1	8c660d5b-aaf2-4d12-9584-01460706bc1a
1b445689-e1b5-4c37-b35c-5dc40025bded	f	Hold up. I gotta deal with _, then l'mma smoke this.	1	8c660d5b-aaf2-4d12-9584-01460706bc1a
5213d4a2-df0a-4ff3-9621-0c71c94a62ab	f	Everyone is staring at you because you're _.	1	8c660d5b-aaf2-4d12-9584-01460706bc1a
5f45f14b-6e3e-488b-baa0-a876f59d31d1	t	Whatever the fuck I was just talking about.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
027618c4-b8bb-422a-b07b-95693e2d7545	t	Unbelievably soft carpet.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
3796e603-6691-402d-b214-5fb1376984b3	t	Too much edibles.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
989ad192-dd08-4ae3-9bf3-a45108f44e53	t	The banks, the media, the entire system, man.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
496194f4-56ef-4cd6-afc8-adb07ba940c8	t	Snoop Dogg.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
27698c9f-04d2-4d4e-8d38-10a9c4c98a7b	t	Smoking a joint with former President Barack Obama.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
70f13553-4d59-4cc7-8eff-a82a072daefe	t	Smoking a blunt butt-ass naked.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
3ac9f0ac-9d63-4d5e-a8a9-dcbcc655834a	t	My own fingers.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
4473507b-a834-4690-8e6e-770d4134853f	t	Huge popcorn nugs of hairy alien weed.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
47c0c92c-eb0f-49b6-bee2-47b07c867a6d	t	How bright the sun is.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
2328ec55-54b4-4794-9940-88223aac2fb3	t	Hot tub.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
11273e13-8f96-4d35-95b9-eb64dca90ba3	t	Grinning like an idiot.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
aeb9e3ab-d2ea-4b86-bd8b-5de1032a7734	t	Getting high and watching Planet Earth.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
1b8eba9d-6912-43e9-a32d-024aceae9112	t	Forgetting to breathe and then dying.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
a0d2c51b-2207-4449-8276-4b3758908922	t	Eating all the skin off a rotisserie chicken.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
a754d738-a81c-4d8a-a84a-2b881f40ae4c	t	Dropping stuff and knocking everything over.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
c51e60fe-f5f9-418e-90eb-7f10a7a2e7a9	t	Dicking around on the guitar for an hour.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
f2d5a385-2b79-403f-8264-89059fe7387c	t	Dank ass cancer weed.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
6d961da4-6bd7-4747-8029-1d01a7344923	t	Cheese crunchies.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
f6bd896b-d62c-4b35-b077-eadf88d37a55	t	Being too high for airplane.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
48a6bd80-3297-4524-889f-7c8a89f17c95	t	Ancient aliens.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
f6e73164-fefe-420c-885c-b74055d48b74	t	An eight-foot man smoking a six-foot bong.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
da7a9b7f-7ef8-4aab-93e7-c57004e04f0c	t	A whole cheese pizza just for me.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
493f5fa3-d782-4d6d-be8a-ec5a787f6d00	t	A sandwich with Cheetos in it!	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
20f01b8f-bb76-43ed-a624-8ab91e424c4e	t	A bong rip so massive it restores justice to the kingdom.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
f1651bc8-ac6c-4e64-ba8f-5691eea80c63	f	Trump's great!  Trump's got _.  I love that.	1	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
b4467adc-74f3-4984-898d-e2bc9cb0c236	f	It's 3AM.  The red phone rings.  It's _.  Who do you want answering?	1	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
5916a265-c234-491f-a008-8be631ec218d	f	According to Arizona's stand-your-ground law, you're allowed to shoot someone if they're _.	1	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
b18cd786-5d34-4c68-9825-579f962cb529	t	The good, hardworking people of Dubuque, Iowa.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
55510311-24fc-4947-a3a2-d6795c94b12e	t	Sound fiscal policy.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
00059632-cd37-4f78-b680-61684ceff02d	t	Shouting the loudest.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
ce599e9e-b31d-452b-8605-d4a7b0fbb525	t	Jeb!	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
36ada0d5-1811-4244-a9ef-8bb8d24048c9	t	Hating Hilary Clinton.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
ea1294b0-50fe-4fae-8cd4-b4eeb770dba7	t	Growing up and becoming a Republican.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
e8bc293a-3c9a-42cd-9565-3df3c8c38575	t	Fully appreciating naked Morris dancing.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
79f3ba12-2ddd-4fdb-9128-af08734452e0	t	Dispelling this fiction that Barack Obama doesn't know what he's doing.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
3aa28f9a-9fae-447b-b428-2d657886191e	t	Courageousely going ahead with that racist comment.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
003ac6d5-1bc4-4200-a337-60ea5c56c51b	t	Conservative talking points.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
62384ebf-2503-4273-8d26-b936d0c26395	t	Actually voting for Donald Trump to be President of the actual United States.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
a86f636b-abac-4e24-922a-8cbc7f7c46f3	t	A liberal bias.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
d1e04770-ae62-4ed0-a36b-4e698857c43c	f	When you go to the polls on Tuesday, remember:  a vote for me is a vote for _.	1	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
552ac8a6-f781-4ab4-9d7b-4b9dd0e95c1b	f	Senator, I trust you enjoyed _ last night.  Now, can I count on your vote?	1	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
2f2df6bc-260c-42ad-975e-3dd515a51f0a	f	As repartations for slavery, all African Americans will receive _.	1	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
b6df4b6e-5e6d-480b-b511-e0ad2f05ce14	t	The systematic disenfranchisement of black voters.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
775ce044-8dbd-4043-bc14-6ff88f5ec927	t	The fact that Hillary Clinton is a woman.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
23dc8aea-1451-4b99-95c4-3df1524f78ca	t	The Bernie Sanders revolution.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
a0540962-3b8d-4428-a0f9-530a39a7b50c	t	Slapping Ted Cruz over and over.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
7486b47f-8242-4b0a-af7e-4d5d8e0f0abe	t	Letting Bernie Sanders rest his world-weary head on your lap.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
6954d393-70e8-4a90-ab06-4c8ef5a4a6d1	t	Kicking the middle class in the balls with a regressive tax code.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
1255dced-bec0-4169-b5ee-3780232d4d84	t	Keeping the government out of my vagina.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
52b5f2c5-8b2e-45b8-884a-fafa78497f96	t	Increasing economic and political polarization.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
08236623-c99b-4574-8461-4b0096a46e55	t	Eating the president's pussy.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
16b2682e-2704-4714-bd00-820705196d9d	t	Donald Trump holding his nose while he eats pussy.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
6ad415a8-7c71-4962-b278-9e84ae5eca5a	t	Black lives mattering.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
16a5641d-5f79-4112-b90e-0b62cdda1dd6	t	A beautiful, ever-expanding circle of inclusivity that will never include Republicans.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
6ef7cb17-bdf3-4678-8ffa-f3cab762e9d6	f	In 2019, Donald Trump eliminated our national parks to make room for _.	1	9fd68ae1-74fd-4337-b02a-f4d85295b708
b127a5bd-51c3-4d0b-bcbc-61b19e18e942	f	Donald Trump's first act as presidnet was to outlaw _.	1	9fd68ae1-74fd-4337-b02a-f4d85295b708
8bec3114-f4eb-4668-982b-47d32b995618	f	Donald Trump has nominated _ for his VP.	1	9fd68ae1-74fd-4337-b02a-f4d85295b708
fd3551ba-b037-4d8b-b533-7574fc19c9ae	t	World Wars 3 through 5.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
f67d5f4c-d186-49a7-b483-aaf92d9fb375	t	Whipping lower-class white men into a xenophobic frenzy.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
db5e198d-d4c2-4a13-9018-26b8b7cc4d42	t	Trying to wake up from this nightmare.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
a2e87342-3701-499a-b718-b90fa33b6223	t	Trying to remember what music was.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
8a2035ba-965d-4a7b-8545-771ee7a52d52	t	The purging of the disloyal.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
ffbcbede-8877-45ba-8363-2dc17537f1f2	t	Roaming through a wasteland of windblown trash and deserted highways.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
8f0d664d-f0af-4866-8ad0-f4e0ff5eff94	t	Rage.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
caccf439-5ab8-4f28-bd9e-63b33c19cb8c	t	President Donald Trump.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
9eecf7aa-b90b-450a-9f01-022410b45ee2	t	Nuclear winter.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
6df2f61a-5563-4aef-9249-c3373595d7af	t	Mild amusement.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
02471537-9834-4720-a936-0e1cdd4148b2	t	Making Islam illegal.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
191fb2cb-2303-4cce-b9a3-4a083b7842b5	t	Finding out that democracy might not be such a great idea.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
11ea241c-9abf-4f29-bfeb-183134a6210f	t	Extra rations for my little girl.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
f9417843-2150-4cba-be54-3c4676573b66	t	Drinking urine to survive.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
ffbddae3-33b9-410a-bc2a-55ed907b350b	t	Desperately hurling insults at Donald Trump as he absorbs them into his rapidly expanding body.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
30c50b23-58bd-48c4-bf34-42a3a698c0ef	t	Casual dismissiveness.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
61004ecc-cd88-4c68-ab10-462d5189d977	t	Burying my only son.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
abb4e4b6-9da5-48af-8d40-0ba2bc98b586	t	Bringing millions of dangerous low-paying manufacturing jobs back to America.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
9a26c9b1-f35c-401e-a8fe-36e3b6315bcc	t	A legitimate reason to commit suicide.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
a7df98e3-5e73-4422-84a0-60bde54931bc	t	A gnawing sense of dread.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
3290c0b6-3534-406f-8609-baa0e7e710ce	t	A father and son fighting each other over the last scrap of bread.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
703caf07-9e13-4041-979f-a1e4010d66f9	t	A back-alley abortion from a Mexican cyborg doctor.	\N	9fd68ae1-74fd-4337-b02a-f4d85295b708
7e842942-9c36-43ab-b80d-dc9d38b2b41d	f	Jellicle Cats come out tonight, Jellicle Cats come one, come all, the time for _ is now, Jellicles come to the Jellicle Ball.	1	4ac14a35-038f-4a9e-b26a-876e50aebbcb
a1823d02-4e2e-4cd1-840a-f14adae49128	f	Ahhh _! Toodle pip!	1	4ac14a35-038f-4a9e-b26a-876e50aebbcb
9909080f-f3dc-4d4d-b361-61c92bac9ee0	f	_! All alone in the moonlight!	1	4ac14a35-038f-4a9e-b26a-876e50aebbcb
08542001-0d29-4772-be7c-1bff4aa90db6	t	Winkles and shrimps.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
229c6c56-2dfe-46b2-98de-425f6c8bca17	t	The mystical divinity of unashamed felinity.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
817428b7-a963-4d86-8efe-3b8e963282b4	t	Sir Andrew Lloyd Webber.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
c90169a1-6f3a-4195-8c81-361a3b0a5be4	t	Shimbleshanks.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
688d71d8-b98d-4513-8e56-55d94467563a	t	Rum Tum Tugger.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
b89f4fb6-4e01-4db0-9c1f-9b8163534d4f	t	Peter, Augustus, Alonzo, or James.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
8b4a3f65-5929-4aff-b961-e76c31ccebb5	t	Old Deuteronomy.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
0448e386-956b-4334-805c-8a3e8c15f664	t	Munkustrap.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
80b6c9e1-5133-47c7-9df6-c29e3ee3afeb	t	Mungojerrie and Rumpleteazer.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
d7c03015-8d34-4dee-8810-36af2dfd7427	t	Meow.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
ae6414bd-7c5b-47e3-9467-c0d55158666d	t	Memory.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
78955a4d-76cf-4457-9b2c-141c1b04f712	t	Macavity!	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
6eccc7db-a660-4943-b3ee-55f1618d3c90	t	Jellicle cats.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
54da26f8-d043-4e34-9640-67e0570561d7	t	Heathcliff.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
07a828e5-d706-4e14-9542-60766a332d37	t	Gus: the Palsy Cat.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
2c3da2ac-7f6a-4915-8de3-21e672c2a828	t	Grump Cat.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
52105ef4-b796-4383-9fe9-4feceaeb3e91	t	Growltiger.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
e15fc302-ad4a-4b19-a99c-77ef2f4f1863	t	Grizabella, the glamour cat.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
6115dc34-44c6-4180-93d2-77ae4448e878	t	Griddlebone.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
7d66b661-9fc7-4678-874c-3151090a997a	t	Garfield.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
442980d6-c546-4675-91f9-bef6ac53d436	t	Feline AIDS.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
21bfc196-628f-4ec2-9e83-0e49d7de299e	t	Carbucketty.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
0fb1a41a-be68-4c73-ac9b-6ffa32c35b67	t	Bustopher Jones.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
29b11461-2345-4907-ba0b-e5acc2b5e3a1	t	Becoming Mr. Mistoffelees.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
3b5ed80e-4303-40fb-93a9-b442d2d10358	t	A man who has not heard of a Jellicle cat.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
2696f1a9-1780-4069-acb7-c0a33e7ac4b3	t	30 grown adults crawling around on all-fours.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
49d8472e-04a6-4548-af57-34a41790d000	f	This season at Manhattan Theatre Club: "Who's afraid of _?"	1	3ad24118-ab00-4ad7-9f5b-8071c970160c
20c8a432-4d79-4a87-9fae-46faac4e22dc	f	Let's take it from the top, and remember, you are _. Show me  _(SAME CARD AGAIN)_.	3	3ad24118-ab00-4ad7-9f5b-8071c970160c
655ceb24-c41b-42cf-bdec-8e4b3d111a21	f	Comedy = Tragedy + _.	1	3ad24118-ab00-4ad7-9f5b-8071c970160c
bb3ff5c8-3d81-4e09-bf32-1c508993abdb	t	Two tickets to Hamilton.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
d825df48-f07c-44b8-994b-bad2c744c284	t	Two men in a horse costume.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
f651149a-dd78-43eb-9680-5f16a7f9d61d	t	Two contrasting monologues-- one classical, one contemporary.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
e745c353-0f46-4115-abf2-f9dd22363924	t	This old lady next to me who won't stop farting.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
c03935c3-b50a-4674-bf38-5ba4f3c0f3a5	t	The wickedly talented, one and only, Adele Dazeem.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
b008d993-7bf4-42fe-856f-05dc6fdd3875	t	The Phantom of the Opera.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
eb21c741-9c13-4bac-9145-19fffae45709	t	Taking a year off to study Japanese puppet theatre.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
4f4e0278-de53-4b3c-ba81-8470d5a52c4a	t	Rampant misogyny and sexual harassment.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
53c9cde9-5456-4266-9881-848cf243fbce	t	Problematic depictions of Asian characters.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
29df9194-fc60-44a4-83b4-ccd4d02fb27f	t	Narcissistic Personality Disorder.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
7bee00bb-7c5b-40c0-b815-5454112f8b30	t	My whole family watching.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
40df6a15-bfbb-4b49-8c31-25ced2abb477	t	Linda, 18 but wise beyond her years, achingly beautiful.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
88fcdb30-425e-44d2-b3c8-ab613f85475a	t	Killing Dad and fucking Mom.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
a1541875-70a8-4fd2-bc1a-0acef6072eda	t	Improv comedy.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
cc71832e-6d37-4415-9d63-db5e993c51c7	t	My dickhead roomate.	\N	67ed36f2-9707-4048-91aa-236725de08d8
53aed697-d6a6-4024-a648-d6d2f7af19dc	t	Forgetting your lines, shitting your pants, and your pants falling down.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
d0db953f-27d3-4462-895b-2da6e75114a5	t	Five miso soups, four seaweed salads, three soy burger dinners, two tofu dog platters, and one pasta with meatless meatballs.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
2be6799c-8540-4050-b69e-7dab2a34e76f	t	Brief male nudity.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
a144bb51-6339-4e08-a032-886e5614d395	t	Being crushed to death by a stage light.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
3f93a99d-73fe-4a9d-85cd-de98ac0bf3b2	t	An autographed headshot of Nathan Lane.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
e25fa72f-ad82-4724-a389-e9ab5baa0824	t	All 59 inches of Kristin Chenoweth.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
a987d365-08f0-417b-a1ca-e40badb8797c	t	Absolutely butchering Sondheim.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
02cd5430-a017-47eb-9602-941c3af13023	t	A play about people I don't like doing things I don't care about.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
fac26087-766e-4804-a043-1e74398f9bc9	t	A fog machine.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
c5151838-cd0c-4575-917f-fd2183515e73	t	A Drama Desk Award for Outstanding Sound Design in a Play.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
4287f5bb-f8a5-4aef-9f2f-c663fa3e6e64	t	A dead salesman.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
987cd7a4-8f31-4118-8e7e-a8884d183466	f	Hey, you guys want to try this awesome new game? It's called _.	1	4d845a2e-d6e7-4110-a862-4363efde011e
50c1e411-5d82-463e-8a1a-5d4943cdddc4	f	For my turn, I will spend four gold and allocate all three workers to _.	1	4d845a2e-d6e7-4110-a862-4363efde011e
72891444-845e-400b-b670-ab3aebd0ebc3	f	Backers who supported Tabletop at the $25,000 level were astonished to receive _ from Wil Wheaton himself.	1	4d845a2e-d6e7-4110-a862-4363efde011e
e76726f3-6402-4fbb-bf78-6c704a941dd3	t	Victory points.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
61a3f6e3-a063-4e6b-b03a-542fcac3f6c7	t	The porn set that Tabletop is filmed on.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
f894c1db-9f1b-483a-9ff9-1701ad985367	t	The pooping position.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
e3914fc4-5026-497c-bdb5-7099b529d224	t	Spending 8 years in the Himalayas becoming a master of dice-rolling and resource allocation.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
29438836-55c4-4033-b6fb-9303882e8a03	t	SIX GOD DAMN HOURS OF FUCKING DIPLOMACY.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
0fbe9c91-e541-4fbc-a437-11c2f6315656	t	Condensing centuries of economic exploitation into 90 minutes of gaming fun.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
25dd7c44-8b39-43b9-b6fd-3b95b2cab56c	t	An owlbear.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
9f8574ec-edd7-484c-aa9c-52dc81b42996	t	A zombie with a tragic backstory.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
fd5102a5-df39-4b6d-b063-76d531c81eeb	t	A Wesley Crusher blow-up doll.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
23cfaa8c-491d-4a04-a604-7a0dd5c7e881	t	A marriage-destroying game of The Resistance.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
707d4a72-3147-4bdb-9dd6-a0055123de66	t	A German-style board game where you invade Poland.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
ac694d46-a70d-4a04-a150-5f2ec32dcb14	t	A disappointing season of Tabletop that's just about tables.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
95d8b63f-671c-42fc-b433-b2c2104191b6	f	What's the one thing that makes an elf instantly ejaculate?	1	a95919a6-97a3-40dc-84ba-702fed111361
40614fa6-cc7c-4052-b13e-3fc597b3ee94	f	This holiday season, Tim Allen must overcome his fear of _ to save Christmas.	1	a95919a6-97a3-40dc-84ba-702fed111361
e6a21832-c754-4096-86b9-40a2b13fd975	f	Jesus performed the miracle of _ but it was never recorded.	1	a95919a6-97a3-40dc-84ba-702fed111361
f874fdf5-c22d-4c08-98b4-40e5ce5f6ee0	f	It's beginning to look a lot like _.	1	a95919a6-97a3-40dc-84ba-702fed111361
c00f741d-a35b-4d60-b15c-3cbbdb391390	f	Donna, pick up my dry cleaning and get my wife something for Christmas. I think she likes _.	1	a95919a6-97a3-40dc-84ba-702fed111361
3b096d76-c035-495d-b4fc-4bda2dee383b	f	Blood is thicker than _.	1	a95919a6-97a3-40dc-84ba-702fed111361
e8aa89ee-84c4-4f4e-90c7-f3ffbc184011	t	These new jeans that look so cool but are actually so bad.	\N	a95919a6-97a3-40dc-84ba-702fed111361
4b6f94a4-6b38-48e4-ae08-20285c8d8fee	t	The shocking stupidity of the American public.	\N	a95919a6-97a3-40dc-84ba-702fed111361
31908cce-af7d-4f5b-a559-5a9bbfbfae12	t	The 9,000 children who starred to death today.	\N	a95919a6-97a3-40dc-84ba-702fed111361
5719ea7f-078f-48ad-bde7-66ee41b1843b	t	Starting to see where ISIS is coming from.	\N	a95919a6-97a3-40dc-84ba-702fed111361
120a5e0e-def1-401d-ac61-a8e259a4040c	t	Sodomising the corpse of Ben Franklin.	\N	a95919a6-97a3-40dc-84ba-702fed111361
81d9c46f-850d-4528-908f-86ea2f15ee1c	t	Snow falling gently on the frozen body of an orphan boy.	\N	a95919a6-97a3-40dc-84ba-702fed111361
f0437af1-4bd1-4029-aa4d-ef6e086bd8c6	t	Probably grandma's last Christmas, kids.	\N	a95919a6-97a3-40dc-84ba-702fed111361
9c3222ff-30fc-4c2c-bede-302292146341	t	Pretending to be one of the guys but actually being the spider god.	\N	a95919a6-97a3-40dc-84ba-702fed111361
8c4344da-3dcf-44e4-9840-02e69b7da334	t	Piece of shit Christmas card with no money in them.	\N	a95919a6-97a3-40dc-84ba-702fed111361
320399a8-4e14-4e99-aa89-c805640a8e02	t	My uncle who voted for Trump.	\N	a95919a6-97a3-40dc-84ba-702fed111361
f09c9f0e-ba37-40bb-96e2-a59fe0a7d36c	t	My hot neighbor	\N	a95919a6-97a3-40dc-84ba-702fed111361
44249f5d-d6c2-43e1-b32d-8e6f3f4dc4aa	t	Is snowman that contains the soul of my dead father.	\N	a95919a6-97a3-40dc-84ba-702fed111361
0cf87bdc-11f7-4fbe-874a-70dddb8e6a99	t	How many drinks and Deborah has had.	\N	a95919a6-97a3-40dc-84ba-702fed111361
8792d50f-ead5-4e0e-98e4-5079ec9bb966	t	How great of a blowjob Jesus could give.	\N	a95919a6-97a3-40dc-84ba-702fed111361
94d84a5c-0f55-4364-8b8e-259a10e38bf0	t	How cool it is that I love jesus and he loves me back.	\N	a95919a6-97a3-40dc-84ba-702fed111361
797878ad-fc4c-49af-9e95-38cda654a6a5	t	Gift wrapping a live hamster.	\N	a95919a6-97a3-40dc-84ba-702fed111361
7b8e9e99-1097-479a-b2ed-6cc7b6a8e651	t	Fucking up Silent Night in front of 3,000 parents.	\N	a95919a6-97a3-40dc-84ba-702fed111361
04305c6d-fca2-4084-aa8c-d9e82d6501ca	t	Finding out that Santa isn't real.	\N	a95919a6-97a3-40dc-84ba-702fed111361
1b3a6219-d7f5-4807-9f6b-8df5a54ba076	t	Eliminate liberal bias!	\N	a95919a6-97a3-40dc-84ba-702fed111361
e2ce4e6e-f716-43b8-a518-877b222ee391	t	Another shot of morphine.	\N	a95919a6-97a3-40dc-84ba-702fed111361
5d1bdb2a-6024-4e94-93f3-d8b3f447f6ec	t	A Toyota Corolla with a "Bring Our Jobs Back" Trumper sticker.	\N	a95919a6-97a3-40dc-84ba-702fed111361
842c3b1a-4125-44fd-80b1-49f0925bc0e8	t	A frozen homeless man shattering on your doorstep.	\N	a95919a6-97a3-40dc-84ba-702fed111361
4a73a9e3-b37a-4715-adc7-45ce2bd2d6f6	t	A choir of angels descending from the sky and jizzing all over dad's sweater.	\N	a95919a6-97a3-40dc-84ba-702fed111361
a7d09b2c-fe1b-4bd2-8bc0-b211953ed220	f	What really killed the dinosaurs?	1	fc7c21e8-6e2e-482e-914a-6f4725984145
54734f8c-facd-487a-b2b9-5e6a3d0b48eb	f	Today on Mythbusters, we found out how long _ can withstand _.	2	fc7c21e8-6e2e-482e-914a-6f4725984145
b801eb84-9f51-450e-9944-4bf2bb55b547	f	In what's being hailed as a major breakthrough, scientists have synthesized _ in the lab.	1	fc7c21e8-6e2e-482e-914a-6f4725984145
dec8c12a-5ca7-4940-af16-f112e399ad8b	f	In line with our predictions, we find a robust correlation between _ and _ (p<.05).	2	fc7c21e8-6e2e-482e-914a-6f4725984145
67a289f4-0d4a-4252-86cd-4200fb768a3d	f	In an attempt to recreate conditions just after the Big Bang, physicists at the LHC are observing collisions between _ and _.	2	fc7c21e8-6e2e-482e-914a-6f4725984145
c9aace72-5960-4810-80e0-9510b32bf5fb	f	Hey there, Young Scientists! Put on your labcoats and strap on your safety goggles, because today we're learning about _!	1	fc7c21e8-6e2e-482e-914a-6f4725984145
0d301fb5-44c4-4815-adf4-3559b53f3dd4	f	A study published in Nature this week found that _ is good for you in small doses.	1	fc7c21e8-6e2e-482e-914a-6f4725984145
ba2419c0-d5d9-4b83-82d4-058d407e2e3a	t	The Sun engulfing the Earth.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
0c8ad747-f4e8-4a9f-a477-947fdff82502	t	The quiet majesty of the sea turtle.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
379fddd7-164b-4bda-b834-7e31906ac283	t	Slowly evaporating.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
1fe059a6-aafd-4fe4-9372-60ac8cbeb289	t	Reconciling quantum theory with general relativity.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
b5a3b534-9de4-4b01-8ce5-deb697fd2814	t	Photosynthesis.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
548729ce-24ae-45ad-81ea-7e0c4cfd1471	t	Oxytocin release via manual stimulation of the nipples.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
626e0c69-6fee-49e2-bf38-fb479852f999	t	Insufficient serotonin.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
886b198e-0608-49ce-8825-e0aef726cf67	t	Infinity.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
5a3f54f9-954b-4f1c-8a77-818ea3bdaa71	t	Getting really worried about global warming for a few seconds.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
c2e1537a-db55-460b-a637-23cb8cb3c256	t	Fun and interesting facts about rocks.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
76248e56-5ac1-47fa-81c4-da318cd463bf	t	Failing the Turing test.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
0716ef9e-3f2e-4398-abfa-f490d5bab9b4	t	Explosive decompression.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
0713fd3e-7704-4b41-af1b-0f6a38e6ea23	t	Evolving a labyrinthine vagina.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
9ba4b180-72a8-422b-859e-9e8d9ad4a2a6	t	Electroejaculating a capuchin monkey.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
e92fc4ef-4c61-4e93-a196-1f07da8ab98f	t	Driving into a tornado to learn about tornadoes.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
ca0d9282-1f2d-42e8-8013-525510340c77	t	Developing secondary sex characteristics.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
16a79d74-f1c2-46e6-915a-3bcbefefe24e	t	David Attenborough watching us mate.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
e1338bb6-4799-4bfe-b359-3670661de6ff	t	Being knowledgeable in a narrow domain that nobody understands or cares about.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
53b9ecd8-6950-469e-80bc-5f0253b65ef8	t	Achieving reproductive success.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
dcb5f0cd-8fb2-4917-9e45-bba424a07b3f	t	A supermassive black hole.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
ade28a81-b5fa-4ac5-b615-d00509869a80	t	A 0.7 waist-to-hip ratio.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
9cbbdffc-4f58-4406-a57b-f1235973f4f7	t	3.7 billion years of evolution.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
f2af2064-62a0-4094-bc36-10777a37ed66	f	You're not going to believe this, but I'm you from the future! You've got to stop _.	1	c11401c9-6f08-4506-9037-11c6d1a92691
54e11801-4cb0-4b84-8c20-60f32f0b3b04	f	You have violated the Prime Directive! You exposed an alien culture to _ before they were ready.	1	c11401c9-6f08-4506-9037-11c6d1a92691
68871fc4-3883-4e64-9305-b2ca6eea4f7b	f	What is the answer to life, the universe, and everything?	1	c11401c9-6f08-4506-9037-11c6d1a92691
bc51552f-2525-4f49-b1b1-d89de6bbd29b	f	This won't be like negotiating with the Vogons. Humans only respond to one thing: _.	1	c11401c9-6f08-4506-9037-11c6d1a92691
bf4f7513-c32d-44b2-96e4-64b25e08ac64	f	Madam President, the asteroid is headed directly for Earth and there's only one thing that can stop it: _.	1	c11401c9-6f08-4506-9037-11c6d1a92691
bee2d99d-87c7-4bdc-9ef2-e8355ca0295d	f	Feeling nostalgic when you remember _ from your childhood.	1	c11401c9-6f08-4506-9037-11c6d1a92691
28f37b93-9f95-42a3-8018-d229cf6f58f5	f	Computer! Display _ on screen. Enhance.	1	c11401c9-6f08-4506-9037-11c6d1a92691
3dc8fb21-6ce5-4e86-b760-153890f36ec2	t	Vulcan sex-madness.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
3303b2d5-e92b-4b88-8f96-af93b0c16e0a	t	Trimming the poop out of Chewbacca's butt hair.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
c033a155-9aa9-4c45-9a9c-533c3b17da6c	t	Three boobs.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
e517ac3e-dc8f-4a74-bd47-a47a8a880de6	t	The ending of Lost.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
2ba06152-3ba8-4399-af53-4b4709cf9f37	t	The dystopia we're living in right now.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
c2470bec-00ae-4cb2-97f0-2d5c6473f254	t	That girl from the Hunger Games.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
bad6013a-577a-4cf6-a96f-dae9313f7339	t	Nine seasons of sexual tension with David Duchovny.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
771a3bc5-b281-4ab5-aa15-41a89aed98e8	t	Masturbating Yoda's leathery turtle-penis.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
6f607fca-d660-4501-a36a-d734a7ac7fb8	t	Laying thousands of eggs in a man's colon.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
6c17b0ad-2d2b-44f7-983b-cb24c0e0eb49	t	How great of a movie Men In Black was.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
bd066ab3-4334-4658-a593-431a294a123e	t	Going too far with science and bad things happening.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
1c1e2141-6893-4c5f-9689-c2cedbbdfb5f	t	Funkified aliens from the planet Groovius.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
08fe5ff7-50c6-46ee-921b-7f5fc4f34744	t	Frantically writing equations on a chalkboard.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
f71093a5-062f-4eeb-a465-2065f6943e3c	t	Darmok and Jalad at Tanagra.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
6d4bc5a0-f0f6-45ad-8b2a-4f13b6d9c74e	t	Cosmic bowling.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
6f495e6a-f44d-4fd8-992e-87062fb9934d	t	Cheerful blowjob robots.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
0fc33121-c347-4b88-8336-1efb1298733a	t	Beep beep boop beep boop.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
9960ae1f-858d-4a59-8622-7bb0c42e3418	t	An alternate history where Hitler was gay but he still killed all those people.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
42178565-e82c-4830-a712-753991387028	t	A protagonist with no qualities.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
17f77c56-1e2c-4272-86ab-e593a6cc567d	t	A planet-devouring space worm named Rachel.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
ca620bf1-6476-4b46-a244-82de804b95e1	t	A misty room full of glistening egg sacs.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
bf75b83a-6cf2-4223-8c56-3f0ee5c18078	t	A hazmat suit full of farts.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
06ca72cf-e43a-4381-8ad4-2f91b6903dff	t	[A picture of Sean Connery in the movie Zardoz]	\N	c11401c9-6f08-4506-9037-11c6d1a92691
f5ac1375-9433-4811-901b-889167600b97	f	Wait, I came here to buy socks. How did I wind up with _?	1	36714eaa-f6df-486b-813b-982cdf714895
5b029753-e7b0-400f-baf4-a09b87d01a25	t	The obscene amount of money Cards Against Humanity is making by selling this game at Target.®	\N	36714eaa-f6df-486b-813b-982cdf714895
637a0443-f02e-4fa7-9e1e-6127e4eae6af	t	Subsisting on tiny pizzas.	\N	36714eaa-f6df-486b-813b-982cdf714895
9834c184-f207-400b-b824-a3fe45668e11	t	Shiny gadgets for sadness distraction.	\N	36714eaa-f6df-486b-813b-982cdf714895
1d626cd2-7dca-4ca3-944a-f7607adca2da	t	Saving 20% or more on khakis.	\N	36714eaa-f6df-486b-813b-982cdf714895
956ce6d1-5c6d-45c6-a4e0-46b0036edb97	t	Refusing to go up a size.	\N	36714eaa-f6df-486b-813b-982cdf714895
6493dc02-d7cc-4229-a9cc-92ed43de0417	t	How fun it is to eat Pringles.®	\N	36714eaa-f6df-486b-813b-982cdf714895
3053f362-1033-4d42-b8d7-332f643c954c	t	Getting eaten out in the family fitting room.	\N	36714eaa-f6df-486b-813b-982cdf714895
e527ced9-cf0d-48ca-b73c-a9cd0aab47bc	t	Gender-neutral toys that make children feel no emotions whatsoever.	\N	36714eaa-f6df-486b-813b-982cdf714895
e67914c7-b2c7-403f-a91f-a0184a00cbbb	t	Extracting the maximum amount of money from naive consumers.	\N	36714eaa-f6df-486b-813b-982cdf714895
b3f3f7a5-26dc-4531-8c01-a4f1f38e5437	t	Crunchy snacks for my big flappy mouth.	\N	36714eaa-f6df-486b-813b-982cdf714895
1a09f5a2-e4ce-452e-87f6-c23e1eb1848e	t	Confusing possessions with accomplishments.	\N	36714eaa-f6df-486b-813b-982cdf714895
769c88ae-cdcb-47ae-8bfb-a6531ad70b35	t	Buying the right toothbrush cup for my lifestyle.	\N	36714eaa-f6df-486b-813b-982cdf714895
d794b487-92b8-4c67-9a55-a6d735328792	t	Buying and returning clothes just to have someone to talk to.	\N	36714eaa-f6df-486b-813b-982cdf714895
65630778-a740-49a5-ac2d-12b27a16dcdb	t	Blood Pringles.®	\N	36714eaa-f6df-486b-813b-982cdf714895
44efa28e-b538-40bd-8a22-fd5d37d79ccc	t	An exclusive partnership with Taylor Swift.	\N	36714eaa-f6df-486b-813b-982cdf714895
0277fd5c-73e2-4a7a-9115-d149892cae35	t	An 89-year-old woman with time and gravity-affected breast implants jumping rope.	\N	36714eaa-f6df-486b-813b-982cdf714895
2475e8b8-50a6-4a92-8cbd-9ea61c42a54e	t	A Pringles® can full of screams.	\N	36714eaa-f6df-486b-813b-982cdf714895
8cd02765-dea2-4a56-90df-18f826ecb794	t	A Pringle.®	\N	36714eaa-f6df-486b-813b-982cdf714895
a416465f-b675-40a3-8189-3d4ef5caadef	t	A framed photocopy of an oil painting of Paris, France.	\N	36714eaa-f6df-486b-813b-982cdf714895
8d5529a0-9d2b-4784-af6f-74678e575311	f	Looking to earn big bucks? Learn how to make _ work for you!	1	711fa3a1-1b03-4545-92e1-b49b91a6705e
1ace419b-c3b0-43f1-80ba-199afa903eb2	f	How are the writers of Cards Against Humanity spending your $25?	1	711fa3a1-1b03-4545-92e1-b49b91a6705e
200f45c4-a62a-4313-a3f1-ca7d98c5b31e	t	Ironically buying a trucker hat and then ironically being a trucker for 38 years.	\N	711fa3a1-1b03-4545-92e1-b49b91a6705e
96827416-9da6-4d38-bd7e-5c86600f87d3	t	Feeding a man a pie made of his own children.	\N	711fa3a1-1b03-4545-92e1-b49b91a6705e
86b22252-ccad-4e2e-a0b6-e6138d62bc14	t	A teenage boy gunning for a handjob.	\N	711fa3a1-1b03-4545-92e1-b49b91a6705e
18e1eb8c-6050-49f5-8b7a-05b2f2d05336	f	From WBEZ Chicago, it's This American Life. Today on our program, _. Stay with us.	1	67ed36f2-9707-4048-91aa-236725de08d8
986d12a2-f2f9-4103-a8d5-4ae2baad6f4b	t	The John D. and Catherine T. MacArthur Foundation.	\N	67ed36f2-9707-4048-91aa-236725de08d8
a2f7aa17-d668-41d2-ad86-92aad0c83447	t	Super yoga.	\N	67ed36f2-9707-4048-91aa-236725de08d8
625a3747-db72-4301-80d7-32e27a611666	t	Playing an ocarina to summon Ultra-Congress from the sea.	\N	67ed36f2-9707-4048-91aa-236725de08d8
a9df5a7d-6d48-4675-9ed4-33a7d1a0ffc2	f	So this family circus act comes in to see a talent agent in Hoboken, and the agent askes what they do. The father of the act jumps up and starts to furiously beat off into a towel while his wife whips her hair back and forth to that famous song - originally sung by one of Will Smith's kids, "I Whipe My Hair Bcak And Forth" - which her twin daughters are singing while they braid each other's pubes, all while the twin BROTHERS are creating a real-estate bubble by purchasing houses and flipping them for needless profit, and all THIS is happening while the grandmother is peeing into a Smuckers jar and slapping her ass. The whole thing ends with the family spitting into each other's assholes. The talent agent can't believe it. He looks at the sweaty father who has just spit into his mother's asshole and says. "WOW. This is great. Whaddya call yourselves?" And the guy looks at him and says, "We're _."	1	6218b16f-903b-4bf9-8b11-a309a34eae38
b585e5fe-ac53-4f91-8421-5da8f9a0cd29	f	Bitch, you look nasty. You look disgusting. You look like you're _. Go home, butch.	1	6218b16f-903b-4bf9-8b11-a309a34eae38
58f8736e-9c9d-4c24-9b47-8d5ac136e805	t	Why, a hot air balloon of course!	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
ecc7cdd7-6343-45ab-bae5-6812d03f969f	t	Using electric eels to solve the world's energy crisis.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
82fbdb3a-4e2f-46db-9d69-0230ed81ae47	t	The tiny man who only eats coffee beans and diarrheas into my thermos every morning.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
9b6334d8-68d3-4193-bdfb-ab80c948232d	t	The tiny man who lives inside the ATM and hands out all the money.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
57ca48be-d148-4afe-86f4-ffc68380da37	t	Taking off my glasses and becoming beautiful.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
40628770-ac74-4cee-93f3-1c6b20821583	t	Struggling to swallow a live bat.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
76c3ef96-b178-41f9-a626-97de67371385	t	Running afoul of the Sultan's Janissaries.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
08c3dd96-fb5d-46ca-a498-94524be873d0	t	Passing fart and making toilet.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
863085a3-b148-46d6-a3e8-252f69d87936	t	Letting these hoes know.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
b3a07911-b9e8-40fa-b1d7-b5359c6cf791	t	Getting my mind boggled by a gang of mind bogglers.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
cd9ba521-9e3f-4103-bd42-eebff273f583	t	Cum, but it's ranch.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
48d50555-cace-451c-a817-3e0697414b65	t	Computers.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
c9ff5f30-8d81-4883-ab19-2a396e98a8d4	t	Collapsing into singularity. Twenty minutes fo foreplay, three minutes of coitus, five minutes of rest, back to the yards for some croquet.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
8f5d48d9-b99e-47e0-b5ae-624aefb71fbe	t	Being blind but having super strength but having Alzheimer's Disease by being invisible.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
841d8901-4531-4923-9ca6-6c0e96a91df4	t	Achieving total fitness and turning into a mental cube.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
1c118e36-a639-4d70-95cf-baf1967e8380	t	Abort-tron, the abortion robot.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
480304e5-8c2c-4d0d-ab32-80927fb0aa38	t	Abandoning all concepts and categories and seeing the world as it truly is.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
d69ac5e7-cce0-4322-9990-f483b2a80322	t	A man two times the size of a man half his size.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
faf0b09b-87e3-44d9-b1fe-0e53d9b03b50	t	A child's love of sticks.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
edcd78c6-5b88-4faa-bdfb-ba53047d7752	f	You say tomato, I say _.	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
27f81af1-45ff-4004-a4ff-ed4b1135878b	f	Why did the fusion exchanges end?	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
190a68e0-b472-46b8-8901-3a8106f62188	f	What's wrong with these gorillas?	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
14760dec-46c7-45ae-aec9-5cb11108b0a4	f	Some men aren't looking for anything logical, like money. They can't be bought, bullied, reasoned or negotiated with. Some men just want _.	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
6037a8f4-88d2-4a76-b753-67f2dbfcba7b	f	In bourgeois society, capital is independent and has individuality, while the living person is _.	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
45246309-af85-490e-8fb6-d2be4cc53cc4	f	Housekeeping! You want _?	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
7765b894-97e8-4371-98b8-5932e561d146	f	Hey, whatever happened to Renee Zellweger?	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
5270f94f-767d-4841-95b7-7f420568e290	f	BowWOW! is the first pet hotel in LA that offers _ for dogs.	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
80ffcb03-3c18-468f-839a-d7477dacd5ee	f	Astronomers have discovered that the universe consists of 5% ordinary matter, 25% dark matter, and 70% _.	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
2377e44e-c2ee-48ee-bd45-a7b8eb5dfee3	f	America is hungry. America needs _.	1	f70880d6-c22c-47d9-b076-fd9176eb4e0b
bf6fd6f4-0985-4662-ba6d-8a30a961e09b	t	Water so cold it turned into a rock.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
4bf259bb-b5dc-44c6-903f-84c7933c1d9e	t	Three hairs from the silver-golden head of Galadriel.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
6364d96e-8e9a-4863-b706-f2ccf0d0319f	t	These dolphins.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
af713f99-6b10-4da0-b68a-8518891df405	t	The token minority.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
1a5fd8a9-b62a-4ee6-a2c9-d289a17953f7	t	The spooky skeleton under my skin.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
c354cf5a-ffd2-40e7-8de2-bb82b7b2bc1a	t	That thing politicians do with their thumbs when they talk.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
5f6175e4-3c8c-4fcd-b9d3-c690d430bf5c	t	That one leftover screw.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
6fe27582-8347-4fce-ac5c-5743940ec2e6	t	Sweating it out on the streets of a runaway American Dream.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
c124bb43-f33a-4b61-b8b8-bf4716431fe0	t	Sir Thomas More's Fruitopia™.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
3669598e-dfd6-4522-8612-e5e562cf90fa	t	Saving the Rainforest Cafe.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
8c5a4aa5-f1cb-422b-8a00-016cfcd3b215	t	Sandy feet	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
35263930-9b36-49ca-988e-63ccc053a34e	t	Ringo Starr & His All-Starr Band.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
b01a60fb-58f8-4082-86ce-f1a9bda7da6d	t	Mushy tushy.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
41a86a05-e7c1-4145-ac6c-ab25928cfeb3	t	Mr. and Mrs. Tambourine Man's jingle-jangle morning sex.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
f2f49e9b-81a0-4a72-89d1-d253c9c92ad5	t	Mitt Romney's eight sons Kip, Sam, Trot, Fergis, Toolshed, Grisham, Hawkeye, and Thorp.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
d05c7cad-b882-4931-99b8-1f48cb24c494	t	Greg Kinnear's terrible lightning breath.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
da77358b-9caf-452f-b921-bacedf94ac09	t	Discolored Puss	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
d41788a8-4e4b-47b6-b44e-6fd95cbc75bf	t	Being the absolute worst.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
d8597ca5-abff-40de-bb53-0b864f2b2d22	t	Becoming engorged with social justice jelly and secreting a thinkpiece.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
f33332fc-188e-4ae4-b364-a28634efd9c3	t	At least three ducks.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
d6d76a23-7c5a-4e52-89ff-b56b6cc46a36	t	A stack of bunnies in a trenchcoat.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
54f982e8-a5ba-4ffe-9eb0-69d400e4fe2a	t	A primordial soup and salad bar.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
84bfa25d-3114-4b97-a091-b49c2b0bdab2	t	A double murder suicide barbeque.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
24d1e088-27ab-43e3-b989-87e01f1ed958	t	A dick so big and so black that not even light can escape its pull.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
06e7bc77-7310-4c3d-b206-513b8cfc2049	f	You can't wait forever. It's time to talk to your doctor about _.	1	67ed36f2-9707-4048-91aa-236725de08d8
49dab1af-c5f1-4d0f-b1bb-581076dc5ae2	f	What do you see? [An image of a Rorschach inkblot]	1	67ed36f2-9707-4048-91aa-236725de08d8
6d0e5d0c-559f-4a2d-8bc4-43d2149e70e5	f	What are two cards in your hand that you want to get rid of?	1	67ed36f2-9707-4048-91aa-236725de08d8
eeac6c68-f3b4-414f-9e2d-da7bdea39a11	f	The Westboro Baptist Church is now picketing soldiers' funerals with signs that read 'GOD HATES _!'	1	67ed36f2-9707-4048-91aa-236725de08d8
26e958b7-7e10-419c-81e2-5756d0e01445	f	The elders of the Ibo tribe of Nigeria recommend _ as a cure for impotence.	1	67ed36f2-9707-4048-91aa-236725de08d8
e922aa48-0325-4709-bdea-06568718a7ff	f	Sir, we found you passed out naked on the side of the road. What's the last thing you remember?	1	67ed36f2-9707-4048-91aa-236725de08d8
86605760-1064-41db-9624-cd397f35d62d	f	My name is Inigo Montoya. You killed my father. Prepare for _.	1	67ed36f2-9707-4048-91aa-236725de08d8
8a4b093b-bcd1-4e21-a403-2c5e65d57305	t	Ladles.	\N	67ed36f2-9707-4048-91aa-236725de08d8
df6f1b4c-b39e-474d-8b8b-4bbf2f7cad24	t	Faking a Mental Disorder	\N	67ed36f2-9707-4048-91aa-236725de08d8
d5729966-df91-4610-a20d-0133bd2950e4	t	Ejaculating a pound of tinsel.	\N	67ed36f2-9707-4048-91aa-236725de08d8
288397f2-79a8-41e5-9739-5b86cc3542ca	t	Dividing by zero.	\N	67ed36f2-9707-4048-91aa-236725de08d8
793fa6b6-6b02-4925-afdf-6a52f3f6eba1	t	Crayon-colored vomit	\N	67ed36f2-9707-4048-91aa-236725de08d8
28509a83-0d85-4985-836d-4ec7fffacf56	t	Cornhole 101: just drop it in the hole.	\N	67ed36f2-9707-4048-91aa-236725de08d8
d8d6ec9c-4bff-4024-b1a9-cbcef8fa759f	t	Carribbean Jesus.	\N	67ed36f2-9707-4048-91aa-236725de08d8
4759be9b-5c11-4db2-b3c9-41f91f4753ae	t	Becoming so rich that you shed your body and turn to vapor.	\N	67ed36f2-9707-4048-91aa-236725de08d8
f12b7474-8ac3-43fa-bfd3-3ae7ece18164	t	Asshole pomegranates that are hard to eat.	\N	67ed36f2-9707-4048-91aa-236725de08d8
b927a395-39ae-416d-9eab-90d8bbe9fdd3	t	A sexy naked interactive theater thing.	\N	67ed36f2-9707-4048-91aa-236725de08d8
9c0bb7a4-418b-494c-aa77-e720fcd9f120	t	A heart that is two sizes too small and that therefore cannot pump an adequate amount of blood.	\N	67ed36f2-9707-4048-91aa-236725de08d8
974c24ba-679f-4d02-98c7-a6514f0868d6	t	A giant squid in a wedding gown.	\N	67ed36f2-9707-4048-91aa-236725de08d8
533869a6-ed42-4de0-a620-b1644168f4a9	f	YAAAAAAS! You are serving me _ realness!	1	8d8215b4-ebc5-4665-96a5-40cad1637426
53b15d41-b5cb-4bd6-9a72-65b70d4fdff1	f	We're here! We're _! Get used to it!	1	8d8215b4-ebc5-4665-96a5-40cad1637426
941e74ab-25d4-4938-9a66-19b2732f2610	f	If you can't love yourself, how the hell you gonna love _?	1	8d8215b4-ebc5-4665-96a5-40cad1637426
c26a26da-1579-4a2d-a5c4-9f4993688cb1	f	GOD HATES _!	1	8d8215b4-ebc5-4665-96a5-40cad1637426
e6e4c4b4-e62b-4161-bb48-7e7af9dc28fb	f	Excuse me, straight man, but _ isn't for you, STRAIGHT MAN.	1	8d8215b4-ebc5-4665-96a5-40cad1637426
a5d44dca-8101-4c24-9704-af8b55caf6f5	t	Whatever straight people do for fun.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
b04e2051-c4cd-48dc-9289-cbab6a933124	t	Those cheekbones, honey.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
b16ae006-14c7-466d-b2c5-c048df1c3cd1	t	The pan-ethnic, gender-fluid children of the future.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
455eae51-ed08-4444-8e90-6882c5934b63	t	The careless cunt who left a water ring on my credenza.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
3ae86379-4e98-4711-9ba3-be6b2c1238bf	t	Telling Heather she can't pull off that top.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
7d5b0cac-055d-4748-9dbd-2ff51065be8a	t	Talking, laughing, loving, breathing, fighting, fucking, crying, drinking, riding, winning, losing, cheating, kissing, thinking, dreaming.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
f72b9955-7b0b-400f-a5d8-360cd337ee9d	t	Repeatedly coming out as bisexual.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
9534ebd3-580f-4fa7-b9bb-1d0702b3d270	t	PrEP.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
1eaefd37-3cf7-4a3d-87a8-dfbb6bfc5c72	t	Poppers and lube.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
2665b7d7-765d-4efc-bd3a-df2d4b9c6f76	t	Peeing in a bathroom.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
33b0daba-fe34-4f01-b754-78c2a94128b7	t	Older fitness gays.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
8bf049a9-2949-4ff8-993b-20f040a0dd88	t	Marsha P. Johnson, the trans woman of color who may have thrown the first brick at Stonewall.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
730f3133-cb72-409d-b884-ea8adbaeb359	t	Licking that pussy right.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
3d2660f0-ccb2-452c-88b5-6e218b29c2f4	t	Having your titties sucked while sucking on titties.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
c377528b-9ac4-4f27-924c-f85f9285586f	t	Getting your ass ate.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
196bd14e-9a39-4bd4-bf0e-1f4954872a6c	t	Britney, bitch!	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
7720e845-fca7-49a9-a5bd-0991bbeaec99	t	Black, white, Puerto Rican, and Chinese boys.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
c7a7411e-9ef6-42e4-8922-1bec22b852a4	t	All the different kinds of lesbians.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
1dec905f-5f6e-48e1-8a41-24359ae181dd	t	A twink in a bounce house.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
d28306e6-bf1d-4f60-9662-d2cc547798cb	t	A Subaru.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
00c7cc1f-7089-4211-900a-27fe18f6e0d9	t	A messy bitch who lives for drama.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
09845205-ed6e-459a-bed4-e2342f53f0b1	t	A genderless hole.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
ce585fe1-1756-46ae-ad33-bb022a3af31c	t	A big black dick strapped to a frail white body.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
688c2a23-c878-4de1-920d-4258755ac70f	t	A 6-hour conversation on gender and queer theory.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
176e1e58-97e1-4620-9954-92cb1d36cc05	t	30 shirtless bears emerging from the fog.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
51ac0896-fe14-486b-ade9-23cb4b918019	f	What gets me wet?	1	b5800882-eff7-487a-9368-e39900afd861
aa25ee58-c4b8-4f76-b9b8-6a72ffc95b50	f	Tampax: Don't let your period ruin _.	1	b5800882-eff7-487a-9368-e39900afd861
681c961f-2f4d-427a-8207-45e20b8aab28	f	New fom Mattel, it's _ Barbie!	1	b5800882-eff7-487a-9368-e39900afd861
b3a5ecde-01dd-42be-be54-71626662cf91	f	My vagina's angry. My vagina's furious and needs to talk. It needs to talk about _.	1	b5800882-eff7-487a-9368-e39900afd861
d13d746c-cc99-47a8-9f23-b8c4e8aededc	f	My body, my voice! _, my choice!	1	b5800882-eff7-487a-9368-e39900afd861
58770a77-f62b-4786-afd3-0a9e6570f2cb	f	Can a woman really have it all? A career and _?	1	b5800882-eff7-487a-9368-e39900afd861
b97c4cd8-9f59-4161-a0cf-a103e37ec6c3	t	Using a Smucker's Uncrustable™ as a maxi pad.	\N	b5800882-eff7-487a-9368-e39900afd861
5b4c1239-e3e6-406b-8e04-b5578fcd2cec	t	The vagina hole.	\N	b5800882-eff7-487a-9368-e39900afd861
9cf17efc-f295-4639-a673-154176a91092	t	Ringing out a sopping wet maxi pad into Donald Trump's mouth.	\N	b5800882-eff7-487a-9368-e39900afd861
86122526-04c5-4d2a-abbb-4372da8526f8	t	Pussy lips of all shapes and sizes.	\N	b5800882-eff7-487a-9368-e39900afd861
3ee4e206-9d6a-4b85-ab48-727dda067b87	t	Pulling out a never-ending tampon.	\N	b5800882-eff7-487a-9368-e39900afd861
d9b61ab7-2468-4f05-bab8-ffce8333400c	t	Post-sex funk.	\N	b5800882-eff7-487a-9368-e39900afd861
d7cdc04a-40ec-4bc9-bc26-b681e8b9dd52	t	Playing with my pussy while I watch TV.	\N	b5800882-eff7-487a-9368-e39900afd861
f154331a-7cc2-4d42-b83c-9512572e4912	t	Period globs.	\N	b5800882-eff7-487a-9368-e39900afd861
48a413dd-4e1d-46d6-bfed-867f3a87f240	t	Masturbating with a Sonicare.	\N	b5800882-eff7-487a-9368-e39900afd861
ed3d8185-f61d-4681-aa1b-74a2fa2d5266	t	How bloody that dick's about to be.	\N	b5800882-eff7-487a-9368-e39900afd861
3d23cb2e-ee92-4c83-b34d-591f1e89d156	t	Full bush.	\N	b5800882-eff7-487a-9368-e39900afd861
14b787ec-07ef-4960-bb15-da735f814ff0	t	Feeling lots of feelings.	\N	b5800882-eff7-487a-9368-e39900afd861
d6c2496d-874b-47a0-a64f-dff5e019825b	t	Feeling bloaty and crampy.	\N	b5800882-eff7-487a-9368-e39900afd861
9050e23c-f006-4fae-9746-cd722e574e04	t	Eating three sleeves of Chips Ahoy!	\N	b5800882-eff7-487a-9368-e39900afd861
4ce89231-a562-4097-a358-1a34a1610429	t	Driving my daughter to her abortion.	\N	b5800882-eff7-487a-9368-e39900afd861
ddf595b5-eb17-4f11-95f1-1583f20457a8	t	Drinking Beyonce's DivaCup and becoming immortal.	\N	b5800882-eff7-487a-9368-e39900afd861
23560c19-6a39-4626-b63c-d1fd05b40684	t	Destroying a pair of underwear.	\N	b5800882-eff7-487a-9368-e39900afd861
6c368d62-3707-4a73-ba06-99f977bd15f9	t	Dancing carefree in white linen pants.	\N	b5800882-eff7-487a-9368-e39900afd861
3ce8d804-2238-4040-bec7-ccb896018df0	t	Catching a whiff of my vag.	\N	b5800882-eff7-487a-9368-e39900afd861
33f1a353-358f-431d-9951-2cf4a608c3b8	t	Carrying a fetus to term.	\N	b5800882-eff7-487a-9368-e39900afd861
f23bfe39-6dda-4dfc-aec8-cbcb5be343bc	t	An emotionally draining friendship.	\N	b5800882-eff7-487a-9368-e39900afd861
858dd3fe-553e-496f-b154-f774dedf4f99	t	Always© Infinity Extra Heavy Overnight Pads with Wings.	\N	b5800882-eff7-487a-9368-e39900afd861
c5b7adee-c61c-495d-b0b7-6333deab3373	t	A woman president.	\N	b5800882-eff7-487a-9368-e39900afd861
12f74196-fc2f-40a0-b207-957f234c2ee9	t	A diverse group of female friends casually discussing the side effects of birth control.	\N	b5800882-eff7-487a-9368-e39900afd861
c01a3db3-4197-4155-86af-cd5e345c3e83	f	Now on Netflix: Jiro Dreams of _.	1	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
eabe2310-2968-4a04-a934-1aeb6806cb7b	f	Excuse me, waiter. Could take this back? This soup tastes like _.	1	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
416d5b4e-a6c4-40b2-9001-d0f72ff0c17e	t	the incestuous pleasure of his bed	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
267a8729-79e4-46d3-b189-cf9644c22bf5	t	the hot duke	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
53406040-74a9-47d4-8a35-3706b4168e97	t	The Helvetica Scenario.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
22ba949a-e1fd-4950-a7b3-1d280995e980	t	Jizz-flavored coffee.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
aacdc663-e060-4c7e-b287-1b708ede9c52	t	Faulty UIDs.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
dceed88f-b3fa-4cb8-bb5e-f68daa356394	t	Committing suicide.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
9872f1b2-cb90-4a67-8556-22a11fe89af2	t	Clams Attempt Harmonica	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
b04d5292-0987-4012-b9c6-1d5af88866d0	t	A Mexican child trapped inside of a burrito.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
270c52ba-6ddc-4f02-b491-9c97f8ba1bc9	f	Don't miss Rachel Ray's hit new show, Cooking with _.	1	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
c61896fd-72f4-4e5a-8854-d7ecaa40f0a6	f	Aw babe, your burps smell like _!	1	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
d502a37c-af95-49fe-b81c-c52917042515	t	Sucking each other's penises for hours on end.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
58fb7ff2-ad1b-4b74-b49d-da5993a6d86f	t	Soup that's better than pussy.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
4a3488eb-8f57-46d7-9e70-e4cbe32683f4	t	Not knowing when to shut up.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
4ce286ec-34cd-4585-bb89-0233ccca2641	t	Kevin Hart	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
d084a336-809b-4463-9de6-c2c3abefaa0f	t	Being eskimo brothers with your father-in-law.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
f3d5bc23-0251-43e8-8b70-d8e710e62acd	t	A tablespoon of thick, custardy puss.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
dbf766b6-168b-45e2-b051-ecf929e145ed	t	A joyless vegan patty.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
0cd1509a-2ba2-4dcb-91ef-e43a78ed7ec2	t	A Benedict Cumberbatch RealDoll™.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
54c1a13a-271c-4bd7-b589-d614e24ce218	f	I'm Bobby Flay, and if you can't stand _, get out of the kitchen!	1	e24c45ac-4baf-4900-ba07-82823a946366
cbfdcb78-2e31-4f33-9c63-f1e18daf0f86	t	What we think is meatloaf	\N	e24c45ac-4baf-4900-ba07-82823a946366
28a779ed-6226-4170-8cbb-a8c8ab84fa46	t	The Diary of Anne Spank: An XXX Parody.	\N	e24c45ac-4baf-4900-ba07-82823a946366
72538ef3-8601-4c6c-925e-1f6f456094b0	t	Switching bodies with mom for a day.	\N	e24c45ac-4baf-4900-ba07-82823a946366
0252f250-28c1-4a72-971b-5e9ce072cbf0	t	Real News.	\N	e24c45ac-4baf-4900-ba07-82823a946366
d98227d1-097c-40b1-87b8-41c02239c86e	t	Licking the flavor off of Doritos so you can reuse them as tortilla chips for your salsa.	\N	e24c45ac-4baf-4900-ba07-82823a946366
29935a4e-caf2-44b6-a289-0438829746d9	t	Kale.	\N	e24c45ac-4baf-4900-ba07-82823a946366
a25a01b0-7ba2-4bd3-b66b-965c2bf2b84c	t	Golden Girls re-runs.	\N	e24c45ac-4baf-4900-ba07-82823a946366
433f8ef8-3050-4b57-a0b3-0adfb73f6946	t	A soccer ball to the crotch.	\N	e24c45ac-4baf-4900-ba07-82823a946366
d53c9abf-beea-454c-abd8-cca57288877a	f	What's the weirdest thing that AdMagic has printed?	1	0c50644b-632b-42df-b727-9d2fb83a31c7
cfb4de59-9914-49b3-ad8e-5f5d11a4fb9f	t	Witnessing the decline of the rollerblade industry.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
878d5192-c77d-4297-b418-b5917e48f531	t	Valtrex Man.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
751f50d0-0d5a-481a-9e16-c03690c2abd4	t	Unintentionally living the life of every Ellen Page character.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
5f14cc42-a203-45a1-a0d6-d1409d010bc8	t	Tumblr opinions.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
28d488e0-34dc-4c1a-8021-4ba353628f8e	t	Trying to explain David Lynch's oeuvre.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
94349043-60fb-4a17-9404-b50fc923015b	t	Trung the pants-ripping bear.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
351f92f2-008a-45ad-9e8d-1f597ad0f418	t	Too much foreskin.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
854f9eed-e6cc-4f60-9523-d9aec0d9d61b	t	The token lesbian.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
5f522990-0bb6-420e-b131-621e53c02676	t	The tears of a million disappointed 49ers fans.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
25675668-c843-42ff-aed1-bb1f5a5927f1	t	The redic secondary mark-up of Cards Against Humanity Cards.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
f021c09f-785e-4e59-b325-fb5a6a396c44	t	The race card.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
036e8878-881b-4f80-a74c-dc5e0954c1d5	t	The poison. The poison for Kuzco. The poison chosen especially to kill Kusco. Kusco's poison.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
70b8ac3c-1458-42ce-8cba-bebe8541d58e	t	The perceived intellectual superiority of a Wellingtonian	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
9a0184c5-9095-40bd-9552-3a17348d28bd	t	The moment Sharon realized she married Steve.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
57c3a43e-3ccf-4c0c-b964-54f928a81c8b	t	The hidden dick in your favorite Disney movie.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
90f647ec-ed46-41ca-a683-89343006b718	t	The Doubleclicks.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
39fab843-1dba-4593-9ef2-cdfc3dccdcea	t	The blood, sweat and tears of a desparate, sleep-deprived cosplayer the night before a convention.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
02789b0e-a2e6-4052-822f-b03da6d822bd	t	The best Just Dance player in Turkey.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
c3be7a2b-80ad-40fa-a2c7-bcb2759980c2	t	The "Not a Thing" podcast.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
688d5244-2d03-48e7-8fb0-911f65ae5459	t	That moment when the Protomen steal your chair.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
6cf0b4e8-7b51-455b-8a41-0654994cd145	t	Suplexing a jabroni in the PAX Rumble.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
675696c4-8cf1-4be3-8d14-e949bbce9734	t	Stop! Name that lolita dress.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
e3c97a18-506d-4cc9-bf30-b9e7890349c2	t	Stealing your dead clone's shit.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
fc85185a-90ae-40b2-94ed-cf3ecb33e805	t	Shitting dick nipples.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
08e5239d-9592-4762-9086-2fac32193d8c	t	Sharkisha.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d996958f-bbfc-4bd5-ae4d-a5e5bdba8b51	t	Selling PAX memorabilia on eBay.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
b03aa169-a76d-409a-8bba-d1cbf4dd9565	t	Scrooge McDuck's scientifically accurate corkscrew phallus.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
fb871d84-aa37-40de-add8-387ef3e41a10	t	Sarah MendiYOLO.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
99d84fe0-a07a-4bb1-93ee-ccc83c31afb7	t	Reaching the fabled, distant age of 30.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
1d7401e5-73ca-48df-90c5-9769edd51571	t	RAWR velociraptor.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
0333bfcf-829e-45e0-9519-38ba227ae9ca	t	Putting on 3D glasses over your regular glasses and getting a wicked headache.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
4ac5b479-45b2-43a0-bc26-c209ef38f4d5	t	Pretending that going to PAX is a job.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
bb68e460-2dea-4eeb-b2ea-bd2380ff4c12	t	Portland hipsters rockin' the moose knuckle.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
1f35e4c6-428b-42bb-95e3-bb10fb3c25d2	t	Playing whack-a-mole with the ban hammer.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
9fc9245d-033f-450b-b230-1fe13442e8a7	t	Player tears.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
6a9105ac-a335-4916-b9d5-8dd95277be5a	t	Placing second placein a dumb T-shirt contest.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
06aad401-0057-4679-a94f-d1e52e148208	t	Pete's glorious penis.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
8113fca2-72bf-4c68-adc3-6a678f35bdd3	t	Peen rub.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
9aadc8dd-3c86-4724-90aa-6ceadf8fb239	t	Paying for sexual favors with Dogecoin.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
6e5f936e-85f1-4c41-a721-27ba336f3dae	t	Not being able to shit on a foreign throne.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
287c1890-9379-4a89-bbe3-dbd09dfe942a	t	Mowing the lawn, collecting the clippings, then Dickbutt.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
1493f19d-1d82-451a-9132-3f5cce956879	t	Max the Keyboard Cat.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
f1cc2d90-26e1-49dc-844f-c2c0db2b8b0d	t	Max Temkin.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
8c2e23f7-e81e-48f3-b2d9-0bd1831972ce	t	Master Chief.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
978198ac-424f-4018-ac75-b8ced48ba395	t	Marinated anal juices.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
18bae14e-78c7-44a9-a5c0-44cc6a834f14	t	Marcia Morgan's magnificent breasts.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
e035b4ec-47e0-49eb-bf1f-c15f376b23c1	t	Making a sim family that's exactly the same as my real family.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
64034a81-f6d4-4a38-8284-e7e003037fe7	t	MAGFEST.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
9bad989e-8bca-468a-984e-41d52deb7360	t	Low hugs.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
95a13794-c68c-4649-b554-8d11ed54373e	t	Liking Katy Perry... in secret.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
4f82dd04-9489-46a9-8d4a-00271518dbb5	t	Karlee Esmailli.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
c9c37ab3-7357-44f6-9569-9007a170c3a9	t	Jenny awkwardly trying to seduce Nathan Fillion.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
32991798-8109-498f-a885-bf0d71789213	t	Jenn and Trin in the morning.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
605130f6-0d18-4f78-94db-bba1d157ebcc	t	Jeff Price.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
87424b80-2006-457a-bacc-141b2feaecb4	t	Jacking off with sandpaper.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
39a21bfe-8003-45fb-948e-fb26f8337034	t	I am only using this card because i don't have any other cards to play.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
f9854499-de1e-4681-bba5-f26bbeb84a2b	t	Hitler's gas bill.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d3501da0-5a21-44ce-b011-bf15d8f90f49	t	Hiro, the dog.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d5946f36-18c8-4277-b743-f0ee55307eb9	t	Having nothing to prove.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
ef24d18e-7fe2-46a0-93e6-70e70f55bd80	t	Grandpa Dick Chin.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
c8492690-73ab-47ea-8223-6667556309e8	t	Going back in time and fucking my mom to prove a point.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
7ccc2c50-2daa-452f-ac2d-cf08f0e5a4fb	t	Go Fuck Yourself.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
756cb625-4d90-43d4-ab56-2622e9a080db	t	Furry porn that's actually sort of hot.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
af3bb01a-ca64-4246-908b-00997860ac4b	t	Fully appreciating naked Morris dancing.	\N	adee4f5d-412f-4fdc-9f2c-0b78e09a192c
0a52b018-427c-42ef-a65c-b8ef41f56e05	t	Flipper.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
093b7066-39fc-45a5-93a8-cef7274e0349	t	Five teenagers with attitude.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
9d500244-22fa-4da7-9c05-05c33a55a7ac	t	Filming Tabletop Deathmatch.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d9de43d5-169a-4e07-be4d-1ec0fcf48f83	t	Fat bitch logic.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
2f26a16f-27d9-48b2-8e76-98a109094753	t	F5.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
c7f982c7-d46d-404d-8f3d-959a05a28c9d	t	Exploding pancakes.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
b1d61470-31fc-43d8-8bca-a6a92d605a46	t	Elli the shit-head cat.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
81c223ce-3428-4297-8453-3be62c94e757	t	Eating an entire pizza as a legit medical condition.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
0e9dbfbf-30ac-4764-97ec-469f4a9643fb	t	Dying for the 418th time in Dark Souls.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
1bf7f018-bf89-45ce-8bce-32ff72c8ea7c	t	Drymount.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
766a2875-d390-47de-b96b-d8b15fe455da	t	Drinking with the DCD.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
ec60c781-670b-4b4b-92d0-6e1bd93a8293	t	Doing a barrel roll.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
2b35381e-480a-46ea-b0f4-47fef550824a	t	Danny got to 2nd base with his grandma.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
db7c5b6b-efd2-4c7f-b4e6-aed885e94b52	t	Crippling OC D.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
f1691dfb-6f68-424b-a96b-649b844afdfb	t	Cortana.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
45bdb588-054a-41b7-8f02-84a84dcf86d0	t	Classy Ewok porn.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
f219244a-c3b1-4342-a933-3a81a1e21a84	t	Chris Evans grabbing his left boob while laughing.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
addfd53c-43f5-4bed-b289-d24c03cce87a	t	Chit.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
850094de-0843-4028-9689-09b26bbbf24e	t	Butthurt.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
ec51f87e-f1c5-45a9-8241-b755a5350406	t	Bruce using the handicapped elevator even though he's a totally able-bodied person.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
2a6f1ee5-a16e-4b26-8779-9194c918186f	t	Bitcoin.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
e407307c-fa34-4329-ba4d-0e626f5fc09f	t	Being named Gladys.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
ac93ece1-00c5-4735-8f37-a9805a43fe98	t	Awkwardly having to sing Happy Birthday to a stranger.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
ada9340b-e71f-4402-a786-6a383eb41c2c	t	Assault Android Cactus.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
7baa8e1f-d4ea-42eb-9149-e76e3fb36c4a	t	An idiot from New Jersey who can only make friends with Bay Area scum.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
7b807e32-9dac-43ea-985c-7ee179105655	t	All the Asians in Vancouver.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
4c47c2b2-f350-44ce-b323-438034a67003	t	ADVENTURE!	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
e577de9b-3b6a-40a1-8946-3564244f42b8	t	Adrian Talens.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
44a40db2-d60f-4516-801c-1c8843c1d5ee	t	A tin of worms in metric or imperial.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
6fb8d5f6-bb70-48e9-992d-5d3c4d3966f4	t	A Stark family where all of the children survive.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d1ed081d-0607-410e-8b91-eb50e96c2bdb	t	A real job with real responsibilities.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
8f23bcd3-dff8-446a-8c89-8108e7039978	t	A pint of beer half-full of dead snails.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
555533f8-5930-4111-b4ca-95b9a68e25fc	t	A necrophiliamancer.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
fee6b6a2-30e1-42c7-a0ab-d1f76953fc44	t	A magic card worth roughly $8.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
b9160001-c624-4fad-b2ff-3634d4ef13c0	t	A little person dressed as a baby punching an actual baby.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
f6e833fe-8067-4c92-88c8-3e2440f0e21a	t	A gloryhole with a serrated edge.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
e8a6326f-91b9-4dcd-a58c-02eb1fd5fe09	t	A drunken Sailor Pluto.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
66cb4c9f-1bc6-4260-b6b5-9ee9748064f9	t	A bunch of weeaboos buying Nature Valley bars.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
33940ce7-0d46-49f2-b110-0746c16f3ba0	t	100% certified human breast milk.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d602b64b-e985-45d4-82f6-5aed3dbd0332	f	The Discovery Channel presents: _ week.	1	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
038a1167-5aad-4008-ab69-2733621789c4	f	Like _, State Farm is there.	1	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
15d92fb8-1f05-4ba6-ae18-5f51b57badf0	f	During my first game of D&D, I accidentally summoned _.	1	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
f2730c9a-de40-4101-a6e7-b4a1197b82d7	f	Buzzfeed presents: 10 pictures of _ that look like _.	2	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
4c443f75-8cc1-4a05-9e35-8b15fcc421e6	f	Bob Ross's little-known first show was called "The Joy of _."	1	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
0143f665-70ae-4631-b048-2f5a8619c922	t	The beautiful sport of Turkish oil wrestling.	\N	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
a6b46977-d625-48b7-9a5c-76ff82e8e599	t	Pooping as quietly as possible.	\N	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
ffb791c4-ffe1-4aa2-b844-a5fb68fe1d83	t	penetrable stuff	\N	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
bf2af16d-77f3-447e-a24e-0bb170855bed	t	No survivors.	\N	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
4d50fa4d-fd4b-44c2-be0f-ca583e40c307	t	A neck beard that is 10% cheese.	\N	13fc6f8a-9ab5-4523-9946-10e9b76ff3c9
7206d02b-7fea-4427-9210-d70bf12c4b58	f	What's the latest cargo on the secret military space shuttle?	1	64720050-2c9e-40ab-8510-6b57681cc5be
b3877386-c8b1-4f2e-98a0-5747f04d2ede	f	What made the whole wedding so awkward?	1	64720050-2c9e-40ab-8510-6b57681cc5be
59717b96-ae0a-4b2c-b1fe-862dae0f4a57	f	There was a riot at the Gearbox panel when they gave the attendees _.	1	64720050-2c9e-40ab-8510-6b57681cc5be
27c49f95-e5a5-49ae-93a9-5fbecde1ed6f	f	The most controversial game at PAX this year is an 8-bit indie platformer about _.	1	64720050-2c9e-40ab-8510-6b57681cc5be
66da9725-7ad7-4c51-ad99-e7545dcb26f5	f	No Enforcer wants to manage the panel on _.	1	64720050-2c9e-40ab-8510-6b57681cc5be
162c5d18-9083-4f63-98bf-45dafa2c3352	f	In the new DLC for Mass Effect, Shepard must save the galaxy from _.	1	64720050-2c9e-40ab-8510-6b57681cc5be
3b2f022a-6268-4683-a182-4e29cf5c35b7	f	_: Ain't nobody got time for that!	1	64720050-2c9e-40ab-8510-6b57681cc5be
a7d88664-f577-4633-aac6-c7dddda9749a	t	You and your best friend simultaneously flashing the hand signal for "abortion" at the first sound of a baby crying.*	\N	64720050-2c9e-40ab-8510-6b57681cc5be
e0780a3e-8492-4730-a5e2-636e79f0bc90	t	Vespene gas.	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
3d60ec05-0475-4390-960e-ecbf123171fe	t	Winning the approval of Cooking Mama that you never got from actual mama.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
4f375225-ff15-4b8e-b76c-f667630291b4	t	Unlocking a new sex position.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
119e1d73-ee6f-4d6a-9c20-c61023ab2679	t	Turn-of-the-century sky racists.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
80b10d2f-165f-4a70-a817-3831d55ed972	t	The Sarlacc.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
2ddd5675-06ee-4e9c-97e3-030b13c9f76b	t	The gravity gun.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
f3bb8b69-5e22-467a-9752-fc0f9ee89098	t	The decade of legal inquests following a single hour of Grand Theft Auto.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
337d82df-55f3-4c81-ba7a-4e9099a1be29	t	The colonel's wife "pulling rank."	\N	64720050-2c9e-40ab-8510-6b57681cc5be
5df89761-dd67-4b5d-99e6-e7737b7b84cb	t	The Cockpocalypse.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
70316bc2-5970-494c-8662-cdffe06704b0	t	The boner hatch in the Iron Man suit.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
f72bc543-062b-415f-bddd-4beec371d601	t	Temporary invincibility.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
f6b56555-e0b2-4b25-a35a-cf518e29dfc5	t	Tar.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
a0407f8c-ec43-4e14-aa0b-073421f962e0	t	SNES cartridge cleaning fluid.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
00849dea-9355-42c1-9e33-66f019413eda	t	Rolling a D20 to save a failing marriage.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
dbdfcea9-23ba-4a0e-b677-c08670328a4e	t	Reading the comments.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
6d3dfd57-4102-4d47-ab46-3300bf94242f	t	Offering to fuck away people's PTSD.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
1302379c-f042-43c8-a263-c535873c2028	t	Nude-modding Super Mario World.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
b00a8a67-0113-468c-9cfa-b7e19de8e742	t	Never watching, discussing, or thinking about My Little Pony.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
f9d8dafe-0239-4e4b-8a89-b2842a207b79	t	Mario Kart rage.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
daa4f250-d8fd-41bc-bbf2-ff5bbf90f5ba	t	Legendary Creature - Robert Khoo.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
bd89b697-0773-454f-86d6-b64865d24665	t	Grand Theft Auto: Fort Lauderdale.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
3979d21b-c58c-424d-ba2f-04a687634bdb	t	Google Glass + e-cigarette: Ultimate Combo!	\N	64720050-2c9e-40ab-8510-6b57681cc5be
1eda7495-1621-4a1c-a908-8eba795b0459	t	Getting into a situation with an owlbear.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
f815ea29-3148-40ca-8652-29804db05329	t	Full HD.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
9766a439-0e94-49aa-972f-e649efaf7aad	t	Filling every pouch of a UtiliKilt™ with pizza.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
db6a72c5-3bdc-4fa6-a275-73ee10a18f01	t	eating a plateful of brownies and then...WHAT THE FUCK WHY ARE THE WALLS MOVING	\N	64720050-2c9e-40ab-8510-6b57681cc5be
6d84740a-1e3a-4c31-b0e0-b00c28a4cb49	t	Charles Barkley Shut Up and Jam!	\N	64720050-2c9e-40ab-8510-6b57681cc5be
a68021e3-2be8-4302-927d-28da98cfa232	t	Buying virtual clothes for a Sim family instead of real clothes for a real family.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
5b801769-f8da-4c0d-a44e-7a4894261988	t	Bowser's aching heart.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
77584e7f-88d0-4ebd-9b2c-402c37cb1bf0	t	Being an attractive elf trapped in an unattractive human's body.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
08dca0ab-d491-4c8e-bef5-835c69114be8	t	An angry stone head that stomps on the floor every three seconds.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
190f0f64-6727-4272-b9a1-e887d2ed930c	t	Allowing nacho cheese to curdle in your beard while you creep in League of Legends.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
7ccc1d15-ddfa-4766-8618-c5dd91ca6c0e	t	Achieving the manual dexterity and tactical brilliance of a 12-year-old Korean boy.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
1983b52b-98d7-4631-b094-c91da7dd8b65	t	A madman who lives in a policebox and kidnaps women.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
d687010e-35fd-4165-8af8-84b736777a56	t	A homemade, cum-stained Star Trek uniform.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
c6ad8bd0-5ad1-49f9-84c7-a9344bc0501f	t	A fun-filled suicide pact.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
f0ec7339-4118-4108-bdf6-a4ee347687d0	t	70,000 gamers sweating and farting inside an airtight steel dome.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
0d648a98-4527-447f-bb92-cbabe19889d6	f	Let me tell you about my new startup. It's basically _, but for _.	2	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
284514c7-6170-4182-94a6-9cbb9445e19d	f	_ was totally worth the trauma.	1	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
2b47106b-1803-42ed-b49c-f0552ae1b4d1	t	What The Rock was really cooking.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
02e35c59-8159-4ef6-b408-ea6f44d4cb73	t	Stepping on a god damn friggin' LEGO.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
83c79c66-c0b7-451c-afb8-3d4cf622d77e	t	Rubbing chocolate pudding all over Bill Cosby's nipples.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
edb3ec98-9040-45cc-a023-3a8c35ff85ee	t	Hoes in different area codes.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
3d9ad9bf-046b-4acc-92cc-5d5e48e844dc	t	Giving a dolphin a handjob for science.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
e271e4d4-5e3d-4acd-8c72-f01b288c9664	t	Exciting content!	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
e5c38548-b0f4-4e85-8281-6aa7cbf0ae38	t	All this liquid in my mouth.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
d0429d82-138d-4deb-b50a-f06603614299	t	A floor that is literally made of lava.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
5e8ac729-b71d-4ed5-a884-0e54ab06a773	f	You think you have defeated me? Well, let's see how you handle _.	1	60a4daa4-fd0c-4818-9d41-6daccede4bf3
109c745f-d61a-4cfe-94e4-75b22d513a78	f	What the hell?! They added a 6/6 with flying, trample and _.	1	60a4daa4-fd0c-4818-9d41-6daccede4bf3
73bb149a-8e6d-4548-8393-f617f80fab0c	f	Unfortunately, Neo, no one can be told what _ is. You have to see it for yourself.	1	60a4daa4-fd0c-4818-9d41-6daccede4bf3
962c28b9-da38-473d-b34c-40504ee5cbce	f	(insert name) died when _.	1	60a4daa4-fd0c-4818-9d41-6daccede4bf3
d4cbd4c2-cab6-4791-9d2c-1694a49a3039	f	_ is way too much responsibility for me.	1	60a4daa4-fd0c-4818-9d41-6daccede4bf3
5631c269-53be-4234-8c74-d8f17d12aa67	t	Xena, Warrior Princess.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
e0c81918-3421-4d76-b055-798b24bc8545	t	Whatever Final Fantasy bullshit happened this year.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
967406df-c767-487b-889c-eb6fa510d103	t	The Star Wars universe.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
e9d26f4c-f03a-411f-908f-812c5532c161	t	The pure, Zen-like state that exists between micro and macro.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
bece21db-7c0f-4c4c-8574-57c9bb8f3096	t	The old gods.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
fb27aaa1-168c-4d6e-92bb-3f1189b83be9	t	The imagination of Peter Jackson.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
7c5a049a-e127-416f-b246-eaea21a9a6b9	t	Taking 3 hours to go on a 15 minute errand	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
854a3983-4e7d-457f-8fd6-abada529c7bb	t	Stuffing my underwear with pancakes.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
0e8d53a3-c30a-40e9-915c-6fece61168fc	t	Serana William`s black sweaty scrotum	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
6149f4b4-916a-4209-a4a4-a0257ebc6617	t	Separation of merch and state.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
ed42ac84-dfb0-47a4-825c-d10db26cf5f2	t	Mistakenly hitting on a League of Legends statue.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
e47bf7f4-8f0e-4ff8-ac2c-2d5b5a059e9f	t	Lagging out.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
115f1dee-8325-4ea0-a9e1-7910eba40c3a	t	KHAAAAAAAAAN!	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
4a37638d-9522-4a3a-bc78-08deb3fad4e5	t	Getting bitten by a radioactive spider and then battling leukemia for 30 years.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
ea15a0c3-89c1-4816-a04e-484d18ba0628	t	Futuristic death sports.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
802fad1e-78f3-452d-b9ee-b2e89d744426	t	Endless pleasure.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
f53f3e30-73cb-4501-bbc6-24b982ceaf44	t	Demons and shit.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
34a44266-0d28-48ee-af39-1f0bb029e379	t	Collecting all seven power crystals.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
5dd4cb76-2802-48d5-950c-632eb6094251	t	Attacking from Kamchatka.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
e9a27099-6a6e-4aaf-97fc-a4f80e52c1eb	t	All of the good times and premium gaming entertainment available to you in the Kickstarter room.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
2e05708f-cc96-43b5-9ed0-e5cc26ed58b3	t	A grumpy spiritual director.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
536489e8-b5b0-4bda-a88f-bbdb0f92703a	t	A giant mechanical bird with a tragic backstory.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
96a97039-1bf6-4619-aba8-b50e09a5e1e9	f	Priests think about _ in their free time.	1	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
317e6c35-2d96-4e4c-833e-33115588d3c4	f	I don't know exactly how I got the PAX plague, but I suspect it had something to do with _.	1	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
b5b206d2-926e-4a2a-91a0-d3573f43dd08	t	Wil Wheaton crashing an actual spaceship.	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
de700b2a-db6e-4828-9415-bbb8afbc1576	t	The Klobb.	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
04032eee-5cb2-4f40-9853-72f0de0d7d75	t	Smashing all the pottery in a Pottery Barn in search of rupees.	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
c7b230ac-fd2d-4628-849d-f38ac4a44235	t	Judging elves by the color of their skin and not by the content of their character.	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
28cd7bba-4993-4753-864d-facf030bf20a	t	Forgetting to move the damn Elf on the Shelf	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
26570e09-ad6f-49f1-835a-dd3828fc7b5e	t	Charisma	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
5e5e1e5c-c0ee-465a-a077-cf410b4cac7e	t	Achieving a gangbang life goal	\N	7edfffd9-0956-47a2-bb07-ff4f8c679cd4
08573a27-1db9-4b18-bca8-951443e3fa8f	f	In the final round of this year's Omegathon, Omeganauts must face off in a game of _.	1	2dac42d4-3f35-496d-af9e-bd62e3435e7e
5eadda86-b094-4807-ad30-97f60153dd59	f	Action stations! Action stations! Set condition one throughout the fleet and brace for _!	1	2dac42d4-3f35-496d-af9e-bd62e3435e7e
f80d11c7-bdb5-467a-8920-246f56cc8bdc	t	Violating the First Law of Robotics.	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
4db707f3-aabb-4179-bc71-d83b3e70dbb8	t	The rocket launcher.	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
b87a2435-af79-41e1-93db-31ba23a36e40	t	The desparate girl who wanted to be a mom so bad that she robbed a sperm bank.	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
b7c0c9dd-f8e1-4eff-852e-94018b56f942	t	Spending the year's insulin budget on Warhammer 40k figurines.	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
0e5ce8e6-1735-4990-aa37-174a2d4c3fef	t	Sharpie lipstick	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
c09cc3de-2815-45e2-ac92-f972fe298c76	t	Punching a tree to gather wood.	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
4eba0e5f-f6ae-4a55-a134-511ce351e469	t	Loan sharks or left sharks, whichever	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
b75aacb2-e47b-4bdc-a753-2b12627fb3cb	t	Getting inside the Horadric Cube with a hot babe and pressing the transmute button.	\N	2dac42d4-3f35-496d-af9e-bd62e3435e7e
cd15e318-8d4b-4a89-ac74-64a699dbebdb	f	You have been waylaid by _ and must defend yourself.	1	75d411b1-de88-44a9-ba57-02eae09f71fd
ac5a27df-94be-4ce7-940a-f7231a12576a	f	I have an idea even better than Kickstarter, and it's called _starter.	1	75d411b1-de88-44a9-ba57-02eae09f71fd
3ad28ab3-d78b-40a2-8973-9fbc004f78db	f	Who ate my _ again?	1	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
e79daf8e-5e0f-4073-8e5b-b6563c2227ba	f	I dropped my cellphone in the _ and now it won't work anymore.	1	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
725ac9ca-42bb-475a-ae9c-129377d18219	f	Dear Agony Aunt, I'm having some trouble with _ and I need your advice.	1	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
a18e861a-93cb-4349-97e4-c63a7373e9c1	f	Daddy, why is Mommy crying?	1	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
7946159f-e213-44a2-9f1b-aa5a1e9471f0	f	_: Has science gone too far?	1	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
1d3949b2-a7f1-4d0d-9c46-4dac1ccee3be	t	Throwing another pidgey in the wood chipper.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
f73f660c-a0b6-4271-86b7-fb3cf362c71c	t	The few shreds of tinsel still clinging to my asshole.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
f3a62d36-22a0-441b-b704-42d0835588af	t	The entire Mormon Tabernacle Chior.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
afc264bb-11b3-4667-8796-af1d571e6c71	t	The boy who sucks the farts our of my sweatpants.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
dd28531f-dcc4-4f21-8d7f-932f572f8e9f	t	Strafing an Afghan shepherd and his sad, sickly goats.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
c77de239-d4fc-4d25-9217-bd50e7248062	t	One unforgettable night of passion.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
705f91b5-942d-4322-8f16-962d3ad1e3ef	t	Extremely tight trousers.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
c21209b6-5e30-479e-ab1a-462d2818bab0	t	Chunks of food in my teeth	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
2ced8026-c145-41da-97e6-edf8dd21da5c	t	A Bitch Slap.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
52a32f53-4d87-4861-aa83-4aff900320ed	f	Did not enjoy _. One star.	1	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
7c949b58-ff48-4f57-a4f9-01d8874270c7	t	The last season of Game of Thrones.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
e9a56676-32fe-4549-8500-1997123368a5	t	The illusion of linear time.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
a99dea04-91f1-4026-ab82-0bdb2e239e36	t	Scrimshaw, the art of bone carving.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
31d772f4-0590-4867-a764-4ae42f79dbb1	t	Running afoul of the sultan's Janissaries.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
be9ea0c9-a0aa-4b58-be43-c342f669048d	t	Not exercising.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
0ba890bb-a8f6-4ba8-8fd1-d9913dfa2294	t	Hot dog, the game you can eat, but only once.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
0b75c63d-7627-4142-8078-0275383aede7	t	Eating up whatever slop Marvel throws out there.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
7fb09835-813f-4225-a2dd-c0d37c852cfb	t	A magnificent chrome sphere that roams the streets evaporating criminals.	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
624c17ad-6b5c-47c8-b80f-52750c839ea5	t	A hit new fantasy show called "Penis Man."	\N	4fbbd43a-23d9-437c-9cd5-7c52ae378f89
689ce5e2-d1b0-44a6-8858-b7aab3c2ed3d	f	We were the two best hand-to-hand combatants on the ship. I had reach, but she had _.	1	8b54851f-b52b-4368-a125-c3173d5973fe
4d42fbbf-39fc-471e-b8e3-b725508f0ec0	f	It turns out the Reapers didn't want to destroy the galaxy. They just wanted _.	1	8b54851f-b52b-4368-a125-c3173d5973fe
2f97e9b5-302d-4d6b-9e35-b84fd1a08310	f	I'm Commander Shepard, and this is my favorite place for _ on the Citadel.	1	8b54851f-b52b-4368-a125-c3173d5973fe
6e41536a-1009-41b3-a2a6-bcf4e6830a08	f	Coming this spring from BioWare, Mass Effect: _.	1	8b54851f-b52b-4368-a125-c3173d5973fe
e1a47d4e-1de5-4647-bf28-b31c2735facf	t	Totally fuckable aliens.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
abc8a8e1-6f64-494c-bfbf-0ddd03524135	t	The Genophage.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
3ee8287a-c966-4058-b954-ab4c2c64deb0	t	Space racism.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
709a174b-093a-4b64-ad6a-6f4821cc8f87	t	Running a few errands before saving the galaxy.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
0558a1d3-309d-4401-bfc1-d5a81c6c8a84	t	My complicated backstory that you will soon learn about.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
6f5f46c7-bd9b-459d-8fe6-b22b6cf9ebd5	t	Falling I actual love with a video game character.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
a75a1b08-6db6-4f35-8cb1-7b1efc52fe37	t	Bone-shattering sex with a metal woman.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
60d1d4aa-8b28-454e-aea8-c65a2d57d5a5	t	An extremely long elevator ride.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
8db17d92-a057-4aa3-8492-61f59c1611c6	t	An emergency induction port.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
6169c880-363b-4623-b0bb-bec571d47c8e	t	An armored Krogan war-clitoris.	\N	8b54851f-b52b-4368-a125-c3173d5973fe
ddb50c73-01fe-4598-a4c9-9b44870d68d2	f	What's so important right now that you can't call your mother?	1	7fffdb93-4156-4d71-8d83-21cc0bf0caac
ba9d06e7-e78a-4cfd-8ec5-643e24a327ff	f	Oh, your daughter should meet my son! He gives to charity, he loves _ and did I mention he's a doctor?	1	7fffdb93-4156-4d71-8d83-21cc0bf0caac
b65bbfa0-c07f-4f75-9215-46618d0136f7	f	Coming to Broadway next season: "_ on the Roof."	1	7fffdb93-4156-4d71-8d83-21cc0bf0caac
b48e21de-4345-4905-a584-430f6da80ad2	f	Can't you see? The Jews are behind everything-the banks, the media, even _!	1	7fffdb93-4156-4d71-8d83-21cc0bf0caac
f37e26a5-cc31-4bc2-83e5-e813042e9d14	f	According to Freud, all children progress through three stages of development: the oral stage, the anal stage, and the _ stage.	1	7fffdb93-4156-4d71-8d83-21cc0bf0caac
e09420e0-5d24-4e03-9600-dfb1bfd444a8	t	Whoopi Goldberg.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
43458d5f-0677-490b-99d8-f534a7b4e691	t	What it means to be a Jewish woman in contemporary society.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
6441e193-0156-4fcc-be15-cee074150e4a	t	Wandering the desert for 40 years.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
91b68b9e-6a7d-4f27-b725-f6547e2b8751	t	Usury.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
fc5992e5-ba9a-401f-b6b5-921d97ca4106	t	Torturing Jews until they say they're not Jews anymore.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
7a03819a-0abf-4cf2-a6ed-b7e6f8df44c1	t	Thy neighbor's wife.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
cdaf16b1-6c4f-4f62-89b1-fd5c0bb0dabf	t	The part of Anne Frank's diary where she talks about her vagina.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
5d9dc205-3b9a-4a06-912c-553da22be715	t	The ethical implications of enjoying a Woody Allen film in light of the allegations against him.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
82e4bd22-87bb-454b-81d4-5ea983b43c8b	t	The blood of Christian babies.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
1143bf15-729f-45ea-b482-b92b5d744f1a	t	Suddenly remembering that the Holocaust happened.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
70db12ce-6323-4145-9757-a4b9334196ee	t	Some kind of concentrated encampment for people.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
c3fa1d03-06f6-4440-b949-470ea8bd09e1	t	Sacrificing Isaac to the Lord.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
5c39b709-364b-4253-9653-4ff16cd938d2	t	Resurrecting an army of six million Jews and conquering Germany.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
8f449498-842a-4f83-83fc-992280bf85f9	t	Pork products.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
3ab2cc75-ab38-4e3e-92be-5f286ca1291e	t	Holding up the line at Walgreens by trying to use an expired coupon.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
9a0a9eac-3a70-4510-ab81-f366e6266429	t	Hiding from the Nazis.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
e85f511c-1261-4326-8311-38549844b125	t	Demolishing that ass like a Palestinian village.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
3088af60-ae11-4e04-a944-e6c9104a30e1	t	Chopping off a bit of the penis.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
8acfda62-4caa-49d2-a9e0-b58842fce997	t	Being chosen by God to win a free iPod Nano.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
19c3e118-2a7d-4fb7-95e2-6590068cf28a	t	Bags of money.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
32013402-5b19-4913-95b9-e828c9fac9f1	t	A three-foot-tall corned beef sandwich.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
789a978c-3bde-4743-8f51-63d7af8afca9	t	A little bit of schmutz right there.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
706dcbad-8cd2-4b85-9d5e-023c0ca7ba22	t	A lifetime of internalized guilt.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
48cab427-5745-404e-aa07-ef339e3ad9bf	t	A headache that's definitely cancer.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
0a2aeb4e-25f6-4220-b1ff-76f2b7c91413	t	A big brain full of facts and sadness.	\N	7fffdb93-4156-4d71-8d83-21cc0bf0caac
e82c5b72-0b58-4e7e-9578-bc918627b277	f	When Jack White performed at the Aragon Ballroom in Chicago on Nov. 19, 2018, he surprised fans with _.	1	6b0f40b1-6611-45b6-a50a-ef725e237184
16f95403-30bc-4c92-8b8b-7c46d34c0edd	t	Jack White's testosterone-fueled dementia.	\N	6b0f40b1-6611-45b6-a50a-ef725e237184
ef99fe58-8f72-42ca-bfc9-f4532495079b	t	Jack White's mom coming on stage and dancing.	\N	6b0f40b1-6611-45b6-a50a-ef725e237184
1a739bcf-acaf-4c44-9a7d-f27bcfd9a346	t	Jack White's collection of taxidermied animal heads.	\N	6b0f40b1-6611-45b6-a50a-ef725e237184
df2aefe6-5159-4a43-acc9-17d5533d72c9	t	Jack White.	\N	6b0f40b1-6611-45b6-a50a-ef725e237184
5fa6889a-e4ed-4752-acc7-608759392981	t	A quiet, poignant acoustic guitar ballad.	\N	6b0f40b1-6611-45b6-a50a-ef725e237184
923135cb-5dd4-4ddc-8949-f918e4083baa	t	A bizarre partnership with Cards Against Humanity.	\N	6b0f40b1-6611-45b6-a50a-ef725e237184
c7a39d24-ea20-43da-8110-8b8af5bc9667	f	We're not like other news organizations. Here at Slugline, we welcome _ in the office.	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
7694a39e-a48f-4cc8-adbc-5e0744121d01	f	Our relationship is strictly professional. Let's not complicate things with _.	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
87a193e7-74e6-4786-91e4-3442df62db61	f	If you need him to, Remy Danton can pull some strings and get you _, but it'll cost you.	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
1a89ddd7-9e6c-436a-8590-f5cd8a4f0fff	f	I'm not going to lie. I despise _. There, I said it.	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
31673b43-aad7-4be3-b4c9-a078076f3f4d	f	I can't believe Netflix is using _ to promote House of Cards.	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
450938d5-4a11-45af-86fc-a6eeddeb2434	f	Corruption. Betrayal. _. Coming soon to Netflix, "House of _."	2	abc5f4ee-aeda-4461-97b2-de8af24a03f0
f08c68bc-e7e9-41b4-9f06-98e26fccad99	f	Cancel all my meetings. We've got a situation with _ that requires my immediate attention.	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
11338114-b292-4035-90b8-4bf75707cf1f	f	Because you enjoyed _, we thought you'd like _.	2	abc5f4ee-aeda-4461-97b2-de8af24a03f0
73836bc7-eba7-4bc4-8afb-c0def3fb959b	f	A wise man said, "Everything is about sex. Except sex. Sex is about _."	1	abc5f4ee-aeda-4461-97b2-de8af24a03f0
f14c2337-8b7d-4dae-9d9c-9be615b9e7e8	t	The sensitive European photographer who's fucking my wife.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
dc326180-ca53-474e-beb5-52ffc7f17f69	t	Strangling a dog to make a point to the audience.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
97cd65e2-ddb0-4e23-bb53-143079cc87d8	t	Ribs so good they transcend race and class.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
cc74fb58-c1bc-4048-8b13-5293f9da1b78	t	Punching a guy through a wall.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
431a1e92-8015-4160-971b-407b9e0b56df	t	Making it look like a suicide.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
fc3e95b0-742d-4bd1-a39c-676fde06eea8	t	Getting eaten out while on the phone with Dad.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
d10ed890-c19b-4a9e-a6a9-a129fd719933	t	Forcing a handjob on a dying man.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
c590aa53-6707-4e36-b26f-7cdeb87bdd2a	t	Discharging a firearm in a residential area.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
6f937625-9ae7-4111-8573-94edda4f09e4	t	Carbon monoxide poisoning.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
b14da3f3-1f3e-448f-b97c-929c8b5bebe1	t	An origami swan that's some kind of symbol?	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
79369a0f-6600-4abd-817e-cce5cf2a583e	t	An older woman who knows her way around the penis.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
f610f7b0-28b0-4135-9820-9d9fa5dc91d4	t	A mucous plug.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
cf4906c9-5986-4853-8cdc-01e3f5ef99a4	t	A homoerotic subplot.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
12e2727b-b0d9-4b25-aeb0-995653693308	t	A childless marriage.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
89aed601-3abf-4165-8a3f-973efb395ee6	t	25 shitty jokes about House of Cards.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
7b27d0b1-50b6-44de-b635-9d45994f32ca	f	What will finally make me care?	1	df838539-3ce7-46c9-8a90-d61a2cd1f336
79b8df8f-7bd0-4873-93ef-8a3b5943f2a4	f	If Mike Pence could dream, he would dream about _.	1	df838539-3ce7-46c9-8a90-d61a2cd1f336
1dd7b7f8-dc80-4ca8-964b-913357565afa	t	Totally ineffective political satire.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
d052b18f-646d-4867-91c7-f2d060ec5a18	t	Sean Spicer, Reince Priebus, Steve Bannon, Sebastian Gorka, Omarosa, Anthony Scaramucci, James Comey, Mike Flynn, Rex Tillerson, Ty Cobb, Andrew McCabe, K. T. McFarland, H. R. McMaster, Gary Cohn, Hope Hicks, Rob Porter, Scott Pruitt, and Tom Price.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
7304daf5-3deb-4d88-b9c9-6caa756136a9	t	Rising to power on a wave of ethnic nationalism.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
bd362b4a-e065-4782-a503-83b36ac17438	t	Pseudointellectual centrist bullshit.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
7a837ee0-ce69-4ca7-b4bd-f3ab6bef8e99	t	Propping up Ruth Bader Ginsburg's corpse and moving her jaw up and down.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
9d198561-4a57-4c33-a2cf-4f1053a0c4fe	t	Overturning Roe v. Wade.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
87a1cb0a-b8bf-42f2-a11b-76e384f24318	t	Not thinking about the children in cages.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
8eaee46f-e16b-4381-99ec-1178d4c9843b	t	ICE.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
cbe5a601-5960-4f35-af78-dd578b8736c7	t	Fucking over future generations.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
cfbb64ad-68b4-4fec-9a9e-0deefef93782	t	Fentanyl.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
086fcc2b-4332-4ad9-8203-f88cd712902e	t	Donald Trump's latest fucking thing.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
e59a74e8-0fb5-4596-8405-eea09b16ddaa	t	Crowdfunding my daughter's bone marrow transplant.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
3d27aa1c-795a-4168-8e6d-7131581ef603	t	A politician who doesn't blow monkey ass.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
b8ca9c7e-f1b7-4922-a04e-9a0b204c7aa3	t	A living wage and affordable health care.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
74dd0fa7-12af-4021-ad71-d1892c802602	t	A law that allows factories to dump toxic waste into children's mouths.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
36c4d736-c406-4aec-963c-2cdee0d96992	t	41 million Americans living in poverty.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
712126ef-5793-444a-b4c6-ac4bede7b3a1	f	What's the latest bullshit that's troubling this quaint fantasy town?	1	81d803d7-8b78-45b1-ad22-ac904d93c275
b18d21c6-601d-41ff-b6ba-6fbcc02a218c	f	What made Spock cry?	1	81d803d7-8b78-45b1-ad22-ac904d93c275
0c143f2a-78df-4100-bf43-03e242e5f839	f	Press ↓ ↓ ← → B to unleash _.	1	81d803d7-8b78-45b1-ad22-ac904d93c275
d536564c-9a26-445c-b7ec-3ef846378cbc	f	(Heavy breathing) Luke, I am _.	1	81d803d7-8b78-45b1-ad22-ac904d93c275
229b0f1a-7638-4019-a542-4221a98cc2cf	f	_: Achievement unlocked.	1	81d803d7-8b78-45b1-ad22-ac904d93c275
756c7a9b-a713-454b-8d3b-6746efb71e40	f	_ is way better in _ mode.	2	81d803d7-8b78-45b1-ad22-ac904d93c275
172f0d37-c362-479f-9e3a-48cb3fb2e97f	t	Yoshi's huge egg-laying cloaca.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
332bfe6b-b363-4c7a-b6c5-0ffe3890954d	t	The depression that ensues after catching 'em all.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
874e1652-8730-414d-bde7-0034e80e854a	t	The collective wail of every Magic player suddenly realizing that they've spent hundreds of dollars on pieces of cardboard.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
64ef2611-1874-4359-85e1-9828a1d28ac2	t	The Cock Ring of Alacrity.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
75a3e8e1-a2a7-4411-bb78-c30e04bfd738	t	Tapping Serra Angel.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
b6161ffc-4aa4-4371-82db-a498ad2524a5	t	Taking 2d6 emotional damage.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
8fd40fe4-dbcd-4679-bdce-328ca0ac4eb8	t	Stuffing my balls into a Sega Genesis and pressing the power button.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
b49bea35-3f61-4dcc-bdff-e157813d8c1d	t	Sharpening a foam broadsword on a foam whetstone.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
f7f31f20-c946-4492-b69e-36e3202e1d52	t	Ser Jorah Mormont's cerulean-blue balls.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
aa7db5ea-01c6-4953-b880-3e7d9e923b59	t	Separate drinking fountains for dark elves.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
3b2f8512-8c79-45d9-b1c5-9d36a2885f4a	t	Running out of stamina.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
beb0c681-253b-455f-974c-8c7c1b7e964c	t	Offering sexual favors for an ore and a sheep.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
26b7eb16-3c04-46dd-9003-edcee43066e2	t	Loading from a previous save.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
20f3cafa-dda1-4589-b38c-b9624364ff3e	t	KHAAAAAAAAN!	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
73687d11-93c3-4668-b507-e544eff81969	t	Getting bitten by a radioactive spider and then battling leukimia for 30 years.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
5062c21a-8382-4902-b2a8-e0ea2ebbc675	t	Getting bitten by a radioactive spider and then battling leukemia for 30 years.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
273db8e2-5532-4976-8099-8a4b39b1f72e	t	Forgetting to eat, and consequently dying.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
6931e587-dc3c-49c1-8cc2-54ee8f6ab729	t	Endless ninjas.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
00a18788-3f08-4108-a2f1-13c3b38ca57c	t	Eating a pizza that's lying in the street to gain health.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
4f7ad452-e61b-469d-891c-072eeb0afda6	t	Charging up all the way.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
84cf871d-1f3e-4c04-a006-b82c224ce351	t	Achieving 500 actions per minute.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
4c94c238-37f2-4c7f-8cd0-0a91d78e636a	t	A homemade, cum-stained Star Trek Uniform.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
4c96a7bd-cf85-468f-badc-4e4c89e87374	t	A grumpy old Harrison Ford who'd rather be doing anything else.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
66f267e1-5159-4e38-9d4f-3b0d251e14de	t	A fully-dressed female videogame character.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
db7c0feb-c519-477d-bd52-e82415583f29	f	Now on Netflix: Jiro Dreams Of _.	1	343dc3c6-e89c-4ddc-a924-0705650e6f76
fd83b11e-c863-429a-9d0a-19ea66c42d03	f	It's not delivery. It's _.	1	343dc3c6-e89c-4ddc-a924-0705650e6f76
8659fc2e-7769-48b9-9e3e-8cacaf0e71bd	f	I'm Bobby Flay, and if you can't stand _. get out of the kitchen!	1	343dc3c6-e89c-4ddc-a924-0705650e6f76
45d6ae95-95f8-4cd1-a9cf-a368daa39026	f	Excuse me, waiter. Could you take this back? This soup tastes like _.	1	343dc3c6-e89c-4ddc-a924-0705650e6f76
a2c09a4b-c5dc-4b91-970d-c40c12b9616f	f	Don`t fear failure fear _	1	343dc3c6-e89c-4ddc-a924-0705650e6f76
0f0b219b-0c01-4f3c-89e2-a1ca74b3eadf	f	Aw babe, your burbs smell like _.	1	343dc3c6-e89c-4ddc-a924-0705650e6f76
08b54ba2-35f2-4b22-93d9-3b442f58f422	t	What to do with all of this chocolate on my penis.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
a5a6da90-6719-4886-ac04-f2595bd7ae02	t	The inaudible screams of carrots.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
a1fd5974-8ee0-4a34-a65c-cc4223212ee8	t	The hot dog I put in my vagina ten days ago.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
404bed08-65eb-4d4c-92ff-e4d6dd07aec2	t	The Hellman's Mayonnaise Corporation.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
9bfd85fc-dd11-4616-a324-b9731c6a54f5	t	The Dial-A-Slice Apple Divider from Williams-Sonoma.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
edc6635e-4936-4e22-969b-68bc0841aa17	t	Swishing the wine around and sniffing it like a big fancy man.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
452a4ae4-80a7-4fbf-a4b0-cde43892240d	t	Sucking down thousands of pounds of krill every day.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
6f38fd20-c0a5-417e-9f56-2fea6c45fee5	t	Soup.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
ef5772e0-8098-4731-9919-9e3e8f4cee05	t	Real cheese flavor.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
891c8e4c-4926-470d-b07d-587837481deb	t	Oreos for dinner.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
5552005d-61f0-4017-b4ac-5b1dcaeaa123	t	Not knowing what to believe anymore about butter.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
3044b76c-672c-4198-a30e-788d0524103d	t	Licking the cake batter off of grandma's fingers.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
4023abec-9e35-4a12-8b15-4d149739a39f	t	Kevin Bacon Bits.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
e93e7c74-5bfa-43d2-a3d3-74c52455da53	t	Kale farts.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
32c639eb-bd24-49ec-a3ba-b1147bdb2a7e	t	Jizz Twinkies.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
ffb08851-14ff-4d67-8c41-eaea0955afd3	t	Going vegetarian and feeling so great all the time.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
993efacb-cad1-4152-adcd-48f71bd1373a	t	Faulty UIDs.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
92998911-0c74-4566-b82d-8a1ae8099841	t	Committing suicide at the Old Country Buffet.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
8960d109-a119-443d-bac3-fd277dc38166	t	Clamping down on a gazelle's jugular and tasting its warm life waters.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
8ba5ad56-406c-4f6a-b539-f17570ab79f1	t	Being emotionally and physically dominated by Gordon Ramsay.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
fa59cc56-b8b1-4dff-a406-cbf4e72d5605	t	A table for one at The Cheesecake Factory.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
716f18a4-2f6a-45c5-98af-46084990c5c9	t	A sobering quantity of chili cheese fries.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
ebcb7ca9-50a6-48dd-aba5-b6b9b7e32f3b	t	A joyless vegan party.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
a50397b6-70a6-4802-aa22-bd29a3717f63	t	A belly full of hard-boiled eggs.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
250160ca-cc61-4175-8a2a-ff6c4bcd5658	f	Leni Riefenstahl's last movie was called Triumph of _.	1	f9f9f855-b2a3-432a-9f49-a52f1b402740
e90e0408-dd88-41d7-8b4e-8a8f7c8613e4	f	Before swallowing his pride and a cyanide pill, Adolf whispered to Eva, "Sorry about _".	1	f9f9f855-b2a3-432a-9f49-a52f1b402740
99a69f24-f330-4d00-b389-10e0dde81ae8	t	Whatever brave hero killed Hitler.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
b40c350f-162e-45ce-9ffe-3b1450266c14	t	The Yad Vashem World Center for Holocaust Research.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
63f99b6d-243d-425d-acc9-83ce4c680eca	t	The cyanide pill you keep on your person at all times.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
e0a968e3-58d7-4276-a76f-c450ffae01ab	t	Straight up fucking loving authority.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
91c14966-fb4b-449e-821b-542d66cda790	t	Ruining an entire genre of moustaches.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
77d78bde-cb34-45cd-97ad-a519cc15a8a2	t	Presenting your documents at a checkpoint.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
472a26bb-b97a-4c73-aeaf-341258b5f09b	t	How cool Nazi airplanes are.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
8a457919-b6c9-463b-ad43-95297b9e4a44	t	Hitler's sound economic policies.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
86da45a3-96c2-45b0-96c3-f27c4204373a	t	Electro-Stalin.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
7e3da87a-6888-4d97-a10a-0b3dcedc60f5	t	Donald Trump's personal copy of Mein Kampf.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
0636c34a-89da-4c32-8cce-45ff085d7991	t	Disco Mussolini.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
874222bc-9fb9-479c-9eda-8bed04138672	t	Cloning Hitler.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
9012b7a8-0d0d-4f15-a2c3-443b9492b772	t	Breaking news about what Hitler's penis was like.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
5a7b5d33-0953-4caa-946d-ccbedc3adf33	t	Being open to new perspectives on the Holocaust.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
1570ead3-3dbd-4c09-99dd-1d85d14081f4	t	An orgasm so powerful you travel back in time and jizz in Hitler's face.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
1eb103e8-1ec7-42a7-8909-6ebf5df3e193	f	Your father was a powerful wizard, Harry. Before he died, he left you something very precious: _.	1	e28a9316-9ac1-4a97-b413-73b7a15f9f27
3a2ec476-9655-4e59-a1ac-391675fb046f	f	Who blasphemes and bubbles at the center of all infinity, whose name no lips dare speak aloud, and who gnaws hungrily in inconceivable, unlighted chambers beyond time?	1	e28a9316-9ac1-4a97-b413-73b7a15f9f27
1a836ef1-3f01-4ea4-b7d2-68a852b4c35d	f	Legend tells of a princess who has been asleep for a thousand years and can only be awoken by _.	1	e28a9316-9ac1-4a97-b413-73b7a15f9f27
4a99629b-059d-490f-af4c-bf796e951c02	f	Having tired of poetry and music, the immortal elves now fill their days with _.	1	e28a9316-9ac1-4a97-b413-73b7a15f9f27
3e32d351-ec63-4f2c-b957-40cca7eea34e	f	Critics are raving about HBO's new Game of Thrones spin-off, "_ of _."	2	e28a9316-9ac1-4a97-b413-73b7a15f9f27
a6710a7b-d041-4925-9690-b3690adce495	t	A pile of squirming bodies.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3e4bbc85-020f-44b7-a2e7-fe3967e2146f	f	And in the end, the dragon was not evil; he just wanted _.	1	e28a9316-9ac1-4a97-b413-73b7a15f9f27
a0b5b761-15d8-4bba-9dfc-d864f8548ab0	t	True love's kiss.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
9a44ef9b-dc3c-45f4-9881-6ad34fc6ebdf	t	The card Neil Gaiman wrote: "Three elves at a time."	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
ff2a9711-87a7-4740-828e-30752fa35de6	t	The all-seeing Eye of Sauron.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
35ded630-b186-4f93-b594-893bd7dc28c2	t	Shooting a wizard with a gun.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
032e7eda-14ff-4e77-ba01-030c6fdf8411	t	Shitting in a wizard's spell book and jizzing in his hat.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
ff56a472-fa11-43e5-b698-63c5bad32e37	t	Reading The Hobbit under the covers while mom and dad scream at each other downstairs.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
fe8492ff-040e-4183-9ded-b5ed6f97c1ed	t	Make-believe stories for autistic white men.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
0de9d69d-eef0-4687-9e55-95b4362f4207	t	Kneeing a wizard in the balls.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
93d6f6a2-7af4-4b4a-ad54-fe857e63d44a	t	How hot Orlando Bloom was in Lord of the Rings.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
ccdbc949-6594-4671-bf1d-e278e7ade6a5	t	Handcuffing a wizard to a radiator and dousing him with kerosene.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
8006a546-0201-45b2-ac32-4797a1a23835	t	Going on an epic adventure and learning a valuable lesson about friendship.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
d297245e-425d-474a-978b-2ade8a40c00e	t	Gender equality.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
d74604c4-5f45-4a68-a566-76b20e5a89b9	t	Freaky, pan-dimensional sex with a demigod.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
e5a9e18a-3af5-459b-8916-d5e67edeb037	t	Eternal darkness.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
15d2496d-308c-4671-8aad-203944ca2d89	t	Dinosaurs who wear armor and you ride them and they kick ass.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
abaa3592-9121-45af-a73d-2c2cf3547d8a	t	Bathing naked in a moonlit grove.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
9ec238c0-e25a-4449-9e83-94b717551540	t	Accidentally conjuring a legless horse that can't stop ejaculating.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
895da959-90a8-48e1-8ad0-27ab73c3fb40	t	A weed elemental who gets everyone high.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
5055a7a5-b579-4996-a8b4-47374a601f76	t	A mysterious, floating orb.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
f292792a-8e7b-4e69-aef1-e4dd6e321c43	t	A magical kingdom with dragons and elves and no black people.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
93a575ce-6bad-4868-99f9-a2627927b71f	t	A Hitachi Magic Wand.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
dba8c2d1-5e37-49b7-8b27-3737ad42c219	t	A ghoul.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
3b77e561-0fe8-4815-a866-da1298179df4	t	A gay sorcerer who turns everyone gay.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
14222209-d6a3-40b5-beed-70e3373ad43d	t	A dwarf who won't leave you alone until you compare penis sizes.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
6aa0836e-7501-4e5a-bf1f-5b6d40ce2087	t	A CGI dragon.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
09be8a9c-9c83-4b2f-8c47-44fc7f9e0aac	f	YOU try explaining _ to the media!	1	374a0879-27bd-462b-a48b-ce29ca840be6
d64ad353-45e3-402b-9cf2-835a55bcca57	f	The four shifts at Desert Bus: Dawn Guard, Alpha Flight, Night Watch and _.	1	374a0879-27bd-462b-a48b-ce29ca840be6
d0828ed7-c915-4cc8-81b0-f24ab12b5ee8	f	Ken "_" Steacy went back into his archives and found his original sketches for _.	2	374a0879-27bd-462b-a48b-ce29ca840be6
34530249-25c5-487d-92ad-0268302cf9a6	f	I bless _ down in Africa.	1	374a0879-27bd-462b-a48b-ce29ca840be6
6da9764f-72fd-4bfd-ae5e-b0268a4cea69	f	Desert Bus: _ for the children.	1	374a0879-27bd-462b-a48b-ce29ca840be6
b2d994dd-64e3-4a3a-b5b7-d93ad21dfa48	t	William Shatner watching you.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
eb70249b-1874-4c1e-939e-b978bbca5586	t	Whale dong.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
2e27fc86-0e3a-4b21-b745-d85244d5d37f	t	The Turner Lickability Scale.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
8f4b2f9f-3870-4c53-84a9-29c2e57f4efe	t	The D E V I C E.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
3ce15cce-ba53-47ca-9807-d8d5a473e7a8	t	The BONE ZONE!	\N	374a0879-27bd-462b-a48b-ce29ca840be6
16e029a5-8106-4297-ac39-2aaa70511deb	t	Shipping a fish brick to Ohio.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
0af43369-2a8f-4d6f-a740-7a3808d2e2ba	t	Playing one-handed.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
4a242c4e-8633-4a6c-a632-2ad0d200e5de	t	Letting the internet feed you.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
ca54a798-8407-4d27-9357-90637b278a42	t	Having no idea what the fuck is going on.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
8f2d73e3-d8a3-46cd-9b27-51970486300c	t	Doing it for the children.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
69a4a6f6-f389-45d3-a403-c2a41f41d18d	t	Desert Bus.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
82b04118-807f-4770-95bc-7019fda409ae	t	Bill's mom.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
c04f2f98-b3ca-420b-909b-230f905a7c8d	t	Belting out the chorus of a popular song and mumbling through the rest.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
226e0286-1bcb-49ef-991c-5854f46c09df	t	An encyclopedic knowledge of Night Court.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
22f9a4c0-f83e-4c71-b190-547ab2690f5f	t	Accidentally broadcasting an NSFW video to 5,000 people.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
568cc86b-ee5d-4ebc-bd6a-fac0ab96e8f0	t	A lethal dose of caffeine.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
bb2d95ab-cab6-4d6b-b3e0-635a90b71cbb	t	A chair-shaped fart sponge.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
02799f3f-255e-40ee-82c9-6339ff5bf9f8	t	A bathroom only for poop.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
92b74ed2-c709-4ca4-a242-acad31ba9d59	t	$10,000 worth of silica gel.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
c21533df-2534-4856-8cb1-d2b640447f10	f	Young lady, you better knock it off with _ or you're grounded!	1	b79ee076-4270-4793-b5ae-15b60686eedc
24f150ef-f249-4ad1-bbf1-23db83015028	f	Whaddya think, money grows on trees? I'm not paying for _!	1	b79ee076-4270-4793-b5ae-15b60686eedc
70684375-dd06-4c84-9dab-8a305a8e9e6c	f	So apparently Dad was searching Pornhub for "hot milf _."	1	b79ee076-4270-4793-b5ae-15b60686eedc
69b952d0-a562-4110-80b3-124babffa29a	t	What Dad has to say about Muslims.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
cb229c1a-6300-4c2e-acbf-1efa21c0dc72	t	Tripping on an object and becoming angry.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
3238862b-4af3-4dca-8ae5-50ef506574af	t	The son of a bitch who knocked up my daughter.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
cce37298-4db1-4b3f-a30b-14ef91b46637	t	The nipples of a man.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
8f7b413e-077e-4cef-a43b-0d1e6c511130	t	Stealing a child's nose and keeping it forever.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
7368deea-8f00-42a2-91c6-db742a82b487	t	Standing in the middle of the living room holding two remote controls.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
f28d20cb-b2cc-4a87-b359-6b084e976237	t	Sitting on the toilet for 45 minutes.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
17e25421-517b-4e41-a9eb-b23e55156db9	t	Puns.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
c5eca518-8129-462e-a4fd-015e19db964a	t	Making the printer work.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
176ccb89-a5e7-4cff-9f64-a8b1561fd795	t	Kidnapping Liam Neeson's daughter.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
a795222e-be88-4929-82fb-61296bbbf637	t	Having a heart attack.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
2eaa4a8c-87e3-4554-9060-122eff082b00	t	Having a bunch of kids by accident.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
eb420a09-fa65-416a-a87e-7e50eadb2b0c	t	Going bald.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
01620140-2e28-4b87-b749-bba49c67db59	t	Forty-two years of repressed homosexuality.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
aed43d4f-efaf-4a37-a47f-ce6b347938c1	t	Flirting with the ladies at the bank.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
bbc3264a-ba2d-4ec5-b507-61aff64ecefd	t	Finding a place to sit down.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
0211e552-51b7-48fd-81b7-9c873a8ade10	t	Emotional unavailability.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
6b86a002-6209-49f2-9b3f-37125d8d2094	t	Dolby® Digital Surround Sound.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
b6914aae-66d7-4e9f-9e07-491dc547e8d1	t	Divorce.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
35cd326c-514f-4600-b180-fc56bb52d503	t	Dad's famous chili.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
6a15dfa7-e219-4f45-986c-5dba918240f6	t	Dad's big sex night.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
50f716be-0be6-40cb-9110-b7e430f5dd3b	t	Dad coming home drunk.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
9f546447-7744-42f4-9d21-5f6a312fb0cf	t	Coaching the 7th grade girls basketball team.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
39be8b5e-affd-4506-a1fe-da391b7e24bb	t	A positive male role model.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
b5a20db1-348e-49b9-a73d-316c942286ba	f	Roses are red. Violets are blue. I am _ and so are you.	1	c44f63ce-aee4-414b-ba28-c45d190b5190
5a365b88-9e1f-4ca2-931d-70a7e7fcad52	f	I cannot stop smiling about _.	1	c44f63ce-aee4-414b-ba28-c45d190b5190
584d5005-9ca3-4598-9b82-fbecf0e1e4cd	f	Honey, it's gonna take more than a shitty greeting card to make up for ten years of _.	1	c44f63ce-aee4-414b-ba28-c45d190b5190
ac8542f4-9b95-440f-8793-3b7db367d15f	f	Happy Birthday! I love you. Here's _.	1	c44f63ce-aee4-414b-ba28-c45d190b5190
25834916-a3d6-4af9-9a1d-0853e7719a4c	f	Hallmark has invented a new holiday. It's called "_ Day."	1	c44f63ce-aee4-414b-ba28-c45d190b5190
37d05359-f5d5-43a9-8e9c-9cc83f546426	t	Turning 70 and still being fuckable.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
b9af365b-a105-4098-9daa-f861d7892e32	t	My five dead husbands.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
85cf26a7-fa3e-44c5-9f9c-07125f072ca2	t	Mom's special birthday rimjob.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
651aaac1-f182-41b9-93be-bf1c7b481c75	t	Luring my husband to the bedroom with a trail of ferret teeth and appearing on the bed in a ferret costume.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
3233acab-1fb7-4128-9e9b-c0c9e807f107	t	Looking like shit.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
8405e963-7e01-4403-9a1f-0b33620991e6	t	Give me kiss.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
c3f9c334-bf34-4670-956c-aa9fcf0e70c0	t	Emerging from my mother's vagina.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
81df4281-ca58-4060-a489-b29be35fa10f	t	Eating my children.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
7e330bbd-fc22-4df4-89ec-e09b4b1363a5	t	An explosion of glitter.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
f17bfc94-f03b-4e69-ab66-c469b0abd0ef	t	A one-star Uber driver named "Wife of Tarantula."	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
e6af8340-24f3-4db6-bb23-3f95c6c98fff	f	You see, son, baseball is like _. Don't overthink it.	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
c2790836-34ac-4dec-a47d-d3ee8cdc3726	f	When asked about the biggest threat facing the nation, 60% of Americans said _.	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
1f0b5759-17c0-42b7-89e8-17c504de0a02	f	We want a pitcher, not _!	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
4aa8197b-04e3-4428-827f-911e4c12b4e8	f	The fault, dear Brutus, is not in our stars, but in _.	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
1c02c087-69a8-4877-8dbf-ba9c97e1df9d	f	Now is the winter of our discontent, made glorious summer by _.	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
da0d7f93-726e-485e-8496-8bc16ff8b60f	f	Cry havoc and let slip _!	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
7b9a839e-6e8d-459d-85dd-2a9dd76b4f8e	f	"They're bringing drugs. They're bringing crime. They're rapists. And some, I assume, are _."	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
879c7f2d-da82-473c-bf7d-a4667b735240	t	Yelling "I got it, I got it!"	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
e07eadf4-560b-4b84-8d57-15595632cb35	t	White people becoming a minority.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
70a736f3-f9e9-4b16-a927-a50c37486aba	t	Two hamsters nibbling on a tiny burrito.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
eeded21a-9fec-4570-b78a-75a835ea45e8	t	Two baby otters holding hands.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
0acd06dc-1ad8-49ed-a2f9-b01fdf645eb0	t	The truth.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
d442f5da-17ac-4e50-8d6c-d000194b5c0b	t	The significance of eyes in King Lear.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
c7d57afa-551a-4957-8a1a-cf041352bda5	t	The shocking stupidity of the American public.	\N	a95919a6-97a3-40dc-84ba-702fed111361
323bcb7a-787a-4a0c-83f1-7dd97a27c5b7	t	Teaching my son to love the Red Sox and hate minorities.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
fcf03b9b-5c6c-4b59-98c7-588ea3ad8f0c	t	Taking a minute to really unpack what Shakespeare is getting at in this scene.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
ae641b23-ddd1-491d-bb36-476e31e16752	t	Speaking in iambic pentameter.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
3b4f952c-395d-4db4-82a0-7e38f679d909	t	Slowly shaking my head at a sad statistic.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
9c72b0ce-45e5-4694-ac44-9b2fe36dda61	t	Our dumb asshole president.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
7097a154-f0f8-40d0-80ad-6d876545fd5b	t	My money stolen by Cards Against Humanity and redistributed to people poorer than me.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
481c5969-ba84-4f0c-a26a-145952021fc7	t	My drunk father screaming from the bleachers.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
5844d0df-2847-475e-8427-5c3a7801ebcb	t	Mexicans and Muslims.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
0f29fbef-c014-4eb1-8885-609eb5ebf341	t	Lou Gehrig's Disease.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
e82133ea-d629-4dcc-a24d-e64c529bfa6f	t	How easy it is to climb over a wall with a ladder.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
c3910123-2051-4edb-b91a-981992bd4c78	t	Guacamole.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
de8f2662-b193-4a08-833f-7953dd8995d4	t	Getting deported.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
fb38bd70-6ecd-4727-9497-88a8d4f33d86	t	A stack of puppies in a trench coat.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
e3e71dfc-f9bb-4130-a219-4159e57adeea	t	A really good dog.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
4a12b756-3508-4544-b6ba-69655dc04eef	t	A laundry basket full of baby bunnies.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
9115e0ed-9bc3-411b-8c10-1c910ae09e41	t	A gay Republican somehow.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
a0d719f7-be91-44b0-ac44-c384e4b06bc5	t	A full refund from Cards Against Humanity, paid for by people richer than me.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
fc83ee8d-4d82-4b00-9b65-9b9dfbc01132	t	A baby panda that just can't keep its eyes open.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
21fe2925-8f02-4052-a860-13034a6df564	t	A $1,000 check from Cards Against Humanity!	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
377a48ef-507b-4735-8f2b-bde0068c1178	f	When I am Prime Minister of the United Kingdom, I will create the Ministry of _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
a29456fb-eb59-4e66-9e38-7622674016dc	f	What killed Mister Rogers?	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
039914cc-c3ce-40b7-bfbe-61efa5e3b169	f	What did I bring back from Bali?	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
8a700740-dda8-4289-8745-6e76d322507a	f	What are the 3 secrets for a long and happy marriage?	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
ae39a208-4153-46d5-822c-fb89a6ffa7af	f	Today we honor St. Mungo, the patron saint of _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
c4c55e33-57aa-4f06-8d35-37f1566942f6	f	The theme for our senior prom will be _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
e3c20110-1ee0-4c2b-bf55-556e35cc7e0b	f	The Natural History Museum has just opened an interactive exhibit on _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
700d26d7-4b4c-4e61-97d4-4783274290eb	f	TFL apologizes for the delay in train service due to _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
b6ba26ee-eff1-4839-b2ed-72f7102fa1c2	f	Nobody expects the Spanish Inquisition! Our chief weapons are fear, surprise, and _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
3185863f-69e5-4373-b85e-56a6ca3b212d	f	Next on Sky Sports: The World Championship of _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
12605764-521b-4503-9a7f-c2311a937978	f	In Wormwood Scrubs, word is you can trade 200 cigarettes for _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
421ea5e9-c326-4e38-8b04-cccee8033b26	f	In high school, I was popular with the football team for _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
b083ea4b-0b55-4f17-a56f-3435c78889fd	f	Dear Allah, if I promise to stop _ will you let me into heaven and give me 72 virgins?	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
75b39ff7-5eb7-46ff-bded-de52d0390dcb	f	Coming to the West End this year, _: The Musical.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
6837a8b6-f483-43c4-8bbc-f70929d44f13	f	Channel 9 is pleased to present its new variety show, "Hey Hey It's _."	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
d66ffc93-7dc3-4ba7-9e7c-d7810202359c	f	Channel 5's new reality show features eight washed-up celebrities living with _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
d10ca6c6-558e-4de3-9a68-1538e5964224	f	And the Lord said, "Let there be _". And it was GOOD.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
67c71955-aa27-487a-983a-24cacb404688	f	_. Once you pop, the fun don't stop!	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
cf8688f7-1527-48fa-a5e0-52052daa639f	f	_. That's why mums go to Iceland.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
78d09a63-608b-42e2-b68a-f680557f7fdf	f	_? Jim'll fix it!	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
b345dce5-0739-4843-af7e-7ef5ffd0a4d7	t	Trevor Noah	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
ce324dc8-f2ad-4f9d-9f4d-bef93fcab156	t	Torn pop-up books.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1ab602b1-8c9e-4bb3-aba1-cef7e595f07a	t	The way Rachel Hunter devours her Trumpets	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
c7db2e46-9630-4142-8e7b-0b7cf0ca5c72	t	The mere concept of Applebee's®.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
2927a7cc-2d58-4b28-a24c-0ce09e0e7554	t	The sudden interest in the opposite sex	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
29e1b5bd-6f06-4421-9089-d47a5d60ed17	t	the stinking elder	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
e2bc5a0a-90b5-4f2e-9112-b09dd0dbe8e2	t	The Phantom of the Opera.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
c083d206-fdc3-4227-8508-84a3f5be3bdb	t	The Northern Lights	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1fde5c51-be9f-478b-932d-55849ff8a6c6	t	The honourable member, shut up.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
f4b79efa-655d-4132-b048-e2a2f3840c51	t	The Hitachi Magic Wand.*	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1d143695-dcc1-4bda-ab43-3194552880c5	t	The Friend Zone	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
d46e36e4-d87d-4c9c-90f6-0b239fa5eea3	t	The entire cast of Downtown Abbey.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
8a87b677-c287-40ec-838b-3e5715a6dc8f	t	The Blue Bulls rugby team.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
303deccf-2a7d-4c73-b520-1f9351a34e25	t	The black half of Barack Obama.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
89730d52-a958-4dd9-9e05-95cf9f8bff8b	t	Spanking	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
4f46815a-4939-46ef-9efa-66705b2043de	t	Slapping a racist old lady.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1c0187fc-ceb9-4cae-8824-a9c1c2c847ed	t	Shitting out a screaming face.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
fe3fb4d7-17b0-417a-9155-74d8ca2750da	t	Scouting for disciples.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
ecc766e5-0beb-4949-a78f-1f0e44857b57	t	Scalping.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1c2cfa9a-bc32-4a75-a37b-e4dfbf5e51d8	t	Rubbing chocolate pudding all over Bill Cosby's nipples.	\N	a8cf9609-7fe8-4bd9-bf3f-ad267d9e711e
388cdd5a-b867-4ee0-a6fb-37252ce3c1ae	t	Ripping open a man's chest and pulling out his still-beating heart.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
b1d4c8c9-77d9-490e-acab-676a14eb6eae	t	Queen Elsa	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
22165592-d6d1-4b2f-aeb6-c31ebd861565	t	Pronouncing the p in raspberry.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
90cba8c6-e22a-43c8-bf52-d6aa640f616d	t	One for the homies.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
473d3f0a-0950-47d3-a58a-7c6b8f40159d	t	Minions	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
b94139f1-67f5-4f4f-a8eb-cd6966b4e6e3	t	Mimosas at the playdate	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
968c3bcb-09f7-4a72-8c48-9412bdf6b095	t	Max Key's obsession with topless photoshoots	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
f0135bb5-4424-47d9-9c92-6d1c911f86ce	t	Madeleine McCann's new age progression image	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
0b8f54a9-28c3-496d-af0e-bc222c0d6802	t	Leaking milk during sex	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
441ec75c-5966-4543-ae8e-d2ef537fec6e	t	Just turned 18.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
a5189f8b-0aac-4e16-a2ee-cbdb1ab584ad	t	Jimmy Savile	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
5f80ea32-fe49-4384-bd7f-89025712c895	t	Jell-O shots	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
e734c947-2701-4e3a-9d97-195b237be28b	t	Jeff Bezos.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
c971c32d-32be-4866-bac1-8f49d0f36e0c	t	Jafar.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
6875a59c-c1f4-4eea-852b-d468d9b87e73	t	Hurricane Katrina refugees.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1a8b8be6-0883-4ea0-9fcb-8a9e9a547351	t	Hagrid and Madame Maxime roleplay.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
10985b68-1f62-4706-95f2-dbefa1720e4e	t	Getting wet	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
843bd288-68a1-447f-b480-2885dcf8739a	t	Getting naked and watching Nickelodeon.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
5198ac5b-c3af-4a47-a95e-cddd1d8f8661	t	Germany invading Russia in the summer.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
ed35a4cd-7888-4b86-841a-7b45f8385e99	t	Gentleman's Relish.®	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
84107fa6-1404-4098-a7a3-c5cb50e02199	t	Gary Sinise's unrelenting hard-on for all things military.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
c2a3d55e-9399-4f7c-a8f9-e493b6607f46	t	Five miso soups, four seaweed salads, three soy burger dinners, two tofu dog platters, and one pasta with meatless meatballs.	\N	3ad24118-ab00-4ad7-9f5b-8071c970160c
b57a1dc6-94e2-4842-9778-4d5da6ecf90e	t	failing a personality test	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
794ccf0f-ae79-413e-972c-7b8ecc4eead5	t	Exceedingly low standards.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
6fb27931-7731-4676-9538-87d161be4d62	t	English cuisine.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
a1ce4bdc-7752-4f1e-a7df-5c56ead473e3	t	Ed Sheeran`s receding hairline	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
5f62f759-da88-4542-b6bf-c97f50db37c1	t	Drum circles.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
64a6f7b0-4fbe-4d85-895a-4812811e7e40	t	Doing a somersault and barfing.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
5b36d343-9537-4b17-8c0a-2755ec034205	t	Dogging	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
38e69bce-c675-4400-b468-c087f20992e5	t	David Cameron's bacon-flavoured balls.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
3cd4b296-565d-42c9-9631-d6789e555ea6	t	Daddies Brown Sauce.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
89597650-3d4d-405b-864e-c707b450723a	t	Cotton candy flavored lube	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
75953c07-cc6d-420f-98ef-146a855c3a0d	t	Chlamydia	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
3fd92af9-a654-464a-9dc1-1e23f64a59b6	t	Cheerful blowjob robots.	\N	c11401c9-6f08-4506-9037-11c6d1a92691
45d60068-3288-4ba5-9ff4-239910408255	t	Buckfast Tonic Wine	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
279a9c77-fdef-4a85-90e4-8e5c77e82ae7	t	Blowing up the Moon.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
fae75b7f-9f22-4380-ad02-aea1ec1511b4	t	Bloodthirsty dictators.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
67e05520-78b0-4c11-86e4-58e023ef5c5d	t	Being ignored.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
9fde67d5-317e-4d26-af70-57857613f69f	t	Badly-botched botox	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
acab6955-efad-42d2-8d9b-3207c059558e	t	Anything with a hole.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
524c4845-a350-42b2-b733-6cd38f8ea2ea	t	An EO violation.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
a2adf1c4-0e9a-4de1-ad8c-3e03089069c3	t	an arm thrust forth from the grass over a grave	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
b8f604bc-9b50-43c1-904a-43a86ca4c1d7	t	A white, straight, cis male.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
709bf59b-4ece-43b9-acde-5244ac9d6fe1	t	A Violet Wand with multiple attachments.*	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
9ca23ba0-c201-4b43-b531-7cfb60843cb8	t	A thousand shitty wedding planning websites.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
44069eb1-3c8e-44de-a744-a1f2c0866522	t	A sober Irishman.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
e259e184-dfd6-46f2-8d89-9bf4362f0007	t	A positive male role model.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
00308dd2-c9df-455e-b589-47519360bbde	t	A nice little drone strike	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
0ed6caa7-1118-4fa6-97d8-2941d667f6b8	t	A madman who lives in a policebox and kidnaps women.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
4c0d384f-5281-4654-bef1-1096d82b3bc7	t	A mad, bad duck in a petting zoo.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1fc7a2b5-d547-4cd4-a256-edf591f9e422	t	A gingerbread man living in a home made of his own flesh.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
06651ff4-5a9a-439c-beca-015b3feb4890	t	A far, far away place.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
72be542d-b7bb-42b4-97c1-ec9d8505efbc	t	A Chelsea smile.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
998be74f-d1f8-4963-9a3d-36e4b92cd7e2	t	a bitch slap	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
d82b1d4e-713a-434d-b0be-3ca81e4f7a26	t	41 million Americans living in poverty.	\N	df838539-3ce7-46c9-8a90-d61a2cd1f336
48f30d46-0074-4af8-8656-25bcf9b0ee04	f	With every year that passes, I find it harder and harder to be _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
9d014770-ffea-4a84-96fb-7a55d4c2eab6	f	When you go to the polls on Tuesday, remember:  a vote for me is a vote for _.	1	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
268b48d8-1fa6-4643-b9e8-7b63449b37ed	f	What made me this way?	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
13149dc6-f45a-4007-be0b-fe928eff8dda	f	To protect the integrity of our democracy, voting booths in 2020 will be monitored by _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e3ebf41e-92c4-4669-bc1a-f2942d750b5b	f	The Blues have as much chance of winning as _ has at getting laid.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
9d5a9ea9-0145-4d3c-93f2-8f1bef2ff5d1	f	My love for you is like _: peaceful and deep.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
49b49aaa-0202-4970-991a-c342d8172694	f	My heart skipped a beat when he took my hand, leaned in close, and whispered "_."	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
416b377a-fbfc-4f58-b35f-379b570add5f	f	Money from state lotteries goes to _ to buy _.	2	b6be5972-5680-4e7d-8142-dc1ab0b462f7
b9ccb72b-1834-459e-8e79-48da11db0475	f	Loyalty, Duty, Respect, Selfless, Service, Honor, Integrity, Personal Courage, and _: the newest Army Value.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
a8907b28-01f9-463d-b71c-02523cc9ed1e	f	Little Boy Blue go blow your _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
d3daff9a-d5b9-4702-9928-add3d48167bd	f	In the UK it's now socially acceptable to have _ in public	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
7acc0dbd-db02-4918-a97a-a0dfd05d8bf3	f	I'm sorry, sir, but your insurance plan doesn't cover injuries caused by _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
622a24d4-c2ed-4eef-8810-72e0538b510b	f	Hey Chardonnay, wanna see _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
68450303-d4d9-4c66-8b08-e93a8ad9a48c	f	Having sex with Hillary is like having sex with _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
417128b5-ec2a-4999-9ccd-22113c4f1e46	f	Find a _ and pick it up, and all the day you'll have good luck.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
94b224cd-a5f2-405b-939a-8c5ade2524d6	f	During his childhood, Salvador Dali produced hundreds of paintings of _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
9a1d46b7-62ec-4f23-817c-c5f400f4fa5b	f	Calm down, dear, it's only _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
358b60b5-bc3c-4c0a-b222-9bb29a340ec2	f	As part of its hazing process, the frat forced its recruits to try _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
326f1079-e23a-4612-9f4a-a4b07bc520cc	f	As part of his daily regimen, Anderson Cooper sets aside 15 minutes for _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
f81db5b6-242c-4edc-b364-273d17b43ba1	f	And what do we say to the God of Death?	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
470d430b-7310-48c9-8aa2-8c661d72edad	f	after my grandma passed gas, she learned over to my grandpa and said _	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3cc6b7fa-b0ac-443e-9114-a98fbe9890fe	f	A superior officer approaches. You salute and say _, and they respond with _.	2	b6be5972-5680-4e7d-8142-dc1ab0b462f7
995b4c82-6ac4-408d-997f-9345a31b757a	f	_. Betcha can't have just one!	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
2d73fbd7-7349-4beb-9bdc-8d2dab3eca32	f	_: I volunteer as tribute!	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
897a165c-0cf3-4042-96d5-f94922894f32	t	Warm, velvety muppet sex.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
dfa37670-7e5e-42e2-856d-03cd866076aa	t	Vomiting mid-blowjob.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
6f2ba7e0-8115-4b1f-9ee3-f7db0678df52	t	Vietnam flashbacks.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
180ef79a-eece-4a30-bc05-486a48db62e4	t	Unlimited soup, salad, and breadsticks.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
1fc67193-8465-42db-a96e-9b7ce5cc7717	t	Three months in the hole.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e7af4bf3-cb14-4368-8d65-588da8792233	t	The way white people is.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
ecf52534-aaff-4db4-a50d-d5563d042f38	t	The thin veneer of situational causality that underlies porn.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3e75d8b1-7533-4542-97d3-5864f56926eb	t	The systematic destruction of an entire people and their way of life.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
197fc3c0-42a3-4087-b208-71cfffb4b659	t	The Quesadilla Explosion Salad™ from Chili's.®	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3f52d454-1fca-4f8f-bf5c-62fcb68191bc	t	The primal, ball-slapping sex your parents are having right now.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
42a9e19d-2b26-4454-ac3a-40100743d827	t	The moist, demanding chasm of his mouth.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
0b79d282-b00a-4975-b7e1-c432d5e25117	t	The Land of Chocolate.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
583f1221-ab91-415c-a2cc-d72841b21812	t	The Harlem Globetrotters.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
527ab513-c141-4a48-8800-c9ee5e533106	t	The entire Internet.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
c3b8ce11-493a-48f9-a813-403bb1bd0ca0	t	That ass.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
1e33f0ab-e2ba-438b-9af8-825dc3730853	t	Spending lots of money.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
793ae4a8-c7af-4755-9612-76341a6d3d69	t	Some kind of bird-man.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
c3b97803-7cf4-4967-a5c8-654467964898	t	Some douche with an acoustic guitar.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
71a928bd-53ff-467b-9d8c-dd3e38a061dc	t	Sneezing, farting, and cumming at the same time.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
c7171027-c873-49ad-8bd1-0b0843bed801	t	Slapping a racist old lady.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
37fdaf7b-7b3d-4368-9062-c5ab3891dd1d	t	Shutting the fuck up.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
f7ab0291-ef1f-4fed-b9de-f2ca4a6569d7	t	Self-flagellation.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e2483f07-a3b8-46d1-8ccc-6ea1a573e96c	t	Screaming like a maniac.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
80b2d3b8-c1c0-48c5-a2e3-ecef73b17848	t	Samuel L. Jackson.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
d538d098-69bf-428d-95da-a868a75c7e0d	t	Running naked through a mall, pissing and shitting everywhere.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
5dc5ef86-d629-4c34-9cb8-5d1be13666c4	t	Roland the Farter, flatulist to the king.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
2277d95c-f320-4f66-9d31-aef5c0b163cd	t	Reverse cowgirl.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
a69641c1-9425-49d5-8639-9e6c8ead3b88	t	Racial profiling.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
fe85e843-b190-434f-93c3-5e5a02c12d85	t	Putting an entire peanut butter and jelly sandwich into the VCR.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
b780990b-c29e-47ca-8d4c-f3d2a541c15e	t	Nothing.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
2c676ce7-a7d8-48d5-88fd-e9d397fe80e8	t	Not having sex.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
f5eba1e8-6e83-4609-a8c5-10189aaaeba1	t	Not contributing to society in any meaningful way.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
a67ca906-3c25-4cbd-8907-0a14655b2bf5	t	My manservant, Claude.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
1e0ee4b0-7310-4151-a89f-03904e08659d	t	Mufasa's death scene.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
8f447420-9ac7-443e-9d9f-1ba4d250aa56	t	Letting everyone down.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
cf2cac57-16d5-4f4c-94b6-7523a6aca9c8	t	Jumping out at people.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3267a203-c66b-4245-9c7b-dbc87beba933	t	Indescribable loneliness.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
77cff861-63ee-4407-8b16-217fd1039f02	t	Having shotguns for legs.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
b2592c0c-49c5-482d-a446-173262e99591	t	Having sex on top of a pizza.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
4eb9c4b5-08f8-4245-9c58-7fd7888386d1	t	Going around punching people.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
66478faf-a95f-400f-8991-e1dd9a2b49c9	t	Girls that always be textin'.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
10b7337a-4086-43e6-8376-66f870b71793	t	Getting your dick stuck in a Chinese finger trap with another dick.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
781d50f8-33df-4cd6-8cfe-f485326edea7	t	Gay aliens.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
f8190814-54d2-4de4-a2d1-58612ee9fabe	t	Flying robots that kill people.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
7aa7a8bb-bcab-40ef-ac33-dcf381973b63	t	Fisting.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
10b3e458-583a-461d-8427-0735d3fba51c	t	Filling every orifice with butterscotch pudding.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
fbccf38d-1c46-4941-82b4-4d43c04de58e	t	Eating Tom Selleck's mustache to gain his powers.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
52eae8f0-2dc8-4449-afac-001bee719370	t	Dying alone and in pain.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
599971ae-a6de-49e2-aa9f-9c9615111063	t	Drinking ten 5-hour ENERGYs® to get fifty continuous hours of energy.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
ca2aa8f3-a022-4531-90d1-ba2eb9cd9de7	t	Disco fever.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3bda8291-b03d-499e-98a7-96ba88e7f97d	t	Demonic possession.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
8df674a5-4cd3-4826-8698-39ddfbd9f4cf	t	Crying into the pages of Sylvia Plath.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
351ea645-047d-4b2f-b30d-0719cb510214	t	Cock.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
ed43bd22-a54e-4a68-8f5b-61a177c64786	t	Chugging a lava lamp.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
499b1577-80dc-4a55-9e25-66bb16385cac	t	Buying the right pants to be cool.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
d29123da-5caf-4339-b774-45e6468d1760	t	Blowing some dudes in an alley.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
71a86d2e-8996-4776-a7e1-3d1a4d2b89aa	t	Blood farts.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
0357c7e4-fdf1-4019-837b-e684ee92e0ab	t	Bill Clinton, naked on a bearskin rug with a saxophone.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
7a7eef85-c8d1-4122-b3eb-228dcaefbb95	t	An unstoppable wave of fire ants.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
f52dfdcb-a2d1-4363-acdf-b1d80b75d20c	t	An ass disaster.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
ffc5230f-428e-44c6-aead-26493548652d	t	An all-midget production of Shakespeare's Richard III.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
ac7d9313-521b-4466-b768-9650454588c0	t	All my friends dying.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
7ecd79e6-2e87-4be7-b306-422805f565d6	t	Actually getting shot, for real.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
295af52c-0af2-4221-9bc4-f99fdb26795a	t	A vagina that leads to another dimension.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e6dd1959-961f-4f10-b635-6d0856f054e6	t	A surprising amount of hair.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
a28f21a4-ac89-4bb6-99a7-56f2c35e1794	t	A spontaneous conga line.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
87cf3cbc-8c26-4b71-98d7-1fabcf22dc51	t	A PowerPoint presentation.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
02bcac9e-538d-451d-9724-e2d9aa73d7cc	t	A lamprey swimming up the toilet and latching onto your taint.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
b661094c-2805-4af0-91f8-0c00a1d5a4ee	t	A Japanese toaster you can fuck.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
5607c504-a116-4745-8731-883b2984a500	t	A greased-up Matthew McConaughey.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e981af08-cfad-41cb-8d84-23bed3262bd7	t	A cop who is also a dog.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
3c279291-91c2-4c19-810f-aeb8e1311932	t	A cat video so cute that your eyes roll back and your spine slides out of your anus.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
908b9897-b465-45b9-94c2-1ce0662eaf34	t	A botched circumcision.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
c85072b2-f837-414a-8d65-6b72aa2bcd1d	t	A boo-boo.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
defd53ff-7109-46f0-80e5-f6cd39c2bde5	t	A black male in his early 20s, last seen wearing a hoodie.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e1b04b1e-cf13-4863-8515-5bfffd9738e9	f	You won't find this in textbooks, but _ is the real reason the US entered World War II.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
963ecce1-1586-4106-8c10-e67584fa2bfc	f	You like my cupcakes? I made them myself. The secret ingredient is _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
7906722e-6a87-4ea8-8c86-9a5f9f18f361	f	You are under arrest for _, again!	1	9af9e957-2534-4e56-a1ab-bc885448c05d
ab52c7c7-a865-40a3-9045-bfd7f38ce914	f	YAAAAAAS! You are serving me _ realness!	1	8d8215b4-ebc5-4665-96a5-40cad1637426
17efcf7f-38f0-4d91-b16c-120b0aa08fdb	f	Why would I want _ stuffed down my throat?	1	9af9e957-2534-4e56-a1ab-bc885448c05d
bf2d1381-d453-4957-97bb-6f1383ee7e4a	f	When I was a little girl I always wanted to _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
5d06a2af-8b2b-45fe-97af-b89bc1295834	f	Tonight's Final Jeopardy category is _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
b95fbc30-2054-47bc-9bb4-99499b0ccee0	f	To boost morale after Hurricane Harvey, President Trump gave a guy in a pick-up truck _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
e94e4e23-3a5c-4a4f-8812-5502a35bd517	f	This is an absolutely hilarious video. Please share it! #_	1	9af9e957-2534-4e56-a1ab-bc885448c05d
06b21fb4-4c0e-4c10-ac8b-d3bd248fbf58	f	The six things I could never do without: oxygen, facebook, chocolate, netflix, friends, and _ LOL!	1	9af9e957-2534-4e56-a1ab-bc885448c05d
29272a22-3ef2-466a-9e5b-5bb652b7c878	f	Puff the Magic _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
e0a1a278-c7f2-4ae1-a594-21f0990b165f	f	My grandkids need _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
d3c592c7-6369-478d-a3c2-0263ee0af014	f	Listen son, your mother and I are getting a divorce, and it's because of _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
fdc7f082-1dca-425c-b41e-7995359407ab	f	Jellicle Cats come out tonight, Jellicle Cats come one, come all, the time for _ is now, Jellicles come to the Jellicle Ball.	1	4ac14a35-038f-4a9e-b26a-876e50aebbcb
f8804556-06a4-4e8f-8e95-e41356071575	f	If you had to pay me for sex, what would you do first? _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
fbc96405-afb4-4f9b-aa9d-14495131e774	f	I'm sorry, Professor, but I couldn't complete my homework because of _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
db4b5ba4-de13-4977-a110-60929f8e219c	t	Pinkie Pie.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d98435d1-f6ed-4425-b2a4-94de9dfab108	f	I'm never going to be rich and famous because I'm too busy _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
dffad90b-b98a-4fd3-aa65-70bbb46d23eb	f	I would be on board with Scientology if it weren't for _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
d74302e1-85e6-490f-9598-0c4394c648ff	f	I went to the desert and ate of the peyote cactus. Turns out my spirit animal is _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
d6c7b60f-c269-4c80-bc37-316095bc6372	f	I have an agreement with my significant other, if we meet _, I am allowed to have sex with them with no consequences.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
ac4edaab-ad77-4b12-81de-49e0fcec6280	f	Everyday has 86,400 seconds. And I'm always a second away from _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
f7da6ecc-fbad-48b3-8960-65383532f53c	f	Don't worry, _ is not as hard as it seems.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
174efd6b-2eaa-4dfa-aabe-75704ce93406	f	Come to Toronto for the _, stay for the _	2	9af9e957-2534-4e56-a1ab-bc885448c05d
213af1cc-1a10-4733-bf83-3deade0e7133	f	Behind every successful man is _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
6c2ce876-6fb6-4d36-b198-f614658187e4	f	Angelina Jolie will now be special envoy for _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
01965a11-166f-4a9e-8b4b-dadd8fc27a6b	f	"This workplace has been 0 days without _."	1	9af9e957-2534-4e56-a1ab-bc885448c05d
448aead8-9417-4829-8294-d7984a145831	t	Whatever, who even gives a shit.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
0db8df96-2fc8-4146-89ee-bd1a24f95053	t	Walking into a room and forgetting what you were looking for.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
60afb103-423c-4bf7-9435-c1d6c357ce32	t	Unsolicited anal pleasure.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
2b072fb4-d0c3-48b0-9b36-23bcd1803e04	t	Two words: on sale	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
82c347ba-73f5-44ce-bd3e-280fe7bc3de9	t	turning tricks	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
58a703a0-3edc-442f-b848-193c919800d4	t	Treating a Chihuahua like a small child and putting it in a stroller.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
3e789a97-9c5c-4ddc-9bc3-4a4921b059d7	t	Totaling a manual-transmission car two seconds after trying to drive it.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
ab8385a4-820b-4940-b15d-c7c111542b21	t	Throwing the baby out with the bathwater.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
b703d6a7-f8f5-4861-a1ef-cc1ef65c99de	t	The sweet sound of snot right before a cup of hot chocolate.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
3eb6cabf-557c-4bcb-ac77-0073e7b85620	t	The Pre-Nup of Allegiance.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
dba6bee3-5b42-4974-8fa8-0ec2ce1ee690	t	The Man	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
1a7c4391-d300-423e-8157-cbf0e8535a49	t	The Hawaiian goddess Kapo and her flying detachable vagina.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
c6438b6e-6f2f-4f02-aacb-2761d5a6d6aa	t	the Elder Wand	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
2680c35e-1d1c-4cac-9790-50cf3116ab01	t	The Denver Satanic Gardens.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
76dbb7ba-a8fc-4d53-88df-f807001b02ed	t	The color guard team captain	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
54a19b07-903f-410b-999c-0c7d31acbeec	t	The amount of medals I have.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
ac48f46e-6f31-40f4-a805-115db5763634	t	The all-seeing eye	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e0dbc64f-7382-4a6a-baf7-2cd91c804a93	t	Texting "lol" to express self-consciousness.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
a521ad7c-697f-43ed-b948-408dade9c70a	t	Teaching a politician how to tell the truth.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
328f42d0-e24f-47de-a30b-5e79553d77db	t	Sudden Poop Explosion Disease.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
45ce7583-8815-4d8d-86a2-c2cb4959afc3	t	Sucking all the oil out of the planet and fucking off to Mars.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
b9c339c5-c24a-441e-970a-f8eeee87ca10	t	Such a nasty group of people.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
ce57c526-0485-4bbb-9fcf-dc6facb8e55d	t	Shitting an adult diaper.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
deef3cab-f6b4-47e2-9023-b813b886057b	t	Shapeshifters.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
d07e700c-533d-467b-b0eb-7c64bcab40fa	t	Setting someone on fire at Burning Man.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
d82a67f7-6d1d-44ea-81d5-8de6e7b8f06e	t	Robots with human faces	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
fa45a487-c8c1-48f9-85fc-ed80de3efc89	t	Ripping fat vapes.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
09298c61-25d1-4643-8ead-3449b3c4236c	t	Reading the entire Harry Potter series in one week	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
3e1cf959-b670-45d9-9737-9a577188ffd2	t	Raccoon: The other, other dark meat	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
db3a567c-a27a-4c14-bdbe-fd280e8a7861	t	Put breastmilk on it.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
da460fa2-245a-4c2a-81e7-de0be8830575	t	Peeing into everyone's mouth.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
3bd3b506-74a6-4043-a48b-f786deb5603d	t	Owning and operating a Chili's franchise.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
5d46f917-32f0-4651-aca5-a955213f0209	t	our o'erhasty marriage	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
7c132f7b-410d-4e1a-9e86-ac025c96b77b	t	One weird lookin' toe.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
27f7bb48-14e8-404c-a409-daf438734a20	t	No more beersies	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
0ab1034e-b942-4b5d-ba8b-b6bc60729a11	t	Never nude orgies.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
20c1098b-084d-4537-9330-b78ba2d72758	t	MORTAL KOMBAT.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
7aa16e4c-a753-4af2-a34d-c7dd6765f1b2	t	measureless sobbing	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
f38c9842-2f7c-4c22-a11c-0bb6d7cbf395	t	likes to my facebook post	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
2b8225be-48cd-49f0-8ef4-90be25e34850	t	Kamikaze pilots.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
5384dec5-e591-49d0-9a6d-0112f5ebe7cd	t	Important votes from Down Syndrome community.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
5e704ce5-ef9b-48f7-b18b-9dbfec791e2c	t	Impeaching "The View."	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
4f7a213a-d0ed-403a-b41c-9970224bb485	t	Gymnastic leotards that slide up your butt.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
5ea323d1-bc03-422a-9691-b884883830e3	t	Growing up in Catholic school and not being better for it.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
422768a3-5d2c-4246-a3b9-bb91ffcdecca	t	Getting skin cancer after 5 minutes at Takapuna beach	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
a662c25f-d006-46a5-a914-b263e791ad05	t	Getting all the good dick.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
1f1dcc94-06c5-46eb-a554-223e65437166	t	Generation Xers	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e08dc928-db7a-4d22-92b3-4e8185d4d1af	t	Forgetting grandma's first name.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
c4def547-972f-4491-ac9e-3e9be9059f50	t	Filling every orifice with butterscotch pudding.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
fbda133c-17ae-4120-9446-2d9b60bb7d24	t	every robust healthy boy	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
746a2a36-1571-4de2-b983-0c524d6f19e6	t	Ejaculating into ham slices and sticking them all over a woman	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
5cefc262-362e-4713-913d-1d80948a2041	t	Eating Tom Selleck's mustache to gain his powers.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
2e96a057-c86f-4a9e-ad04-f9e34220a947	t	Cute cat videos	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e3e73da7-7de8-441c-bd54-435a02f33abf	t	Crying babies.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
164e4883-8c3f-4548-9caa-1dfc2fb8ade5	t	Crippling status anxiety.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
6aff17fb-e20f-4f80-bce6-c5948ba7599a	t	Cooties	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
41323716-410b-44c1-91c8-fc72a427998a	t	Cancerous USAF leadership.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e98f0b3c-5e7e-4424-904f-03c00df3af05	t	Bullfrogs	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
7113b92c-df76-4c42-a302-84090428f576	t	Breastfeeding a ten-year-old.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
a4780d3d-cb05-4fd5-8902-3b83dc006669	t	Below the Waist	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
c250d426-0e5e-4ea2-9a9a-996a1832c6ec	t	Being pregnant with dolphin babies.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
bf14373a-3347-4062-97c1-9240a72912f4	t	Being judged not by the color of your skin, but by the content of your character.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
6f38e74b-5cb1-45a4-81b7-171c02e1187e	t	Being a total Miranda.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
ad4d7b8a-09d3-484f-998b-e65c55eaef2a	t	Bathing naked in a moonlit grove.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
16411114-7cf0-4bca-b502-a52af61744e5	t	An overworked Chippendales® dancer.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
59497147-2ead-4ce9-af40-9591df2216be	t	An orcgasm.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
ad941ed1-00e3-422d-b758-9d3ba573e4f9	t	A whole new kind of "play date"	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
8a0b5142-db83-4565-aebd-19f974cc4c1a	t	A turkey baster	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
fda7c5d2-c839-457e-b441-1ac76a026fb1	t	A selfie	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e70882be-4110-4ad0-871f-c40ec50f5f40	t	A post-deployment RED HORSE troop fucking everyone and everything in their path.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
8dc97753-b1e0-4102-bea4-2e25e128bcb5	t	A plan to kill everyone you meet.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
58f430ac-e8e3-4f71-b830-c771e15b2884	t	A phantasmagoria of anal delights.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
d1023fe3-a047-4779-bda0-307af4d5ff61	t	a man who isn't afraid to talk about his feelings	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
da683d12-788a-418a-9128-0c1561bafec8	t	A constant, deafening queef.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
c7b0faa2-ac42-473e-bedc-1373464cecb9	t	A button that when you press it, there's jazz.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
27ddf3b1-884c-4405-91ba-7484780a2e4e	t	A bowl of gourds.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
a96c0616-fbe8-400a-986c-ae6225d00757	t	A bathroom only for poop.	\N	374a0879-27bd-462b-a48b-ce29ca840be6
887471a9-e466-4e25-a191-2598e25ca7d1	f	Your persistence is admirable, my dear Prince. But you cannot win my heart with _ alone.	1	e51e38df-8b7a-4944-bad3-12275533aebc
b24ddda4-de77-4a21-afe5-cc5ac436bef9	f	You haven't truly lived until you've experienced _ and _ at the same time.	2	e51e38df-8b7a-4944-bad3-12275533aebc
ca9f3971-1c1e-4545-9157-36945fd05c33	f	What's harshing my mellow, man?	1	e51e38df-8b7a-4944-bad3-12275533aebc
43c234ad-4000-490d-8bd2-af15c010ec41	f	Tonight on 20/20: What you don't know about _ could kill you.	1	e51e38df-8b7a-4944-bad3-12275533aebc
2db2e5f9-2075-41bf-8fa6-b98eb487e0e2	f	This month's Cosmo: "Spice up your sex life by bringing _ into the bedroom."	1	e51e38df-8b7a-4944-bad3-12275533aebc
e5ffc42d-fff1-41c2-89bd-98f1d898e8c1	f	This is your captain speaking. Fasten your seatbelts and prepare for _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
454a33d9-6260-49d5-8cd0-87c026bf3948	f	The votes are in, and the new high school mascot is _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
b8d8d1c2-75e6-4484-ba0c-297bcd417823	f	The healing process began when I joined a support group for victims of _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
cd8dd632-4e50-4403-a566-d3fba006c77d	f	The Five Stages of Grief: denial, anger, bargaining, _, acceptance.	1	e51e38df-8b7a-4944-bad3-12275533aebc
b6cb12a6-c5d7-44b1-9bf7-9cdfa61ccf50	f	Only two things in life are certain: death and _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
a1ae073d-fa57-454c-9bfe-6430843dee50	f	Next time on Dr. Phil: How to talk to your child about _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
44765443-d2e4-4b75-886d-e6e307df14ad	f	My new favorite porn star is Joey "_" McGee.	1	e51e38df-8b7a-4944-bad3-12275533aebc
a40d229f-ddc1-49d1-8bda-5a67ec8b1d31	f	My mom freaked out when she looked at my browser history and found _.com/_.	2	e51e38df-8b7a-4944-bad3-12275533aebc
57dcac0e-8cd6-4504-9a85-d0565febf0b0	f	My country, 'tis of thee, sweet land of _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
93d6b1e0-9887-4788-a920-ba1f88e1110f	f	Members of New York's social elite are paying thousands of dollars just to experience _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
6ff44c99-f577-436c-a955-2de4e69f40a8	f	Little Miss Muffet Sat on a tuffet, Eating her curds and _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
2601ccf1-af1f-4914-887d-290afa110e43	f	In his newest and most difficult stunt, David Blaine must escape from _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
656619da-3b25-4fb3-afbe-6dc5407c38f3	f	If God didn't want us to enjoy _, he wouldn't have given us _.	2	e51e38df-8b7a-4944-bad3-12275533aebc
9c085701-1961-46c7-a46c-b484eeaa48b3	f	I went from _ to _, all thanks to _.	3	e51e38df-8b7a-4944-bad3-12275533aebc
56bf67a0-081d-44f7-a512-3443e4d7d7f6	f	I spent my whole life working toward _, only to have it ruined by _.	2	e51e38df-8b7a-4944-bad3-12275533aebc
111691b1-5b3b-4d4f-8833-8fde30a60f9b	f	Everyone down on the ground! We don't want to hurt anyone. We're just here for _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
eb4ed38b-9ff8-44de-a02b-08b02077ed0f	f	During his midlife crisis, my dad got really into _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
2956968a-a1c7-40f4-bd7c-848e25de7b40	f	Charades was ruined for me forever when my mom had to act out _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
f3170e01-0e8c-445c-a488-6054439333c4	f	Before I run for president, I must destroy all evidence of my involvement with _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
62912ef5-8fd5-49d1-b0dc-68a29266bd80	f	Before _, all we had was _.	2	e51e38df-8b7a-4944-bad3-12275533aebc
135d749f-c80d-4c01-92b6-f17b82e30f63	f	After months of debate, the Occupy Wall Street General Assembly could only agree on "More _!"	1	e51e38df-8b7a-4944-bad3-12275533aebc
b342b65e-30c9-43b3-93d4-6d76d6fda02c	f	A remarkable new study has shown that chimps have evolved their own primitive version of _.	1	e51e38df-8b7a-4944-bad3-12275533aebc
198f59d1-8aa2-4e8b-bc3d-2cbce2c5abf6	f	_ would be woefully incomplete without _.	2	e51e38df-8b7a-4944-bad3-12275533aebc
8b12bb70-c232-48e2-87ad-a2783e957e98	t	Whipping a disobedient slave.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
dd3f49b3-0d06-4dc9-86b7-fe5a5e93e53d	t	Whining like a little bitch.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
6ecec81f-26e3-480a-9aeb-f59aff10a574	t	Wearing an octopus for a hat.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
4c6808ec-afe0-45ce-9497-d1ce0da8042f	t	Weapons-grade plutonium.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
e8f5fb4f-50ab-4998-8ff0-f6f3a23e7bca	t	Upgrading homeless people to mobile hotspots.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
de18f290-18ff-4d9a-9539-c3abd778e032	t	Tongue.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
b275490e-d4dc-4914-bd81-1e43b06b8af9	t	Tiny nipples.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
6111ed92-a3dc-4e98-ba2b-8b825958c88e	t	The new Radiohead album.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
7d0a6970-6d23-4e5a-abcd-c394f797b861	t	The mixing of the races.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
73d5459d-741f-4501-80af-f5913b94738e	t	The hose.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
2db488ca-980b-40a4-9ff0-dca065d6d71d	t	The grey nutrient broth that sustains Mitt Romney.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
7f645d53-071c-446a-beb6-81b4bdbb7384	t	The Google.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
bed9f453-497a-418a-8512-dce1bad685cc	t	The day the birds attacked.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
45146822-8645-4536-b804-7487db0b1217	t	The corporations.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
08edb925-b867-4c6b-a5fb-cb21766f1fbe	t	The black Power Ranger.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
63c5a2e0-7779-4644-b5e6-aff6f11b1179	t	Taking a man's eyes and balls out and putting his eyes where his balls go and then his balls in the eye holes.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
2e791a5a-f5df-444c-b7da-f3c73e0cd5c5	t	Swiftly achieving orgasm.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
8f494a7a-ba17-4108-8240-b259ebe763fb	t	Survivor's guilt.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a7c63b94-6166-4ea9-baf6-3bbbb86ba048	t	Subduing a grizzly bear and making her your wife.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
23c8d5f2-5189-4055-b40b-26813ab46bb1	t	Spring break!	\N	e51e38df-8b7a-4944-bad3-12275533aebc
53e37c30-abb1-4482-95a4-23f707d9f26b	t	Special musical guest, Cher.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
5ddc3e26-179d-4e4d-ad2c-bbdaff6e23aa	t	Some really fucked-up shit.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
92701a4d-3e85-4af9-b21d-d85125608b29	t	Scrotal frostbite.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
6ea0845a-4e47-44aa-b5b5-c7763b98dd7d	t	Rising from the grave.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a50d7eab-1234-485f-a21f-ebd8ee4ada94	t	Pumping out a baby every nine months.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
b0a4290a-5610-4bd6-af0e-73eaba04a320	t	Pretty Pretty Princess Dress-Up Board Game®.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a422756c-2068-47d8-9b3d-20ee116bf8c7	t	Power.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
3ae32305-5bfd-44e6-8f0e-68796a489d23	t	One Ring to rule them all.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
fd745aaa-a093-4598-b871-8596bb328e00	t	Oncoming traffic.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
fa3f4159-6882-4453-918d-fdd49afc5846	t	Nunchuck moves.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
f1903ae5-67da-47c0-9179-210316075450	t	My first kill.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
ac3eec05-1c99-4f36-bd2c-fd4653ab84c8	t	Mooing.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
2237bc68-1b8b-4a72-98b3-1c859e440afc	t	Mild autism.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
f418e1c4-8553-4367-b525-6bd73b45d20e	t	Me.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
62e43680-cb05-49b4-af6a-33dc4b8cfca7	t	Maximal insertion.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
1ddd379c-5da2-423a-95d5-0604ab8b0f41	t	Making a friend.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
50621027-ab54-47a8-8547-a972a6b16ea3	t	Loki, the trickster god.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
22e4f877-3dcc-499d-bdb3-9657fa7c680b	t	Living in a trashcan.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
86c74d4e-75c2-488e-baf1-dcd3a20faeef	t	Jeff Goldblum.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
59426e91-14bb-4072-8f30-eae36242cad4	t	Intimacy problems.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
f4b5eae6-bb81-48a0-9f96-c579a0390844	t	Hillary Clinton's death stare.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a9543f0a-7170-46ed-a2f6-73923c48b3d9	t	Hillary Clinton.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
ce9b5338-ff79-4f70-87b8-e45f9826778d	t	Graphic violence, adult language, and some sexual content.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
fa1bdfa5-d298-481e-aa0b-4e3abd097409	t	Grandpa's ashes.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
14418b08-2cf1-4362-9226-f7e0dba30ba8	t	Getting hilariously gang-banged by the Blue Man Group.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
44d9ac30-679e-4c52-9712-8b33d9671be5	t	Fuck Mountain.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
f4b64fb7-4568-42e5-b9c6-70ca4c3d6542	t	Finding Waldo.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
afc5c21f-9960-4459-8ed5-d4343a2981a2	t	Fetal alcohol syndrome.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
9559dd8f-7218-4315-a913-2b1b2d64ca72	t	Existing.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
9bc2fb21-237b-482b-83d2-9efdf57b3463	t	Double penetration.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
9b9d424f-eda4-41d1-8cf3-1a3f105e2f83	t	Dining with cardboard cutouts of the cast of "Friends."	\N	e51e38df-8b7a-4944-bad3-12275533aebc
063e622c-a8da-462a-a4ea-6f7f52449e3b	t	Dennis the Menace.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
0dcdfa32-7d90-4cb2-925c-8e288553fd21	t	Death by Steven Seagal.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
cbc49e16-939b-4725-8605-8c51d5eb2d2d	t	Daddy's belt.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
3fb47f35-54e9-4e2f-a317-a908bdec3cfa	t	Crushing Mr. Peanut's brittle body.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
6ebb8b60-58bf-49bf-a2e3-60faa8f4c58d	t	Crabapples all over the fucking sidewalk.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
20e47ce7-3ebf-4f1d-a911-658ddd7b06fc	t	Catastrophic urethral trauma.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
73ca08f6-4e44-4e49-a5ec-3a61c90a284a	t	Bullshit.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
e025adf5-400b-4e61-8062-49711394b250	t	Boris the Soviet Love Hammer.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
4fa9d447-733b-435d-a042-88c447dc035a	t	Being awesome at sex.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
52ca65eb-db4a-42de-be61-4d703de349e8	t	Beefin' over turf.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
b9bb43f3-2ccb-4ba3-9a3e-5d9859dcabc4	t	Basic human decency.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
1e8bbe0f-958e-4c76-9560-41b87b46bcb6	t	Another shot of morphine.	\N	a95919a6-97a3-40dc-84ba-702fed111361
f36b443e-70f6-4fa7-8c22-4beaf7f22f85	t	An unhinged ferris wheel rolling toward the sea.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
3f8e5a09-bbb3-47eb-9055-794c32c7e9c1	t	An ether-soaked rag.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
fd9f43f3-0fdb-4b54-9074-7bfae0e3ff21	t	An army of skeletons.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
3bab590c-fbcd-434d-99e4-e5f42d3bd84c	t	All of this blood.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
ca538ba6-78ad-49f0-b181-f37a3cca949b	t	A sweet spaceship.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
77f36e06-4a82-439e-b0ad-6d17b6781b86	t	A sweaty, panting leather daddy.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
be2b32d7-d0bd-48f0-ab16-4c2436908185	t	A squadron of moles wearing aviator goggles.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a33938a8-aedd-4597-8a4d-8d903f104dfd	t	A soulful rendition of "Ol' Man River."	\N	e51e38df-8b7a-4944-bad3-12275533aebc
ac4d83b0-c829-4477-a7e8-a6afd57a2594	t	A sofa that says "I have style, but I like to be comfortable."	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a242b432-1998-4be9-a938-349d19286eb3	t	A slightly shittier parallel universe.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a65be6a5-3358-41e8-9d8e-dfa4b870c2a4	t	My constituents.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
90976e37-1955-479c-a2b9-584478b02dac	t	A pinata full of scorpions.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a0a4e0d2-a528-42bb-afbe-cd12eec1207e	t	A man in yoga pants with a ponytail and feather earrings.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a238d1ea-fed3-4056-9e33-685d8e05ba80	t	A magic hippie love cloud.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
867109c4-83c6-40fd-95d1-b1959b7de10d	t	A fortuitous turnip harvest.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
62143519-0a6f-4725-a94d-739f7c9018da	t	A dollop of sour cream.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
a0a10cca-e24d-4d60-8428-25f15be0514b	t	A Burmese tiger pit.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
b9488dfc-a8e1-4090-b467-20421d55d6eb	t	A bigger, blacker dick.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
30fab3fc-b205-4ced-ab76-60f75de74cf9	t	A 55-gallon drum of lube.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
015bd4b0-e1a0-46c7-a985-0b8f10e5d839	f	Your security clearance has been suspended beause of your shameful past involving _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
eadec37f-d481-4fe3-aec5-07842b38a36a	f	You hear the craziest stuff in methadone clinic lineups, this morning I overheard "Insert Name" having a heated conversations about _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
b9883c1d-131d-4713-949a-91e848037ff5	f	With every year that passes, I find it harder and harder to be _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
4270ed8a-3aba-4b3d-98dc-2f7685e9a3d8	f	When you go to the polls on Tuesday, remember:  a vote for me is a vote for _.	1	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
a42abfc1-1082-4d7c-a5b8-0a980e9381f5	f	When i pooped, what came out?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a0516f89-6459-4a7d-87de-16ed66b5975d	f	When asked about the biggest threat facing the nation, 60% of Americans said _.	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
ac73894a-4436-4fd5-8ca6-521a9dc8bf6c	f	What's holding you back from achieving your dreams?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a3d78165-9149-439d-9dbe-f387f4f1ccf8	f	What made me this way?	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
4f997261-6a56-4bdd-9c78-2faba1e844a9	f	What has been seen cannot be unssen! I just witnessed _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
f784c12c-f62c-44a8-bfe6-2f1cb123406f	f	What came in the mail today?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
62ff243c-0392-4bb6-9190-8534aea67e38	f	Welcome to Senor Frog's! Would you like to try our signature cocktail, "_ on the Beach"?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
fd1c816c-44f9-4188-9c3c-01c3d9675cdf	f	Tonight on Police 10 7 we're chasing _, rumoured to be responsible for _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
f53101ed-ca54-4ab3-8cd9-e48536b470b5	f	To prepare for his upcoming role, Daniel Day-Lewis immersed himself in the world of _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
483096b4-8c31-46a7-a560-d46637b11fa0	f	This morning when you woke up next to me I thought _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
e694481d-a7af-4049-9202-a98d76d0bc57	f	This is your pilot speaking. Please prepare for _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
b98abf5c-cf63-48d0-99ca-f59ce7260b0a	f	The secret to getting your adopted African street dog back into the United States is _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
dddb1a5a-2dda-48c7-8ba7-3584d7734be1	f	The hills are alive with the sound of _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
f06bf66c-3777-4f85-93e2-cb1a935cb1e5	f	The Four Horsemen of the Apocalypse: Pestilence, War, Famine, and _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
11995834-ca7f-4317-a46f-665fdd27264a	f	The CIA reports that Russia is spending billions to influence _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
7aa4c881-2f74-4385-9912-9090eacbe6b1	f	The Blues have as much chance of winning as _ has at getting laid.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
724a08d4-050d-48b1-a725-94d529dfdb75	f	Science will never explain the origin of _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
c8efb855-d749-4e56-b480-cb2acb972c92	f	Only you can prevent _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
2952a43e-02f6-4dfb-8637-48c55f14c723	f	Next week on the Discovery Channel, one man must survive in the depths of the Amazon with only _ and his wits.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a2f139ea-eea2-4bbc-9dc7-793d3f8709cf	f	Next to ISIS, the biggest threat to global security is _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
82c8dd17-59c1-4b72-832e-7e14d17075f2	f	My porn-star name would be _; and I'm famous for _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
52e59727-6f14-4042-b4e0-97c0ecd35232	f	My new favorite sexual position is _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
d189c4a7-1e5b-4458-9b3d-85589a619023	f	My mom is so happy when I visit, but I'm only there to be _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
e15b7ca1-0f4e-48d7-8381-ab60b1f3db08	f	My life is ruled by a vicious cycle of _ and _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
2f8a0035-5489-4595-bd34-dcc4c8f121ff	f	My gym teacher got fired for adding _ to the obstacle course.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
99e25755-1311-4e28-accb-b4f2f4e174c2	f	My cousin got kicked out of the house after she brought home _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
803bd6fa-3627-4cc1-8c4c-3f6cc51e90d0	f	Money from state lotteries goes to _ to buy _.	2	b6be5972-5680-4e7d-8142-dc1ab0b462f7
7d5dd0b9-593c-4f8c-a983-7ba22a3ad38c	f	Michelangelo's newest painting is titled _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
6a9e8db5-081d-4d55-afd3-29390d404ba2	f	Men are from Mars.  Woman are from _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
b4a4322e-8fcc-4403-9606-e2fb9e9789b6	f	Loyalty, Duty, Respect, Selfless, Service, Honor, Integrity, Personal Courage, and _: the newest Army Value.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
bdedfa7e-5609-41a9-bf6a-b0602c0adef6	f	Live from Universal Studios, it's America's favorite game show! "_ or _?"	2	cf526624-d9a0-4f89-84ad-88c963536dd4
6bc5961e-fb93-434e-85bd-62c2eb4dbd3f	f	Listen, son. If you want to get involved with _, I won't stop you. Just steer clear of _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
6f1df730-94e3-4a62-81c5-e875aecdf9c3	f	Legend has it Prince wouldn't perform without _ in his dressing room.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a1839acc-4f86-4e7f-bc78-d4df3d7b4ec8	f	In the UK it's now socially acceptable to have _ in public	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
7f4b545b-42b3-4ca2-ac10-4d39098a3d84	f	In some cultures, _ is considered a good omen.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
3f7095fc-1de3-4249-82a7-bcb447170c1a	f	In its new tourism campaign, Soweto proudly proclaims that it has finally eliminated _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
3e5120f7-5699-41d3-b189-93e196c48f61	f	In his next movie, Rob Schneider is _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
b586a5b9-27fc-40f0-b3b1-43152f42d57d	f	In his new summer comedy, Rob Schneider is _ trapped in the body of _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
72d4dc20-7daf-48bb-b91b-fb556db79148	f	in a public restroom, someone in the stall next to you grunts _	1	cf526624-d9a0-4f89-84ad-88c963536dd4
9a83c23a-47a8-4fab-ab19-279bc486bb5d	f	If God offered me the afterlife of my choice, I would wrap myself in razor wire and _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
6cd85503-9005-4c2c-9dc1-2eac3ed2a2e1	f	I'm sorry, sir, but your insurance plan doesn't cover injuries caused by _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
63add59e-068a-4a3e-8a3e-4f8d8fd547e2	f	I went in for a loan and the banker told me _	1	cf526624-d9a0-4f89-84ad-88c963536dd4
add50920-fe24-4b72-87ba-07eaccdcee16	f	I spy with my little eye _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
66d760cc-4063-4855-848b-b9e9bfc4c9df	f	I love being a mom. But it's tough when my kids come home filthy from _. That's why there's Tide®.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a0b0b3ae-8756-4c11-a8c1-7570eae4aa75	f	I left Hamilton because I heard about _'s obsession with _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
e43d1497-b298-4c5f-bd72-46aefb136f52	f	Hey baby, come back to my place and I'll show you _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
73016d6c-1162-4611-9cec-ea7543da7256	f	Having sex with Hillary is like having sex with _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
42829a8e-4734-4504-97a3-d7a0451bc246	f	Future Historians will agree that _ marked the beginning of America's decline.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a0213549-2753-4291-adb5-783acc180c3f	f	Find a _ and pick it up, and all the day you'll have good luck.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
b45563c4-7cb1-40a1-944a-1740f41c654a	f	During his short-lived boxing career, the Messiah fought under the name Jesus "_" Christ.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
50d16413-c5fc-4bb2-9d74-ff04c4d5122a	f	During high school I never really fit in until I found _ club.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
1ce1521a-e0cb-4f3f-86b3-d77335082ff1	f	Dear Substitute Teacher, could you please stop _?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
d188c3b3-45ce-4adc-ac70-55bed6203d67	f	Charlie and the chocolate _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
c3c19f69-10e2-4956-a91d-e7ef3e0b7072	f	Call the law offices of Goldstein & Goldstein, because no one should have to tolerate _ in the workplace.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
cf382584-cd5a-456a-8649-31b3dfad6468	f	Before kids, I never thought about _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a35b1229-b96a-4b33-adf3-85a89ae2c6e7	f	Before 1 year of age, the baby should be careful to avoid _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
b1ee48f8-2cce-4fc9-a912-00672c4bae2a	f	Awww, sick! I just say this skater do a 720 kickflip into _!	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a76f3814-d7de-40f0-82e3-8de9af3e1d2d	f	As part of his daily regimen, Anderson Cooper sets aside 15 minutes for _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
fa62a6ab-f2f3-4a99-be3d-bdd472273156	f	As part of his contract, Prince won't perform without _ in his dressing room.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
8efa4668-6461-4b7e-94fd-d43693c89899	f	And what do we say to the God of Death?	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
655811be-9a31-4c80-9129-93011fdaee27	f	And I would have gotten away with it, too, if it hadn't been for _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
b595bb7a-884a-417e-82f8-0e3365a74c25	f	after my grandma passed gas, she learned over to my grandpa and said _	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
b74300d3-6721-4e51-ade1-3c8cfddc614a	f	A superior officer approaches. You salute and say _, and they respond with _.	2	b6be5972-5680-4e7d-8142-dc1ab0b462f7
316c69d9-cc03-484e-ba2e-4af38b162441	f	A romantic candlelit dinner would be incomplete without _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
fc3dd208-6bf4-49c1-82e7-1c7aefc0e41d	f	_. Betcha can't have just one!	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
1427f263-a9a6-4ad4-922f-fd7e3f5cf299	f	_: Hours of fun. Easy to use. Perfect for _!	2	cf526624-d9a0-4f89-84ad-88c963536dd4
a108a971-c975-4322-a67e-4d15fdb23b4d	t	Sanctimommies	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
101247df-e418-4fb3-81c0-bdfeba414bab	f	_ would only happen in my worst nightmares.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
321378ff-d55c-458e-bfe7-f3e21de651cc	t	Zig-zaggedy shrapnel scars.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4a8db156-6a25-40f1-92e9-01f9cc6d67b3	t	Words.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
24ae1b88-4b69-4995-902b-c8cebe9e0abf	t	White privilege.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
88c827c5-46f7-441d-9b06-56af44fca61d	t	Whipping it out, with force.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9f7cedda-40c2-4a81-bd34-e16da89598d6	t	Whining until you get your way.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
fccf6895-61fe-44e8-9b62-791e1f645864	t	Wet butt.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
feabb83c-c7c3-4f2c-a26a-669aba5d6b2e	t	Wearing Blues under your Klan robe.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e7c24fa6-370a-454c-8d68-a8dd2c9c6da0	t	Wear lip gloss on my anus.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
090dae46-af65-4d13-9ee3-3d4b530c785c	t	Warmongering.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
79a24727-d288-4369-9fa6-993c18241b28	t	Walking in on your mom dominating your dad.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
14ac4e14-6577-41e9-b47a-7797c1f6909f	t	Vomiting seafood and bleeding anally.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
deca469c-fe8b-49bc-8269-2b52db6a8220	t	Vietnamese mercenaries hunting John Kerry.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4f622c72-b102-4ad5-b0f7-064ed987b79f	t	Velociraptor attacks	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
24f960a2-35e3-49e2-9e6e-2942dfd856b4	t	Unlocking a new sex position.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
05748f32-2db1-4420-808c-1771e0ef49d3	t	Tripping elderly roller skaters.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b752bd27-67ab-492c-a84a-e7059b292c9a	t	Tongueing a balloon knot arsehole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a247a93b-8ca9-474b-8f89-736a79ca0ca4	t	Tiny terrorists	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b21b9eaf-5ada-4ea0-8f7d-20765d703072	t	Three pounds of horse meat	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
49fe922d-9574-4bfc-9933-1a5341fff046	t	The wrath of Vladimir Putin.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
fda0e43b-b54f-427c-bdc6-55669f770580	t	The weaker sex.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
96ec13d0-4db9-4487-9356-5304197c71bf	t	the touch-hole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2d322de2-f5da-4a60-bfc2-35c6772f3cfb	t	The thing I'm hiding in my basement.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
43033269-8ff3-415e-a3bf-0d32b8a52725	t	The systematic disenfranchisement of black voters.	\N	a04dd44e-4581-4aff-8c9c-aabbb7aaed40
18bd23cf-f821-450c-9fde-b6cfebdbeba6	t	The shame and regret of a prostate-triggered orgasm.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
dfab54d9-e11b-410b-8b53-26f81fc02966	t	The quickly fading dream of a quarter-acre section	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3d40412c-2c3c-4de3-accc-8749eef3780d	t	The psychological damage caused to women who believe "Twilight" demonstrates a healthy relationship.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6b6491c5-868a-4c38-ab4d-005374c9a177	t	The Prince of Egypt.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b59d9292-72f7-4b12-8eff-4a2db026395d	t	The people of Florida.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0fc9e5e5-602a-4eed-8e23-9954a2e660dd	t	The opioid epidemic.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8f98e13e-effb-4a0f-98ba-d5d60da9efcf	t	The new Sheriff Joe Arpaio $20 bill.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
02ea6c93-f016-49cc-b05e-a62b171f5746	t	The moment Sharon realized she married Steve.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
d25f5607-32d9-4acc-b694-f0356da474b6	t	The mixture of fluids in my underwear right now.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8a063d0b-b78f-4cc3-a1ee-999ac2f36071	t	The milk that comes out of a person.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d8690eab-b4b0-4b59-9afe-06cb09800141	t	The mere concept of Waco.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e060e636-8132-4d5f-bafe-0c5131c40a51	t	The lingering scent of gardenias.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ee82739e-3f5a-4677-9740-bf1f9377371f	t	The Large Hard-On Collider.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
eebeb936-fb53-4223-a74d-549d34f91f8e	t	The Human Centipede: infinity edition.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3f7750d4-c52d-4348-9d21-40c7c498238d	t	The hospital baby swap.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8b588ea2-42bc-488b-acb9-0a9491d00394	t	The hidden dick in your favorite Disney movie.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
9091f9d5-e662-473a-a541-369d67293246	t	The harsh reality that all horses are people in horse costumes.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f60e96ae-6233-4f81-9f43-6c581301505a	t	The harsh light of day.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
790a70fa-52b5-403c-8c01-c88f08039225	t	The gun lobby	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ef3e42f9-c484-4d9d-88de-1dd9de258e7d	t	The Flying Spaghetti Monster.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4743a959-889e-413c-9d2a-7fe76fc44b42	t	The entire Mormon Tabernacle Chior.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
66a4c272-9b53-43da-bd91-83c2a057a93f	t	The EDL.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f25d8bb2-d5ec-49c9-a174-aa92f0f2d38e	t	The day the Mutant Ninja Turtles become adults	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
725e7241-a228-4eb7-aeea-d2f5942fc79e	t	The boogeyman.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3f1fa766-21cf-4596-acfe-b5c464a0706d	t	The black vote.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
96237714-2865-442b-b7bf-457190305645	t	The baby-industrial complex	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bb9efa17-909f-4036-ad5c-a3506bd507bf	t	That awkward family who thinks it's "cybersex Monday."	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1fa2770c-5562-4e3d-921f-a45e834dc6d9	t	Taking a minute to really unpack what Shakespeare is getting at in this scene.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
21e78b76-6b7e-4b6c-885f-f2857cf5eda6	t	Syria's tired, poor, carefully profiled masses.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d4fef2b7-94cf-439f-8c85-8343b5ad6671	t	Swim naked in a bathtub full of tapioca pudding.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7e1bc8f7-9219-49c4-b833-8db4dcdd63f4	t	Susan, that bitch.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
196dd98b-6f2a-4c40-8ced-81f6c7fc3146	t	Suicide bombers.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ecf62a33-43d7-44e6-9ec5-c7814db664b3	t	Suicide Awareness Training.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c36449f8-02be-43d6-aea8-3a3b9ceb4270	t	Suddenly feeling really sad for 40 years.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
470237fd-cb82-467b-b108-cbd4726432e4	t	Subduing an officer using only the gentle touch of feminine hands.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
86219eea-715c-444d-bff7-309b04d07827	t	Stockholm Syndrome	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ce7ae78c-ba55-4fff-941c-e3416c7789bb	t	statutory rape	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
760cd23e-015d-4cad-8eac-de5642cb19b1	t	Staring at a painting and going "hmmmmmm..."	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
69ad2e4c-a2d2-4124-93a8-e0b895d0468a	t	Spending my parent's hard-earned money.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
fcb6e08c-975b-4cf7-b26e-87e1cdc2d735	t	Special Olympics booing.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6740669d-e145-4b63-b758-26ec0bd23996	t	Sorcery.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d2392e30-3261-4a81-a9f3-65f58ac3f147	t	Some really sticky Kentucky Durban.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1e4fd83f-f1f9-4900-881f-bf38b9f60dbb	t	Some kind of bullshit vegan burgoo.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3884a0b3-fd02-4cdb-8b29-0224fb25286f	t	Some douchebag yelling "More Cowbell."	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
19baae80-1bb3-4525-b308-b706b7454848	t	SNES cartridge cleaning fluid.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
151be8e6-15f1-49d6-9bcc-53c33717782d	t	Slapping Nigel Farage over and over.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
279fb3f2-4091-43dc-bb16-fa9f3b5c8eb2	t	Sitting on a dick and sipping green tea.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a1b12fa8-3152-42dd-94ed-7af919e387fe	t	Shutting up so I can watch the game.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8a05f717-bb8f-4b99-8e54-9601d692fe59	t	Shitting perfectly into a hot dog bun.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4f19f7d9-c0fe-4f64-9c9a-b37fc09db1fc	t	Shagging in a flak jacket	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
65276b5e-c5ed-4b93-ac89-6843cb4c47c2	t	Sexual intercourse.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
63b43db1-fe4a-4037-8259-3af0d2bc115c	t	sexual inadequacy	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3ffecca5-198c-4114-8a70-3f53c4fb96f1	t	Self-folding lundry.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
48f2bfdc-019a-4efc-b16a-6c6af33d0044	t	Scrubbing under the folds.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
949ff3af-edd8-4290-b03e-46b0346ea822	t	Scrotemeal.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c0a5feb2-1caa-4a0e-8165-0e4024b12a66	t	Screaming Orgasm	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0478139c-7c9e-4004-b327-643184c24e58	t	Saving 20% or more on khakis.	\N	36714eaa-f6df-486b-813b-982cdf714895
e87fd036-f4a4-4dfb-ad63-51d001188f12	t	Santa cumming down your chimney.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
041c958c-5d39-4d98-95ca-dc03422d49a4	t	Sandwich.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0a576c9e-1eb9-4964-acf9-ec43f7c94e3f	t	Ryanair.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
507ebf2e-77a6-43cd-938f-e3c7d7c1676b	t	Running naked through sprinklers.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
978179de-d569-4b2e-911e-1aa1cf48a6b5	t	Role playing with moist towelettes.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8b03506f-dc24-4eaf-a383-09106763021a	t	Rising sea levels consistent with scientific predictions.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
437797df-f3c9-482d-a05c-e0876b1fefb4	t	Ripping out anal beads like you're starting a lawnmower.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
afca9dae-3638-4f7a-afc7-dcef99c82a36	t	Ripping off one company, who already ripped off another company, who stole the idea from another company.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
035dad29-b193-4189-9521-1c05d4bc1ed5	t	A sad fat dragon with no friends.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
57cec33f-cfc3-403b-8183-6ff103c65f27	t	Richi McCaw; the PM we want, but will never deserve	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
38bf574c-842d-4f74-ad4b-507ecf10cc14	t	Reverse gentrification.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5dc660a0-ab20-4b15-8037-b83938c95d4e	t	Revenge gifting annoying toys	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
81f8d80a-999b-4e90-ab8e-151a921296af	t	Racially biased employment equity questions.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c9d30ff5-e643-4e23-9429-29f230aec2b5	t	quick and easy, just the ways I like it	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0ef21990-7ffe-4e97-8218-0001650ab5ee	t	Putting Baby in a corner.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6a3847a4-fe50-4fb9-8a7f-622cc615cde2	t	Pumpkin spice flavored condoms.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
90225f82-6b1f-448a-9aa4-7e3562f4ef47	t	Preying that your spouse doesn't accidentally meet your boat boo at the commissary.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6eabe95b-3ad6-4373-95ac-93b048933c1c	t	Powerful allergies	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d346a295-0df9-4efe-b6a3-824ae321c3be	t	Oversharing on social media	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6fe41e05-842f-4aae-a956-0c348882717d	t	Our mutual friend Brad.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e3b4a82d-0392-4a68-b02c-a3de3ebfffa4	t	One titty hanging out.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1506215b-742d-4708-b69f-21dc914f2484	t	One rude motherfucker	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a2cb7c48-ef64-4e22-a76b-c7ba20932cfa	t	One bottle of good wine and 3 bottles of blended garbage	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4eb3fd31-b217-4ac8-954b-90f758343fd5	t	on her left breast, a mole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9f119d35-34b9-40cf-b972-f93fada89819	t	Nuclear engineers.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c3f01664-680d-47dc-b218-3657b230e5f4	t	Nothing. Absolutely nothing.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e636f2de-4c0a-49df-9f67-3f51dbe7d249	t	Not having silly talk.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
35cd7fa4-eb5e-49db-b223-950584a5002b	t	Not covering your mouth when you sneeze	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
737aeb8a-e608-4554-9c65-9ec65f7ea999	t	Neing trapped in the belly of a whale.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
116c4a32-9ae2-41e3-8b6a-f53ddc4d1881	t	My mate Dave.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2b22d2db-72a9-4549-a37c-6ecba6e65445	t	My magic awand	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b87d1f8e-0677-4e09-b990-39699b488897	t	My first kiss.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
598ff0bd-cd75-43f3-95c2-ec01bc0c41c4	t	My father, who is a walrus.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
11aae133-5f39-4d3c-844f-03ba19472289	t	multiple personality disorder	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
65b58272-dc5f-437d-8859-43a244fc78a2	t	Muff Diving	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
eab8a5cc-499e-40c9-84c7-76495a91c2b9	t	Moral bankruptcy.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f75d4325-cfbb-4c2a-a8f7-6ee64a0fec96	t	Moon a Prime Minister.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
072de330-b6b4-4c6b-a82f-ffa33b59ccc5	t	Mom's ability to take a cock.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7f8794fa-75ae-48ce-88de-dabfb92823ea	t	Mild racism and extreme homophobia	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4774537e-5227-4216-83b2-1332054fe189	t	Mediocre pizza	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6e616c80-0cc4-4bd4-8479-9083a80faae6	t	Mean people	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
300d44c3-39d6-44ce-9a89-397487afc3e7	t	maximum effort, minimal gain	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1a46e317-0708-4b0b-8bee-1542d56cbb87	t	Masturbating in a robe like a rich person.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7cd52570-4566-4a89-9017-de58ffeca42a	t	Making the printer work.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
988b01b3-62df-4f83-80fa-233317088980	t	Making shit up.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0e0ff237-6142-4e36-a8f6-f532e0955458	t	Making a list of people to kill.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7c863816-84c4-4fc3-b9e3-e325eff007b7	t	Maintaining eye contact with a grown man while he takes a shit.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c7499dd1-8af8-4b91-af21-8596da1d6129	t	Mad Stylin', yo.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5273d6a6-7f50-4f8e-89bd-114d84d9d5d7	t	Lokking for your Dad's porn stash	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
74a4117e-b534-4f02-85f0-35276ad70b74	t	Living in an old rectory with other singles.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
14dd9a06-523e-45db-9cdd-b92e4ce68826	t	Living in a trashcan.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
59e365bc-4ae7-42d5-9e2e-a15a6945a6ad	t	Literally fucking the shit out of someone.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
856ac544-8020-4063-98bc-4097dd8364d5	t	Liam Neeson	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bf9c2a1c-4a2e-4089-9378-af87bd7486e8	t	Letting Gemma collins squirt on your face	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
25ce0487-50b9-487d-98b5-dffd44829638	t	Kim Jong-un's barber.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
805962a3-1592-4281-99a7-d25423539e79	t	Just the tip...........and the rest of the penis.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5f4b71fe-1250-4219-aeb2-eb0d13bfce0a	t	Jumping rope with a bunch of worms tied together.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5696668e-2cb3-4ccc-b571-5ab88b465955	t	Jesus's death.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e18a8d68-0f5e-4378-869a-55f26d907cc9	t	Jeff Price.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
e3a8c18b-077e-4bec-a57d-3fe47fd87b90	t	Jagerbombs	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
493c8382-2f77-4186-a5ee-ee6cc6da10c5	t	intolerably vivid dreams	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
42eaf2d3-ad5b-48d0-b818-07b0ee98bf0d	t	Inserting a .50 cal round between your butt cheeks and squeezing.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
308c94a2-131c-4ae8-a0bc-038c7ea77c5c	t	Indian burns.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0476d5c1-a3fe-4631-9a8d-1ea0e0e6d469	t	Huge tits and a can-do attitude.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
56cf5539-30b7-42cd-9a92-65cb999528de	t	How wonderful it is when my master throws the ball and I go and get it for him.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
05cefb63-e255-4337-bd80-0b0013c718b8	t	How bad my daughter fucked up her dance recital.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4007e8d3-6775-4116-80aa-0bb17ba837c8	t	Hot doooooooogs.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
71bee42e-5c2d-4915-b16f-448c034e7653	t	Hot brown piss.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9bff8605-930a-4ddd-9064-222db61fd566	t	Historically black colleges.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
debcf595-5137-4730-a936-9af8fce51ff1	t	Hire that Stripper	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0d73e292-bd73-4fa1-aca1-c721d3ad836c	t	Hillary Clinton's death stare.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
d9856ae4-c365-4dd4-91da-e2d0bc9501e3	t	Having sloppy sex as your dog watches.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0a582bfb-c1d4-4f4c-a951-886650b49158	t	Having sex too soon after giving birth.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c85cd5d8-989f-4100-9746-6605d487857a	t	Having a pint with Aquinas.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e8443fcf-8a70-40e2-a486-152cc1ad4a82	t	Having $57 in the bank.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3391a9da-5594-410e-b7c6-05f5f5a3bc4a	t	Grassroots support	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e9bd9844-16dd-4ce0-8997-03e247802b53	t	Grandpa's bald spot.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6732ea78-d28b-411b-a175-3360d089733a	t	Going around sniffing people's armpits.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
af56ccd8-8015-4d7d-8aba-bde35d57fb5e	t	Glamping with Muammar Gaddafi.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9faf3eda-ba7e-4d85-a992-18d8a6a2d97e	t	Getting your dick wet.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
33580941-c247-43fc-a7ad-b47b71683996	t	Getting hit below the belt with a football	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
90e9c70c-21f0-43f4-b71d-309984040f0d	t	Getting aborted.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6f5baf73-812b-4306-bb0e-1fa4b7c3031a	t	George Clooney's wife	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c14838b5-6092-42c7-bac5-6541904d10ed	t	Genetically modified organisms	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c6656399-c563-4601-ae48-31d63f087a64	t	Generational wealth.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
73d14ad0-d51a-475e-ad3d-21fe29fc75fd	t	Gay animals.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e3b2d65f-aa2a-4ed1-871f-ba1d0d992861	t	Gargling jizz.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c01d5bf7-359d-4b00-83da-40a8c1d2a265	t	Gandalf's perfectly shaped eyebrows.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8c068a97-290f-45d2-a97c-def5041ebf5f	t	Fuck stains.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1699a6ec-72dc-4512-8d38-d4c03959982c	t	Four hours of truly goofy sex with the Blue Man Group.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bc10fc24-dec8-4fd0-92d7-d38b30b955b2	t	Flying saucers	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c09fe156-9b02-462a-9e3a-32f789ecdcd8	t	Fitting all your blongings into a seabag.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9088217f-79d8-4793-bcb0-a32ac0cdb086	t	Finding your boat boo's slappy chokey bondage vid on Pornhub.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
64b75224-c037-4828-ac79-2431c13fbc98	t	Filling out preschool applications while still pregnant.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7e79042c-d431-4b70-8d0f-e08426cf3446	t	Filling every pouch of a UtiliKilt™ with pizza.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
aad2a8a9-8d7e-4588-a4b6-f77ef973d42a	t	Fetish parties	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e6419b1f-940b-479d-a238-90213f775e88	t	Face Sitting	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
237e90f2-6cab-44dc-b51b-3b5902fffec3	t	Exorcism.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
766c1230-7d3a-4880-8a89-861369c7a9c2	t	Enough chocolate to drown in	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
17e3a671-038c-4de1-9078-d4e83630e994	t	Emotional baggage.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a97e7ecd-bdf7-4e71-bf36-a432e9f278a0	t	Eating too many Cinnabons and then vomiting and then eating the vomit.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3c6699f3-b0dc-449c-92f3-96f222cc7b2f	t	Eating an entire box of chocolates.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6004d59e-cd17-4a49-bbba-b68fe23d7a3e	t	Dying but miraculously getting brought back to life.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e5eb223a-6091-4c10-bd93-502b31121e9e	t	Drinking the tears of cancer patients.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0d5112c7-b022-4757-b625-1c04ccaf247e	t	Drinking my bro's pee-pee right out of his peen.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
31baba7d-aa26-4c0d-8f1e-0f35558957cc	t	Double rainbows.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a0d0b2a3-7ae2-4d25-a709-fca4c12874a7	t	Doritos and a Fruit Roll-Up.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8bfd3b12-2803-44f5-91e4-b7cf74d5eb36	t	Disco Inferno.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f4311229-7cc7-431c-ac65-477e4f1d1d27	t	Dinner at a fine restaurant with candlelight, small portions, tablecloths, and a remote-controlled bullet in your partner.*	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e843f980-95bc-4ff4-81c9-c57e79d8f1c3	t	Dining with cardboard cutouts of the cast of Friends.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4136d948-d5b5-4676-aa04-a4e61581dee4	t	Demons and shit.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
c126d6f1-b9c3-4bd5-80be-a05e22b7bfd3	t	deformities floundering in seas of blood and blue paint	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d70dec68-08aa-42ab-b5f6-062f540496ef	t	Death by teddy bear.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7d6ccb31-2134-4699-9415-31d850e8606f	t	Daddy's credit card.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
aaf258ee-766d-4bfc-af57-1a0a859fe833	t	Dad's hemorroid pad	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
27e9b63e-f286-44e3-bd60-60c94da279fd	t	Cumming Hard	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
64707c46-617c-4063-a1ae-72b9ada60f0d	t	Crying kids in Church.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
301eb23c-6787-4714-a7be-a55ba3ae048c	t	Crushing on a lunch lady.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1d231c0b-4f63-4a26-a798-a13826bf0a74	t	Crabs	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ae684a20-7759-45ed-8d04-59dbd96e38ba	t	Converting your sex dungeon into a baby room	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e4879359-5111-4c9e-9ece-f7adc39a92d7	t	Consent.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
adb21d15-9af6-4cfb-9602-c12677aa042a	t	Cockasaurus rex: the horniest dinosaur of them all.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
db8b6188-ec72-434b-9055-fd2a0fd2f548	t	Clenching as you anticipate their inadvertent thrust into the wrong hole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ea6f1568-4a56-4014-afb4-482539c048de	t	Clarke Gayford's fishing show	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7117328f-85f9-4783-91da-aafe62909f8f	t	Chugging down a bucket of giraffe cum.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
67bb0e6e-9c4b-4b2f-ae4f-b3b561ffb30f	t	Catch all this shit rolling down hill.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9adb05cc-044a-483b-ba9a-249910213264	t	Buying the right toothbrush cup for my lifestyle.	\N	36714eaa-f6df-486b-813b-982cdf714895
a08a2521-556a-4e18-8069-811b6c87d40f	t	Bullshitting my ass off.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3f349da0-6877-4f3d-a9de-623af4b0c794	t	Bosveld lapa porn.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
615d13f5-18c3-4209-b5b5-2eab0797cc92	t	Born again virgins.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0db2f1b8-8fe3-4331-ba21-9777d0729edf	t	Blowing Stacks at The Kiddy Arcade	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
75e380d3-6061-4c52-92ca-00eb564994cc	t	Blood fisting	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
da490d7c-54df-4eb0-8f2a-0ad8f9424ecc	t	Bill Clinton.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9c48951c-cbe8-4f8c-8f7b-088a570866cc	t	Big ol' floppy titties.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7369e931-de43-4ce4-9914-f2a8d23d719e	t	Big Blue.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0dcbc58b-e4b2-402d-a629-7b018fc245ab	t	Big bad mama nipples.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c3e5d274-f473-4386-86b9-0817fd361823	t	Being wholly unimpressed	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
041b07d0-6e02-4e6c-8e09-0260b4a4dc7f	t	Being fat from noodles.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
097a488c-3d00-4772-8035-c73d1e9c2093	t	Being blamed for things I didn't do.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2efa7adc-fb07-41ea-9246-8f6332cb5537	t	Being back-to-back World War Champions!	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7a9574e8-8cf6-4020-90b0-d755738806c8	t	Being a know-it-all.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
70d941eb-612a-418f-99a2-538e3eec1f79	t	Being a dumb ox.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3629b62e-32b1-4740-a169-8d461b2a6815	t	Being a clever little girl.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bc4f5742-b7a2-4243-83fb-c095653695a1	t	Basic trainees.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1f871312-0e4f-4021-9c1b-bafbc7d47ab7	t	Another surprising Osprey crash.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0c135929-6b0b-4135-bdb9-ee71141b6e63	t	Andrew Hore Clubbing Seals	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5052375f-6250-4579-ab71-e8737867492a	t	An unsurprising rash.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
14f57d9f-1683-42f5-b9b5-324d30475417	t	An unhinged Ferris wheel rolling toward the sea.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
41eacd4c-543e-471a-967e-b63f38c94c46	t	An unhinged Ferris wheel rolling toward the sea.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c3e61921-7c2f-44a8-bc30-ca1e713b54a1	t	An Ex-Porn Star Kindergarten Teacher	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
24f3401e-654a-41c0-9d9a-ba5c8c85a474	t	An Evening with Michael Buble.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5cc2b8ec-19ed-40f3-96ab-abc9789ed2ec	t	An Etsy steampunk strap-on.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1a8fc3b2-db24-4fbc-9bab-58d525b22344	t	An ass like two football helmets.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
045d0fc4-6632-4e3b-96fa-05c80985cc8e	t	An Army of smack heads with HIV infected needles.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1086dcfb-be91-467f-aafb-ca31fbc71fd9	t	an all-you-can-eat pussy buffet	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a11a1150-cdb6-44a2-88b3-36e5286b6653	t	all pants are half off today	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c9430339-b01e-4938-8694-3b9052651471	t	All my gentleman suitors.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f9961008-1928-4b4d-9240-a1bc5b3837e0	t	Actually giving a shit	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
df73043d-3129-485c-a501-4b58610a9eb7	t	A wedding reception. Again.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
dcd0a3c2-e240-4966-ae73-82445948784a	t	A vagina that tastes like the bathroom floors at Tom's Diner.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
32ba6ea7-d7d3-4038-bbcb-c4c5ee5d31f9	t	A swift hoog to the face.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f6324789-3b7c-4b8f-a95c-3a5e3221fe71	t	A sweet spaceship.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
2806258b-3555-4398-bb56-bf8fa6c7f353	t	A surprisingly low amount of prison rape.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e3f677e0-a2c5-4a70-b7ad-ce31eaf6c504	t	a squeeze of the hand	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a4612174-0df8-4eae-b2c2-503561db2a37	t	A spontaneous musical number.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
39b521f2-eec0-4fbc-b316-d7951e9e086c	t	A Soft Pink Hole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
29d5ee56-f08c-4ccb-b5e5-ba9df7524375	t	A smiling bro with a glistening cock.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a31f8ec3-a9ca-4938-b0c9-d094ab0c2ed5	t	a slightly used tampon	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7ee68962-ebed-4ea7-852b-cb183c68e32c	t	A sales team of clowns and pedophiles.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a4a88a6b-963b-4bd2-8577-e4c5d7d44a86	t	A sad god with a shit-covered pair of nipples.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a49b4515-7a03-4222-8851-8afcd890dbe6	t	A prayer bouquet.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bcdcbb66-70dd-4148-8cd1-e8910f151588	t	A pocket diaper.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
24f57141-fd2b-41c8-9292-3dde2d7ac2ff	t	A pineapple with chlamydia.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b9744777-cc1b-4fc4-a4f8-1a23d9024432	t	a pillow biter	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1d9b51b0-005d-4e70-88da-450b74604c7e	t	A phantasmagoria of anal delights.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
33e78a64-df38-4536-9550-899d5e4d2c48	t	A paternity test.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f16eb114-cb5b-41e0-89e5-3a576d2f9dcf	t	A Nuclear Deterrence Operations Service Medal that somehow gives your worthless life meaning.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2908d90e-3ae3-4208-8cf5-8e5285fe1084	t	A nautical theme.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7f253d18-7932-4067-95fb-06ef779c4d26	t	A man of means by no means.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
548b5838-4e4d-4a8a-a089-8fea3bd846dc	t	A magical cupboard that brings sex toys to life.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
cc27c9a2-4b9a-48b6-b6df-3c2f30d9a26d	t	a low sucking sound	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
03f0ae90-d59b-4cf9-8acc-253383472b06	t	A LAN party.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
92b95597-cbc6-4961-8d85-4925b0136ad1	t	A Japanese whaling operation.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
69875a7a-c79f-4cc9-a141-3f704e26d7db	t	A Japanese tourist who wants something very badly but cannot communicate it.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b0efbc45-89ab-415e-ac7e-5e8890fb8a11	t	A greasy pork sandwich served on a dirty ashtray.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bc0f5f16-2c16-483a-a579-dfab48597eda	t	A fortune cookie containing a wasp.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
18ce739d-0c4c-45ec-bcd4-60bfbb537db8	t	A fat Batman with a sopping wet scrotum.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e65df416-0739-46b3-a24b-9c7f1a913cb6	t	A dollw that pees real pee!	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e65bb80f-c4c6-465f-b8c2-a433d3133a13	t	A copy of Bedside Hitler.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5a8587f5-e46d-424f-95c0-25fbde37b447	t	A complicated relationship with food.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d1ef8904-ad55-409f-b509-3e26f05e7ad0	t	A cat with... hands.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c6a9e594-d833-42a0-81d2-779b46f78db7	t	A burning orphanage.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
25976754-4923-4b70-8e03-b349d42aeaca	t	A botched genital piercing.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3879a195-9339-4774-a17b-49989fc4a415	t	A boomtown whore.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1b021eff-cffc-40b4-bad8-e73fca533d3a	t	A blow job from Shark Girl, with teeth.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
eb272743-57c6-4828-b4bc-49a3d540a60f	t	A black-owned and operated business.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
884ac00d-df14-4670-b204-af32a64af7db	t	A bigger, blacker knitting bag.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a1a0dfb7-e0f0-4e96-a34f-59fb9c5cda38	t	A big black dildo.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
44e9bba2-9d74-4f64-ba62-61db4ffbe77e	t	A 6-hour conversation on gender and queer theory.	\N	8d8215b4-ebc5-4665-96a5-40cad1637426
f1aa43f3-8457-47c2-8599-2233f5b68e54	t	25 shitty jokes about House of Cards.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
7229a17f-defb-4f66-8cd7-ff82be4e8c58	t	Yet another surgeon with a creamy pecker.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
827b384b-adca-4c47-992e-93464f36f4f2	t	Being sexually attracted to children.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b90e2cf3-cbc1-4c75-a385-1b7e6bfad8d4	t	Yet another superhero with a smooth dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9b3a9df7-1d44-4aa9-a144-752b478a796f	t	Yet another President with a wonderful dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
060e35c9-73ac-4feb-b96b-88e003a17db6	t	Yet another nerd with a smooth ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
fa8f546b-b18b-4cbd-9b8e-6f1b54d0d9b8	t	Yet another guy with an impressive dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2c37222d-5ea8-4de8-925f-6eda8cfca738	t	Yet another grandfather with an inspiring dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
21551563-998f-4a29-b5e6-2ac713ab9ccf	t	Yet another Batman with an epic pecker.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4e718c59-4487-461c-8fe8-b9b665aecdb0	t	Yet another astronaut with a creamy twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1bd125d7-4945-43f6-8bc1-9d207dc5946e	t	The most gorgeous president with the greatest dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a239a3ef-6bdd-4a12-ba98-f82c6f13a1c6	t	Some kind of woman with a sopping wet clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e007a27e-ef4b-4832-b162-d84633315312	t	Some kind of Rabbi with history's greatest dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d22ba34e-a011-4c7d-a24e-efdf2bc76a40	t	Some kind of rabbi with a beautiful erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c23aeb44-0322-40fc-bdf8-b7a60b44125b	t	Some kind of nurse with a creamy taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
502b626a-b764-42e5-9f7e-a73262d9e6b2	t	Some kind of milkman with a tiny, upsetting penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0c171fd1-5e70-41b1-bda4-45500dfb22fa	t	Some kind of milkman with a crappy dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
fc6aeef4-d46b-4eae-8458-53f0ebb6ea84	t	Some kind of hunk with a shit-covered dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6aca5146-f0f8-412e-92e8-eed5d69c86c7	t	Some kind of god with a surprising large asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5999049c-5b5d-4eeb-bb78-98336c700959	t	Some kind of dragon with a creamy twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
67dc6b5f-144f-4c6e-ba3c-9ab3b0958405	t	Some kind of dad with a tremendous scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
11a1846b-4c73-47bd-b692-0fc85990cc6a	t	Some kind of cop with a hairy dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
72a2dd3e-c6ae-47bf-bc5f-730ba245a4da	t	Some kind of congressman with a glistening cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0cf232f3-ac76-4f89-909a-81dc38e8afad	t	Some kind of CEO with a smooth dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
7cb68c2d-944f-4f51-a325-5fa9daa9ea87	t	Some kind of astronaut with quite a pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a18336b3-1ea3-423f-956e-ddeab8082f93	t	An otherwise unremarkablenurse with history's greatest scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1cb7712f-b38d-4272-bee1-2c65ba612ec3	t	An otherwise unremarkable woman with an epic ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2a76155d-8c66-49bb-9e8f-e8fdb03a7599	t	An otherwise unremarkable nurse with history's greatest scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c14fa4ae-0216-4b19-9719-25af204e387f	t	An otherwise unremarkable novelist with an impressive clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2606902a-1e4b-4685-a665-5d1506b14280	t	An otherwise unremarkable mom with a glistening dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
49cb9a47-1089-4b78-b744-061995fc5676	t	An otherwise unremarkable milkman with a smooth asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
81a7144f-1d87-4979-82ce-2333bcb911b3	t	An otherwise unremarkable god with a shit-covered vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
411945f7-8aca-4343-b712-d30178fbdc8c	t	An otherwise unremarkable dragon with a smooth clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6e6e3214-715f-4b5a-8ffe-59d87ede2e2a	t	An otherwise unremarkable dad with a sopping wet dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b0f3a901-2c63-426d-bc91-b234ee107554	t	An otherwise unremarkable bro with a glorious pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
7bd7c177-b016-4f75-a2fc-1e7ca06ab31e	t	An otherwise unremarkable baseball player with a tiny, upsetting twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9a02d021-e2dd-450d-bba9-4735e85b2620	t	An ordinary woman with a glistening twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3d592045-90b3-4041-aaaf-e66a39d7424d	t	An ordinary school teacher with a sopping wet butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
96a45523-5728-47b0-a091-c9b8db47153b	t	An ordinary school teacher with a creamy clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5cddab54-bb91-4ebd-8ece-8b9815f99fe7	t	An ordinary Republican with a tiny, upsetting cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2ee27ca9-76e4-4fb3-abbc-1abd1aaabf19	t	An ordinary prince with a beautiful pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9ff2003a-f908-4684-b639-65fce0fdf9e7	t	An ordinary novelist with a smooth penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
01f8a359-7a37-4133-8557-2eb3e034521d	t	An ordinary dragon with a surprisingly large pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
33d929ee-f710-4d99-9173-d704532ef5a0	t	An ordinary dentist with the world's smallest vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
11c4f017-8c15-4f20-8cae-0b6825dd86db	t	An ordinary cop with a chocolate-covered ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
8e48db5c-824e-4e28-a6b0-0441f96c60ff	t	An ordinary CEO with a perfectly-formed scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6042fa09-206e-48e9-9afa-766b4bec4ff9	t	An ordinary bro with a shit-covered penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
bc10130a-9e80-4851-bc16-13bec02a8597	t	An eager school teacher with a glorious cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f26b9bbd-d22c-427d-9604-e9fb75ae2a1c	t	An eager prince with a sopping wet twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
435bcfd4-9295-4269-9fab-822ca7884b7f	t	An eager nurse with a shit-covered taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
96d69c02-5b32-4235-80d2-42425e9a3548	t	An eager nerd with a crappy taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
489b54d0-5d11-4192-be40-7ed66a7fd779	t	An eager hipster with a glistening cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
49503d8f-dd9a-4fa1-9713-29ea6f887e1a	t	An eager farmer with a beautiful pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e1e1189a-e110-4aad-afba-bd53871a441a	t	An eager cop with an extra ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
20d46639-05d1-4ea7-a68b-d61a80533413	t	An average garbageman with an infinite vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
464874c9-f410-45a3-bf3a-0940693cfca8	t	An average fireman with the world's smallest penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
093cf159-5215-437b-9e0c-0c5cde14418d	t	An average farmer with an inspiring penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d05fead8-baf7-4626-b4b5-a4de72bfa76a	t	An average dragon with a glistening clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
88086883-765d-4629-91bc-2be4caacd1be	t	An average dentist with a glorious scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4bcad620-e980-4132-ab1b-1756a89ef416	t	An average dad with a tremendous ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
83869843-2be3-4865-b9fb-58680e3f9ada	t	A wizard with a chocolate-covered scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0957f09c-a7a6-40dd-8960-90227a4d6495	t	A winking woman with a creamy penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
643946b5-ef98-4cf1-90c8-5ea43fb162d7	t	A winking Republican with a weird penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
caa3cdd7-372c-475c-9d1f-8b8c37f99d1c	t	A winking novelist with a tremendous dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c00fa14b-b33b-42a6-ba29-2c14323c9735	t	A winking milkman with a glorious pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
449c5593-4935-4990-b753-5ca4fadc4c42	t	A winking god with a weird ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
07106043-1e72-4550-b36f-82d9f54de353	t	A winking garbageman with an infinite dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0d3ffc5a-b129-47d6-930e-be243f16e62b	t	A winking garbageman with a sopping wet pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ccb5a014-2e59-452a-baa2-0fb52a3fb4fa	t	A winking dude with an infinite erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
23f9425c-808c-4ff2-b92e-25998fac5a0d	t	A winking dad with a creamy butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
cd2c98a0-c2f2-4a71-a594-8a4a47536a92	t	A winking congressman with a creamy asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
70b7e71d-7f0c-4418-8124-ed019d02d0b0	t	A winking CEO with a crappy asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
75dad97d-e607-4f44-8645-e26da6ad9799	t	A winking Batman with a crappy pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2253ce6d-c8fd-44e6-b332-c8a626c26036	t	A winking astronaut with a tiny, upsetting pecker.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
80881815-fc2a-42c8-a011-06e6013e2d58	t	A trembling woman with the world's biggest asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
514e9a0f-0888-4882-9e30-91570383d863	t	A trembling teacher with a weird ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e568c8ba-0e96-48a1-8f55-13742f55b0a8	t	A trembling Republican with a glorious dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9ecb3634-4b14-40d3-8d9f-b628c98a52d3	t	A trembling mom with a shit-covered asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4d2ffaff-ab56-4883-98b1-e12907f5e09a	t	A trembling milkman with a perfectly-formed erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
281a293a-0bbe-47c3-9c20-a3b1e9f65a9a	t	A trembling hunk with history's greatest twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f1fad22b-cd51-4c6f-aa03-764eff7c51c5	t	A trembling guy with an extra erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
af6626c6-e7e0-4c1a-a666-ed7d7632a497	t	A trembling grandfather with history's greatest twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
590e5e41-d290-474d-873f-ec7e97766c1e	t	A trembling farmer with a wonderful scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
df9ac6e3-ffda-4b96-ad29-0d172e30d3a6	t	A trembling dog with history's greatest penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
992c44ee-e65c-44b9-862e-126419d369cc	t	A tiny woman with a chocolate-covered cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ea0f93a2-7c9b-4770-b803-98a7744c4ba6	t	A tiny school teacher with history's greatest pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
dfbbc3a1-f0b3-49d3-b798-9315a4596969	t	A tiny Republican with an impressive pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0cea2513-ca81-4c32-bac3-f7a49c93a864	t	A tiny prince with a perfectly-formed dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
27a4fd37-db6c-44f5-8593-cbeba51f5df6	t	A tiny guy with a wonderful taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
88eca936-60b5-4e2c-9720-ef8558a5d151	t	A tiny fireman with a sopping wet cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c531587c-7c31-4931-b704-f70d4d4f0bbd	t	A tiny dentist with a sopping wet taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2e5bf87f-0216-4270-99a5-157fcd8f3cf9	t	A tiny CEO with a chocolate-covered asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3f43e51c-5a4e-47a3-a012-2d82eea3fbe1	t	A tiny Batman with the world's smallest pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
91db4534-ae05-4431-8279-1de01e491f6e	t	A tiny baseball player with a tiny, upsetting clit.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
334c9eba-8931-4655-8a96-8245684329e2	t	A tiny baseball player with a sopping wet scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ddf00e85-800e-4a0a-aa02-9383641bcbd0	t	A tall surgeon with an inspiring dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3feb9956-d6a1-48ad-bb03-24a52b118790	t	A tall Republican with a spectacular pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
723edf70-a065-4fa2-8d9d-fa3143d9adc4	t	A tall Republican with a glorious cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9d090e4c-03b9-4995-ab5a-675ee998dbfb	t	A tall Rabbi with the world's biggest vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4099c1e1-08cf-4c21-9b81-6f083ecb0db7	t	A tall President with an infinite vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e81cd725-7fa7-4845-9e56-6f24ec75d32b	t	A tall nurse with a spectacular ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b65cfdd8-329d-40e5-b601-6495980a2842	t	A tall nurse with a hairy penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
706dd77e-7178-4b9e-8a08-08cc0512991e	t	A tall milkman with a sopping wet ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0faeb88e-2915-4f9e-885d-3dabd1a93755	t	A tall boss with a creamy pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1f97cd52-9712-498f-9424-cb6a77ae226b	t	A smiling school teacher with history's greatest twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
36e160bb-f2cb-407e-8e0b-7110feb9ba10	t	A smiling Rabbi with a weird ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
330bc536-727f-478d-bcbf-2b1afae8fe5e	t	A smiling prince with a sopping wet dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
abea2be9-3a76-4c95-9687-28ef64bacf36	t	A smiling farmer with the world's biggest pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
af221e82-af78-4e7f-acf1-86d2d99be5e2	t	A smiling bro with a glistening cock.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ad83ad3f-d160-4e75-846e-b61dc1d976a1	t	A sexy milkman with a perfectly-formed erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3bcb9cf1-3f1d-4c77-afb5-7d4accc28418	t	A sexy husband with a surprisingly large dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2c66e5b8-8f0e-480b-af74-e04a561f2c22	t	A sexy farmer with a creamy penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ab26a814-05bc-4939-a847-2139f3057b16	t	A sexy dragon with a spectacular ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
174fce99-250d-4513-ae7b-d0359cb0cc3f	t	A sexy dog with a sopping wet cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a37191ad-0029-4dd7-8961-ca57fd8923fe	t	A sad superhero with a sopping wet anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
35c15773-7f0d-4649-89d1-300249771e9f	t	A sad novelist with history's greatest penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a8c7cebd-3b8c-49b6-ad44-cd6b7260f6c5	t	A sad nerd with a glorious vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e0c9d466-a58a-4d7b-a7ee-c4bb2c54b0a8	t	A sad mom with a glorius anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
69905ed7-ddf8-4b1d-8cb6-68c3a03c0097	t	A sad hunk with an extra ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5591858b-532d-435d-ab1c-815321a8047c	t	A sad god with a shit-covered pair of nipples.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
128e371a-58a8-47c8-8dae-15cdfdffb550	t	A sad boss with a weird dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
dd6d097d-c451-4e33-bcfe-58fb15833102	t	A sad astronaut with a creamy cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e5375908-1099-432b-8e8b-0b5f92ed800f	t	A regular Rabbi with a glistening scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
30f30f3b-b3c3-47b9-a724-675ef5d9ff67	t	A regular Rabbi with a chocolate-covered pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2376ed25-c041-401a-9018-e9c6b67a072f	t	A regular prince with an extra taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d5ec5566-198a-40c1-919d-6e6806b36663	t	A regular hipster with an extra dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e5463532-a831-4611-a202-6fc65bdb6423	t	A regular grandfather with a creamy dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c61fe45a-cbd2-40da-addb-1211d4f061bb	t	A regular garbageman with a creamy pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
930f0b44-6d05-4797-90d9-d0f072ad598c	t	A muscular woman with the world's biggest pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e86e6ffa-acbe-4950-8719-9c651eb3d28f	t	A muscular prince with a spectacular twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1c6f0399-4c10-49c5-ab27-9d6667a4ec12	t	A muscular prince with a glorious anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0294ed81-8cb2-43fc-b9fb-a0d43de01590	t	A muscular milkman with a glistening dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
167e6403-15e5-40d5-86b2-22328092fae9	t	A muscular hunk with an epic asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
cdf6cd6c-5b32-49ea-b466-adc8a5cecd4f	t	A muscular god with a hairy erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
133f2989-db99-424e-98d6-030f2311d8ce	t	A muscular garbageman with a sopping wet pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9325b452-83a1-4897-a108-1fb3e85bbd46	t	A muscular cop with an epic pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
dc8b7c47-029a-4181-9421-f5cf9fce3017	t	A muscular Batman with a tremendous ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
174610eb-5675-45f9-9723-5886741faa25	t	A moaning wizard with a sopping wet asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b34aa981-2682-4150-b8da-34e5fbb4f70a	t	A moaning nurse with a tremendous dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b6ac4931-4d6b-40f9-a3b7-25ff358d2f84	t	A moaning nurse with a shit-covered butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4ce75bd1-d3d3-4d27-a54e-d694a32474ed	t	A moaning novelist with a smooth dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
97826556-91f2-4aa1-a978-8408e392ddd8	t	A moaning mom with a shit-covered ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e2e0b12d-ef84-4a94-8bc4-c8c23e6d6c4e	t	A moaning god with a smooth dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
07db20e4-e98d-4c69-b8d6-17b11bbce520	t	A moaning garbageman with a glistening asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ca7e7c2b-fd3e-4230-b74a-89fddab270b5	t	A moaning fireman with an infinite anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
8befce68-ee6c-4198-ba81-3b4968cc43e3	t	A mean school teacher with a glistening butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
35da1ff9-8140-4460-a085-87174bc0d49a	t	A mean President with a perfectly-formed clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
09adb82a-268b-470a-9713-fbe6016817d4	t	A mean plumber with an impressive vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9edfdbdc-3600-471f-b1ac-c624a91a482b	t	A mean nerd with an epic anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1d68f875-b26b-4e7a-9a5f-cf6f4310f601	t	A mean nerd with a creamy twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6025ce59-5c05-4ecf-8017-a0ae2f019359	t	A mean grandfather with a chocolate-covered dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1be479c5-7d12-42d1-9694-3046e6909755	t	A mean grandfater with a perfectly-formed clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ff1075fe-9b1a-4b10-ad44-1d17ec99ffcd	t	A mean garbageman with a smooth erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f5390aac-4a95-4587-aea4-31108c20c641	t	A mean CEO with a wonderful taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e58bc3f6-1d46-48aa-8687-f02eb59950c4	t	A lonely nurse with an epic pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
04ce931a-8b90-42ce-bd53-3f89befad056	t	A lonely god with an extra pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
33cce17d-262a-4220-8628-5051679bb3c8	t	A lonely fireman with a chocolate-covered dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
83205a5b-7942-4408-b99e-83d70a5ea79d	t	A lonely farmer with a glorious pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5b3f606f-4bab-429c-99e4-841941088114	t	A lonely dentist with an inspiring taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
40988c40-b307-444a-9fe9-21b228cd6188	t	A lonely boss with a wonderful asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
fb80cf46-b0d1-4fd4-a542-d5267ec34a28	t	A lonely Batman with a crappy dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c37b9ff1-f98e-4af4-a78b-f4f454419a16	t	A large hipster with a weird ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
8e1f6244-1657-43f5-8973-8961e399ee38	t	A large hipster with a crappy erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6658c40e-6afe-419b-9fb1-fd9281100b37	t	A large garbageman with an infinite dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
28d4e33f-f089-4129-a9c9-1eebdd749d1b	t	A large farmer with a surprisingly large taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e855b6a9-5a2e-473a-acd5-997817453c48	t	A large dog with a weird taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
fac73130-09b5-4577-bdc3-2fce42a624ee	t	A laidback horse with a crappy twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0c27a404-7cb1-4763-8085-3fd28a3de187	t	A laid-back superhero with the world's biggest anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0e1656c9-692e-4dd8-ac11-4f7ff7406f6c	t	A laid-back superhero with an extra taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
99558305-d7c3-4903-9ce4-d5cbeede1547	t	A laid-back school teacher with an impressive butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
28f69d58-9883-459b-9a04-3e23fe79314f	t	A laid-back Rabbi with a tiny, upsetting erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
46e69fac-416a-40d0-970e-00a78aaeb4ad	t	A laid-back prince with the world's biggest butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
bfc9e68f-b27a-4ef6-b5cd-95f4d6bbabd1	t	A laid-back priest with a tremendous ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
fea557b5-b23d-4c99-8ef0-5c6afcfaf35f	t	A laid-back President with the world's biggest vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b3f39bb8-83ff-46eb-bb90-71c9c8fb5d18	t	A laid-back horse with a wonderful scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
378bf288-2cd7-4f7c-9ca6-7a38c345faef	t	A laid-back hipster with a crappy ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6f83b390-b0cf-49c3-9e81-124ce090385a	t	A laid-back grandfather with a surprisingly large asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0d6d274d-bce9-40b9-b5b4-c4869602514b	t	A laid-back donkey with a spectacular scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
54793d09-c519-4e74-83a5-7cbb70b4de79	t	A laid-back doneky with a spectacular erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
737e95c8-a119-45e5-8170-543a449c5b26	t	A laid-back dog with the world's smallest scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
192c902f-8db4-4981-95a5-caf129e515aa	t	A laid-back dad with a smooth clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d719376d-bac9-46ec-bbec-5f9d2c7f258a	t	A laid-back congressman with a perfectly-formed taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f2f37091-4b52-4cdd-9772-c14cca4bccc4	t	A laid-back boss with an inspiring pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a5f121d1-d14e-4a2b-a703-2b1db10d30af	t	A huge woman with an impressive penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
03044c5d-fb9d-4e70-ba42-0b92044c3ae8	t	A huge surgeon with a hairy scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
dba09e06-67ee-4393-9157-2abad0b3fef5	t	A huge school teacehr with an infinite pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3cc28c18-4bcb-4a6d-a83e-63d3fdf4c94e	t	A huge Rabbi with the world's biggest cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
1343bfde-679c-45c8-ba52-d0a52c8287da	t	A huge hipster with a perfectly-formed pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c0625576-604e-4933-a1f8-787ad3a8f2b6	t	A huge god with a perfectly-formed taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4b898138-4c7e-41a4-9d7f-c2d523acda7d	t	A huge fireman with history's greatest anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
030c9c9c-b550-4f63-9e25-4f66a4d442f1	t	A huge dragon with a tiny, upsetting pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4064c001-0714-48d7-9120-0d233a48c79d	t	A huge dad with a smooth penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ec9b41a5-93ff-4d55-8cd1-dee96c47b525	t	A huge cop with a perfectly-formed clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c29f6136-30ff-47db-840c-f9adda5e7606	t	A huge bro with a glorious taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d8ab8a2d-2396-4477-9bff-3145224a1381	t	A hot school teacher with an inspiring vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
829057be-f640-4da4-82be-3032c6d8c427	t	A hot priest with a shit-covered dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
bbb39445-a757-4474-b1cc-ff38bf77dc3d	t	A hot novelist with a crappy dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f616725b-0b6c-4406-aca2-22d47e2c042c	t	A hot hipster with the world's smallest pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
740f6376-4c00-45dc-be4b-569385e196ba	t	A hot hipster with the world's biggest ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
afe2cb26-eab2-4f64-bb83-70c1bef4112d	t	A hot grandfather with an extra scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
24c9c2fe-4061-4af0-bc6f-078823f476a5	t	A hot god with a beautiful scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2e011444-d54c-4a8d-a336-983a4f540b54	t	A hot congressman with history's greatest asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
999fb731-4105-49cb-82de-aba2b8fd948a	t	A hot congressman with a smooth clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
7f2bcc04-3581-4fc4-a77c-b336544c17e8	t	A hot bro with a hairy dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
89be6839-206f-4d2d-99b1-f14991029cb5	t	A hot baseball player with a weird asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
36a6a130-821d-4356-82a9-2a4407ccbd9f	t	A horny woman with a wonderful clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a3a513e3-663f-4a7d-8b2c-064b93ec5fe3	t	A horny woman with a surprisingly large penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ec005914-6528-42c1-b61e-76177d48e7f0	t	A horny woman with a shit-covered dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
76987847-b066-4de2-93b2-efaa294c9e05	t	A horny surgeon with a weird dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ba800f55-9ba6-4807-9932-e6ef777c36a3	t	A horny Republican with an impressive butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
8eaccf20-8952-4b3d-bfb3-5c0df9b12f0e	t	A horny mom with an infinite cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e5d65b45-9dda-45b5-8cda-5853f12f2c42	t	A horny guy with a wonderful ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b5ac59e2-b27a-46a5-ba3d-7cf0680fcef6	t	A horny grandfather with a smooth dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9afac8c8-e24c-426e-933a-68a5c681e655	t	A horny grandfather with a glistening erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b0883ca3-b192-4029-8ba3-927acb7283b6	t	A horny garbageman with a chocolate-covered clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2a0ebc7d-623c-4915-b7a9-bb2964132130	t	A horny farmer with a weird cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
bc1491b4-3ec3-4e64-8513-0c823f7156a3	t	A horny dentist with a tiny, upsetting pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5b6c49aa-f745-4ebd-bd29-616dd7713e3f	t	A hard-working woman with the world's biggest dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f14ba374-d367-4b5b-8c9a-93cca7f3faae	t	A hard-working superhero with an extra asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
78a153c1-9a75-4c99-a230-39027e5baabf	t	A hard-working nerd with a weird scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ac0e17b9-593b-4fc4-9ad1-e129dad455dd	t	A hard-working milkman with the world's smallest vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0a172d07-26b1-4b7b-b7e7-550ec1bbc94f	t	A hard-working milkman with an impressive dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
23da0ee8-91ae-41db-8e1b-aab2dcdb93ee	t	A hard-working milkman with a tremendous cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
8364333d-c27c-4908-9521-c3a76f6e6134	t	A hard-working hunk with a tremendous vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
35d7b59d-2c08-4d8a-8ef8-0ebd9f3d1715	t	A hard-working guy with a crappy clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
f1b28bd9-bce3-4329-97f1-e41c5864d5e4	t	A hard-working grandfather with a surprisingly large dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
4989e08b-9f57-4f58-b801-40abdd396c38	t	A hard-working garbageman with a tremendous taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
354dbb32-13e3-4ef4-ad0d-35191fb6652e	t	A hard working nerd with a weird scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3d0bcecd-3803-48fa-a544-1ad4d668485e	t	A happy woman with a shit-covered cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d52ea2d4-8bc5-46a7-a831-04233a88aa71	t	A happy woman with a beautiful dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6ea045f6-3771-4e56-819c-bcdb543d5155	t	A happy wizard with the world's biggest dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5341ec55-cafc-4162-b786-0a9504caf306	t	A happy Republican with a perfectly-formed butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
937b6143-8c2c-4470-9104-cdefb76d473f	t	A happy Rabbi with an epic erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3d7f66f7-2389-4f8f-b7d7-dd19707cc605	t	A happy Rabbi with a tiny, upsetting butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
66920a06-9515-43fe-a8c6-8f759d9c56e6	t	A happy Rabbi with a chocolate-covered ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e996d9fa-48ec-4e8b-9555-e941e0d79858	t	A happy priest with a hairy pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6248fd13-4a52-4e41-87cb-4408369ddce5	t	A happy President with a tiny, upsetting dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
518f163e-c6f0-4c03-acf9-077211fdfde9	t	A happy guy with a chocolate-covered taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b9063e86-b467-4219-8268-f988907834d2	t	A happy grandma with a surprisingly large penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3dd3e627-18fc-4372-b3c0-cf1a4d637e89	t	A happy god with a wonderful clitoris.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
145c59a8-f1d5-4285-aace-895c630ea62b	t	A happy dancer with an impressive scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
8eda92b9-80c5-4bbb-be72-30d569ab07ca	t	A happy bro with an infinite cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
aa79ba0d-c367-4898-91f1-22512e8cb210	t	A happy baseball player with quite a clit.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ba4779ce-7ec5-479e-9f70-c419bb7a1a0a	t	A grandfather with a creamy dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
69bb760f-9ad3-4408-b26e-4e6fd638465c	t	A gorgeous plumber with a spectacular taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6f99ceb7-8474-4562-90ad-024e467622cb	t	A gorgeous nurse with an extra pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
c909b082-fa71-4454-93e7-14d71d558a49	t	A gorgeous mom with a beautiful erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
07c8301d-8219-4958-8749-76d8d89bc5b4	t	A gorgeous grandfather with history's greatest butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
797e1995-a012-4b46-a6e8-3ee3051e8ca9	t	A gorgeous garbageman with a perfectly-formed dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2e71459c-767d-4031-9781-39b7d6c382ef	t	A gorgeous dragon with a spectacular twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
2cd32e54-59a3-4f14-9b81-e99cd27e8bc1	t	A gorgeous dancer with an impressive erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
9ae84aa3-7cd5-4b22-a154-9bf5f8d6ddfb	t	A gorgeous cop with a surprisingly large pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ec38b34a-daaa-4f4b-9908-9f4c6e374cbe	t	A gorgeous cop with a sopping wet penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a0331ad9-ae69-4d25-a763-f411f250946f	t	A gay wizard with an inspiring asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
32af2265-d947-4af4-ba96-479628a36c1f	t	A gay superhero with a creamy vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0faed43d-9161-4059-8754-b0dac1012e88	t	A gay Republican with a beautiful dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e2884f92-eff8-4f30-94e2-9440ddec0e30	t	A gay prince with history's greatest cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
cb90906e-98f7-4f47-b77a-931b6af4e625	t	A gay prince with a sopping wet vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
507398a6-10c1-4be6-b62a-b3d54f57e380	t	A gay prince with a crappy butthole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
0bbf8f89-d45e-4064-85b3-3b697b9671d6	t	A gay nurse with a glorious anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
6e4ac384-f0c7-4dc8-9215-7d48a961d42e	t	A gay hipster with an impressive taint.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
7559286e-9135-4872-b096-a2521cae2a61	t	A gay fireman with an impressive anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
85daed2f-1956-4ea5-9ac3-c9c77047b27f	t	A gay fireman with a sopping wet vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ea40f610-d40d-45d0-af3c-7eec28f56843	t	A gay donkey with an infinite dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d47508a6-7ead-4e54-ae5e-33c653806b3b	t	A gay cop with a sopping wet asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5dd56fc5-821b-4ad1-9ca3-0d245b7d7bae	t	A gay CEO with a shit-covered dong.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
727d3287-979a-49e9-8391-884511b04e19	t	A funny little bro with a glorious pair of tits.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
d9f74660-92e7-474e-98a1-d22b8aa3a36b	t	A funny little boss with an epic pair of nipples.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a58f2295-9e96-4566-87b7-dc34dbe1b955	t	A fat wizard with a tremendous vagina.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
96ec7d43-b4c8-471d-854f-445a6aa4edfa	t	A fat surgeon with a creamy dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3938cfc5-84fd-4bae-ad15-d69de4696ce5	t	A fat school teacher with an infinite twat.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b73c11f9-deae-4d85-be3b-1b14559bc28b	t	A fat nurse with a surprisingly large anus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
ad3aebaa-522b-4244-bdcf-6ca8f5fa344f	t	A fat nerd with the world's biggest dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e7cfab20-d391-48de-97ac-4320c5760aed	t	A fat horse with a spectacular ballsack.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
5685f90b-333d-4be5-8751-815123861062	t	A fat horse with a crappy scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
dab8ed5d-2a9d-4e5a-95e9-98ea1dfc8578	t	A fat hipster with a beautiful asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
75117c77-8483-487d-8bfc-9001617b9a94	t	A fat guy with a beautiful scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
16d7408d-a7d9-4f5f-b4b5-1d620cf00d90	t	A fat cop with a surprisingly large erection.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
639da435-cb03-4d67-9e7c-1dcf217d43b4	t	A fat Batman with a sopping wet scrotum.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6ce1b8a4-29c7-420d-99ff-36a51848b652	t	A dentist with a sopping wet pecker.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
b3f9deb3-65a7-41e5-b0f9-153c4254800f	t	A dad with a creamy asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
fe634e53-4095-48a6-8bfd-d618db019764	t	A cranky surgeon with a glorious pussy.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3741d06b-ae5a-4270-9fda-89cdf85da77b	t	A cranky superhero with a surprisingly large cock.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
3e84e57d-344a-41b5-a103-ebdc07f02386	t	A cranky nerd with a sopping wet dick.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
720aa8b6-6470-4ba9-aa46-1a5b283e778a	t	A cranky hunk with a perfectly-formed asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
484c58ea-5a73-4a9e-8e42-e00f4dfb00f0	t	A cranky god with the world's smallest pecker.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
27fabe28-cee3-43b4-b6c4-e0924efab95f	t	A cranky god with a crappy asshole.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
cc97c9ef-1d75-4c4b-a921-a24f087154af	t	A cranky congressman with an impressive scrotum.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
a7fcc4bd-7e0c-475b-a834-a93a0a0878b2	t	A cranky CEO with the world's biggest dingus.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
257f695d-2cf4-484f-b9c6-10df0e0d79f2	f	This season at the Old Vic, Samuel Beckett's classic existential play: Waiting for _.	1	c61906cb-334e-4781-91a0-29f62d5b0fa8
0c6737ef-3a49-4234-935a-163ccd7b795a	f	Mate, do not go in that toilet. There's _ in there.	1	c61906cb-334e-4781-91a0-29f62d5b0fa8
fc5f2988-d809-449e-b75b-2731d26111df	f	Hey guys, welcome to TGI Fridays! Would you like to start the night off right with _?	1	c61906cb-334e-4781-91a0-29f62d5b0fa8
85523f31-4ea0-4aff-a6d6-8a133dd6683d	f	Dear Agony Aunt, I'm having some trouble with _ and would like your advice.	1	c61906cb-334e-4781-91a0-29f62d5b0fa8
bd80fd0c-f54f-43fe-858d-ca0154f9adf9	f	Channel 4 presents "_: the Story of _."	2	c61906cb-334e-4781-91a0-29f62d5b0fa8
21dedba4-a105-439f-bde0-d5f76fc02d72	t	Waking up half-naked in a Wetherspoons car park.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
8d4cafa6-9e9f-4bde-94b3-629f121a9bd9	t	The Strictly Come Dancing final.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
14b650db-39a5-4f1d-9b1a-8f02c11cde67	t	The Smell of a Primark.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
9ba5623f-83df-4328-b609-1630b580733f	t	The petty troubles of the aristrocracy.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
fae365e6-298d-495f-8f65-4c0a3fa3cf2a	t	The Hair Plug Club	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
43fa9545-9965-497b-b176-5ec31b8a399d	t	The bastard seagull who stole my chips.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
392a435f-1dc0-4134-96a6-e4d420da83dc	t	Slapping your knees to signal your imminent departure.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
a1f8fbc4-eb0f-41a1-9b53-9560b0eaf441	t	Sitting in a jar of vinegar all night because I am gherkin.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
8afd6636-b731-4779-8735-56972abdc22a	t	Scottish independence.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
08d21fb6-7395-42d7-ac77-934a7938382d	t	Ryanair.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b765fbb9-2dab-434b-a419-96fd6cd0ea88	t	Nicki Minaj.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
605581b8-41e6-49ed-9af0-bf7be1d42fb4	t	My Uber driver, Ajay.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
44d2fdb8-0c32-4280-b4a4-d6227bf4c278	t	Martin Lewis, Money Saving Expert.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
a7862850-9d94-429b-9fe8-7361ccabd475	t	Licking the Queen.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
c22aea8c-3a74-4764-84a2-21574fa2afa8	t	James fucking Cordon.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
fe8e0166-b635-4f76-96f5-c873d667e0be	t	Getting the same Boots Meal Deal every day for six years.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
76ef66cb-9377-4f1f-ac47-807b655e481b	t	Flat out not giving a shit.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
56b3f034-733d-4931-8558-a10192edb937	t	Discovering he's a Tory.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
a44bda17-60de-46cc-a8ea-362789c9b39d	t	Danny Dyer.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
327d0637-fe26-4ca2-b2f5-4b6b2abeeb36	t	cunninglus	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
20c24ef5-ba9b-4de6-9baa-65c7f74c3432	t	Brutal austerity.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
52b2176d-8ec4-4037-9515-20fedcf69948	t	Blood, sweat, and tears.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
ea1e2746-6328-4288-8534-b50dd9d97158	t	Being fucking stupid.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
7589241e-1adb-4bd5-ad2e-5c5e8d7a3b5c	t	Being a witch.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
a0aa85d5-a670-43c8-96e3-f3ba6ebc0bf9	t	Barely making £15,000 a year.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
ede5eba7-4b9d-4695-9fab-1f6fa59890e3	t	All my gentleman suitors.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f0c96da2-e25a-4297-86b6-cf3d0b58dc0d	t	Ainsley Harriott.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
e8efdf28-8a70-4a6d-8e94-123015412367	t	A slightly salty toad in the hole.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
50a879ba-2ae8-4714-ac71-a7d135e8b29e	t	A meat raffle!	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
62643598-bba5-4adf-b02a-55c7e1135443	t	A Ginsters pasty and three cans of Monsters Energy.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
12350170-431a-436a-bfa3-3c171fcc5ed2	t	A general lack of purpose.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
68db04b8-9e38-4511-9c48-695f9e95de62	t	A deep-rooted fear of the working class.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
050e3f2b-211a-4af4-a4a1-424d874a3399	t	A comprehensive understanding of the Irish backstop.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
14f2ef22-b8b4-4c62-97bc-675499af134a	f	Sure, sex is great, but have you tried _?	1	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
bb1f7e2d-14c3-4f60-9214-fe77a2634ee2	f	Do not go gentle into that good night. Rage, rage against _?	1	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
bb49a52d-78d5-45af-b1ac-05fc66dc9669	t	Watching the life drain from the eyes of my son's killer.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
2068bc6e-5cb7-4331-843f-3e07a05f2543	t	War with China.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
7de039e7-63e0-495b-ae98-4ff74cf7ba62	t	Using words to communicate.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
a4a8e576-32e7-44f2-9780-77bb4521aa04	t	Unwelcome sexual attention from grown men.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
47acd6c9-40da-43ea-b35a-cc8dd865e78b	t	Three hours of pimple-popping videos.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
fd4ec8b7-f3b1-4eb7-bbea-d13e05acf1a7	t	This horrible thing called twitter.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
8e2387a1-29e7-47b5-ab47-797173cd31f0	t	The whole Jeffrey Epstein thing.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
50b8426c-693e-4147-8c58-fc7d74dce807	t	The unspeakable horrors of factory farming.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
1781eaee-2b75-4763-b1fc-e918f2edc859	t	The salmon.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
05e354bd-4a26-4468-8f57-e6dd5b15bd6d	t	The joy of song.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
bd067666-192e-4a8e-8d46-9f9f5c2575e5	t	The bomb strapped to my chest.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
3c8cb1a7-a5bf-4776-9a7d-abcdccefdf9b	t	Sucking all the oil out of the planet and fucking off to Mars.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
5daee34d-76dc-4faa-88f5-37bedb09ece4	t	Saying "what's that?" And then stealing a french fry.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
99d99bc1-79f9-493e-a46b-f3df3b04b888	t	Really tall people.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
fb11f3de-71c7-4404-bf8e-14ac5a87e033	t	Losing a loved one to Fox News.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
74a8454e-07ee-44bb-8c92-c95805566499	t	Like 50 mosquito bites.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
8875e568-ae73-43b6-a9b5-f1037a815fc6	t	Just hangin' out, ya know?	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
e85cd914-6d2f-4e3d-bde6-f79f5f853ca0	t	How good this cantaloupe feels on my penis.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
870c7cdc-544a-4a22-9158-9dd613801aa9	t	Harnessing the power of steam!!!	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
24bcb157-08d8-426a-91b8-f14e017b118a	t	Good ol' fashioned face-to-face conversation.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
42c671c2-7a0c-47ba-bca3-4bbf6fb33027	t	Getting sad for no reason.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
67eee4a6-ec0a-42de-b8f1-16bd2b859399	t	Getting my butt trapped hilariously in a tuba.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
9a1d6b02-23e3-4e5a-80d6-3f8be970d190	t	Forming a monogamous pairbond.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
a8d711e7-b44e-492c-a670-b5a12c86ca5c	t	Delighting in the pain of others.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
a3594d5a-dfea-48c6-9dd9-c626ef52e002	t	Chemotherapy.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
75a0b7d7-a164-41b3-b1da-5223663aab40	t	Being young and in love in New York City.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
bf7ffd1f-6ebf-4688-92ce-339be137519f	t	Being terrified of a single bee.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
88e177b9-4df7-4f1d-a0b3-7541dc51a1dd	t	A pointless job at a soulless corporation.	\N	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
5673148f-b923-4647-940c-6c3301e3bf82	f	You want _? You can't handle _[SAME CARD AGAIN]_!	3	67582170-8e93-4677-8c02-eab952da4da6
80953981-6db5-4647-8f62-3491093feb9b	f	Oh, whoops! These are not the right pants for _.	1	67582170-8e93-4677-8c02-eab952da4da6
5efa94ac-1a7f-4393-88bf-eec76e7bbdc1	f	HELP WANTED: Need assistance with _. No experience necessary.	1	67582170-8e93-4677-8c02-eab952da4da6
7127f4e2-e99e-4e37-b79f-7c6b22b0c7ab	t	Watching the show Frasier" and feeling the emotion "pleasure."	\N	67582170-8e93-4677-8c02-eab952da4da6
2bafe3c1-04d1-4f95-924b-c6db1fdb1cf7	t	Sitting atop a pile of tuna like some kind of tuna queen.	\N	67582170-8e93-4677-8c02-eab952da4da6
5562d304-58b8-48f0-9f98-cc97fd6925d7	t	Getting spit on by one hundred women.	\N	67582170-8e93-4677-8c02-eab952da4da6
dca1dbe5-c34a-4702-9914-1e4adeef02a5	t	Getting radicalized on YouTube.	\N	67582170-8e93-4677-8c02-eab952da4da6
a5b3391c-f15f-45b9-94ce-8a91d5629e86	t	Dumping Mountain Dew Baja Blas all over my gorgeous natural titties.	\N	67582170-8e93-4677-8c02-eab952da4da6
3c2eb20a-8b40-45eb-9805-69759a8a73a3	t	Aborted boat babies going overboard.	\N	67582170-8e93-4677-8c02-eab952da4da6
ce6c626b-6ade-4aa6-8e6b-47de03da2610	t	A juicy lil' booty going poot-poot-pooty.	\N	67582170-8e93-4677-8c02-eab952da4da6
0a911629-b192-4401-b8ea-6c52cfb0abc2	f	You won't believe what's in my pussy. It's _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
314e3dc0-77aa-4b3d-b00e-16c99d4d349d	f	You know who else liked _? Hitler.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
54b6431f-1318-4295-a6e9-60cbc785dbe2	f	With a one-time gift of just $10, you can save this child from _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c58760b6-f8f1-4199-a607-0b901401b1b9	f	Why am I laughing and crying and taking off my clothes?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0a475a34-62d4-47b5-8081-1793ae4c299e	f	What's the most problematic?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9d4e6a43-9ac5-4ef2-8ecc-7d0e024e8d6c	f	What's the gayest?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0b7d08ac-8eae-4b29-934e-e1437f258bef	f	What's about to take dance floor to the next level?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
98b24a5e-e604-47f5-b890-3d89f83184e1	f	What's a total waste of Hillary Clinton's time?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8aec79e2-1eef-4d5c-ad41-c6cca6477b20	f	What will end racism once and for all?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9530c84b-6c65-45a2-b2cd-be2041786b29	f	What turned me into a Republican?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e23c1e3f-c8a1-4a94-95b9-27787e050d78	f	What totally destroyed my asshole?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fcac0de8-a287-4fd9-b3c6-0459e8dc2505	f	What sucks balls?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e64f785d-c039-4202-a546-9e03c2e8bb29	f	What are all those whales singing about?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
69b499a8-58a2-45a0-9fde-43ed85406d0b	f	Well, shit. My eyes ain't so good, but I'll eat my own boot if that ain't _!	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
dacf3945-8368-477b-869f-b021cbc788eb	f	Well if _ is a crime, then lock me up!	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
3f4e602e-ddb1-4bd5-95c1-a09996cb7c60	f	We do not shake with our left hands in this country. That is the hand we use for _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2c7bbbb4-e7d0-4904-86d7-5e80b1b8caf5	f	This Friday at the Liquid Lunge, it's _ Night! Ladies drink free.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
40e8a157-7178-4d31-bcf1-7da18ddb1630	f	There is no God. It's just _ and then you die.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
1fd8b297-ab6d-4cf8-abb9-51c4bae36921	f	Then the princess kissed the frog, and all of a sudden the frog was _!	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
cefc8b5d-58a5-4c8b-855a-c7a0eb546ccf	f	Summer lovin', had me a blast. _, happened so fast.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f26cd00f-7fd6-4383-8d9a-633c712fcdc6	f	Son, take it from someone who's been around the block a few times. Nothin' puts her in the mood like _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f59dcf30-f897-45aa-b206-598e4916d1b3	f	She's just one of the guys, you know? She likes beer, and football, and _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6dd61fbe-4b19-48ac-be4d-c76f25a73b6c	f	She's a lady in the streets, _ in the sheets.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
dbe430ae-e855-45ea-87a4-c2e64c180e00	f	Run, run, as fast as you can! You can't catch me, I'm _!	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bc8df7aa-8a2f-493d-aa94-4d7bd5666ad0	f	Poor Brandon, still living in his parent's basement. I heard he never got over _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
284c76a3-9aa0-4e11-9b75-fcd8fe6354d0	f	Ooo, daddy like _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8dacee77-c01b-4f95-a685-bbe4f1d73d32	f	One more thing. Watch out for Big Mike. They say he killed a man with _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
46cbe292-6053-417f-8d30-0b24fa89545e	f	Oh no! Siri, how do I fix _?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e675e68a-f25a-4ba2-80cc-fd9286df7aff	f	No, no, no, no, no, no, NO! I will NOT let _ ruin this wedding.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f4dc844f-d0bf-43d0-acb6-2ee0446d842c	f	Most Americans would not vote for a candidate who is openly _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
510f6350-c739-466d-8c59-dd3a2f9c5b36	f	LSD + _ = really bad time.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
81196b3b-1435-43e4-92b2-bb7df5b9f7eb	f	In the 1950s, psychologists prescribed _ as a cure for homosexually.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
68862baf-33dd-47fb-ba9b-186ad66bea1d	f	If at first you don't succeed, try _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
95de02ce-9d8d-429b-a5dd-5b11d707007d	f	I've had a horrible vision, father. I saw mountains crumbling, stars falling from the sky. I saw _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5e0cc90e-465f-475d-ada3-07d8ce91f3f5	f	I'm sorry, sir, but your insurance plan doesn't cover injuries caused by _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
51aacaa2-5abd-41eb-b4bd-4bb5dc08472a	f	I'll take the BBQ bacon burger with friend egg and fuck it how about _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ed85a68c-d2b8-4f4e-b01d-23e3bade4d16	f	I tell you, it was a non-stop fuckfest. When it was over, my asshole looked like _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
46ed442c-0331-4484-9854-94e0e8dafac8	f	I may not be much to look at, but I fuck like _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
59b04612-3df2-4e36-af95-1ed7d7c5803b	f	I got rhythm, I've got music, I've got _. Who could ask for anything more?	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
211956f7-f9df-41e8-8bd9-dcc6c46b8357	f	I don't believe in God. I believe in _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4b4beab4-4d5a-4128-be4c-1e37809b6605	f	Google Calendar alert: _ in 10 minutes.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fe2758b9-213f-466c-8839-821650a32bee	f	Girls just wanna have _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d69d7071-460d-4f3b-9d2c-12e52b1e885b	f	Feeling so grateful! #amazing #mylife #_.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ca2fd78f-c450-4381-8873-b5936a122eb6	f	Errbody in the club _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
dde7fc50-700e-4dd4-a4ab-8ce0b4c58b7a	f	Dance like there's nobody watching, love like you'll never be hurt, and live like you're _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5896f1ff-a0c8-48cf-a160-795016a1ef06	f	Congratulations! You have been selected for our summer internship program. While we are unable to offer a salary, we can offer you _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
21538cf8-b031-4e97-adb2-b55dc7a78fc5	f	Coming to Red Lobster® this month, _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7fe4b5fd-61f8-4674-ad70-84dd7881034a	f	CNN breaking news! Scientists discover _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d85b9f08-7b21-4aef-897a-0f69ddd7262a	f	Best you go back where you came from, now. We don't take too kindly to _ in these parts.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
66dedb46-85b5-4c14-86ab-c1962644c2e8	t	Playing my asshole like a trumpet.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
54a25dab-fd1e-48fc-914f-d365771b9846	f	As Teddy Roosevelt said, the four manly virtues are honor, temperance, industry, and _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
03e731c8-0e85-4d33-a1df-8615b27b7463	f	As reparations for slavery, all African Americans will receive _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2a0c21c0-832f-41ca-ab44-dceb1bcd61e9	f	Art isn't just a painting in a stuffy museum. Art is alive. Art is _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6ed30669-0593-4e1e-bb12-feba1a148625	f	_: Brought to you by _.	2	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
cd4ab3db-2d89-456e-a903-d435183bb3c4	f	_ be all like _.	2	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
83bce650-5f52-45d2-8810-8ab933196625	t	You.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a60e8b52-a5ae-4861-a489-f153d693288f	t	Working so hard to have muscles and then having them.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ff7a8f6c-77cd-4579-b5b7-29bcaf200dad	t	Whooping your ass at Mario Kart.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8a24cf71-1e36-439f-a00a-484de0d0e162	t	Whomsoever let the dogs out.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
dc6e1661-756a-465c-bbe4-0069ea8df5cb	t	Who really did 9/11.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
460475a4-861e-48d2-9e5c-604a8429154b	t	When the big truck goes "Toot! Toot!"	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
1e5e320f-1a43-42c6-85dd-d03389e2f02c	t	Water.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a25cfc0d-be12-4bad-8908-415b943184d8	t	Watching you die.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ac99b8bf-b3d7-452a-9886-93f05909fcc3	t	Watching a hot person eat.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c69fe85c-161c-4e1a-8bfd-43575458b83e	t	Waking up inside of a tornado.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
341352bf-6463-4c38-8a99-a9da4a537ce6	t	Two shitty kids and a garbage husband.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b08601e5-273b-46fe-b419-cad067e2d8ed	t	Two beautiful pig sisters.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
21f4ecb8-ded1-4ff6-b245-7384bd79c384	t	Twisting my cock and balls into a balloon poodle.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f95c85c9-46ff-42db-a704-e0eff5baf9bf	t	Twenty cheerleaders laughing at your tiny penis.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
77d2f929-ed79-49c0-9193-eca7abfd6fe4	t	Turning 32.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a0508712-559c-4090-a877-bd5e1d8ef92a	t	Trevor, the world's greatest boyfriend.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4fa66e72-9d02-429c-a259-3e784ba12ce7	t	Trees.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7b5d0313-8507-4f3d-84f4-3bda003530e8	t	Tiny, rancid girl farts.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
03ec9d31-0895-4266-af5b-debd674e8a41	t	Three hours of nonstop penetration.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d7072927-0506-4a9f-aee0-6cd192802fa9	t	Thinking about what eating even is.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
87b55b4a-33d9-413a-bf7a-62fa50e69499	t	The wind.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7d2e8490-c14b-4905-838e-9f184f8055e2	t	The sweet, forbidden meat of the monkey.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fb7227d5-e50a-4f96-9088-eb35745b9778	t	The secret to truly resilient hair.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
631adb4b-61d4-47a6-b229-628c1c641346	t	The ol' penis-in-the-popcorn surprise.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
119049c7-245a-40b2-b39c-4e4e2950f2cc	t	The mysterious fog rolling into town.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
04f61ab4-b343-4cd0-b740-c105a9859743	t	The lived experience of African Americans.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ed07c3fc-a532-43da-8403-8b80d708c10e	t	The LGBT community.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f11c426e-1c60-4b9f-ace0-dee557c79ed3	t	The hottest MILF in Dallas.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
20d234f2-ddab-451f-98cd-407ff9c1cc53	t	The graceful path of an autumn leaf as it falls to its earthen cradle.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
399fa234-754a-411b-9321-0d9e904856b6	t	The government.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f67d2102-2df7-4aab-944d-1c969796aeb7	t	The full-blown marginalization of ugly people.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2dd086c9-b6d9-4757-9efe-83ae4c00bd6d	t	The full force of the American military.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
28039b3c-b141-475d-9d35-b7619aa24c90	t	The flaming wreckage of the International Space Station.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0355eb6f-1b2b-40c0-99d8-b9f2487d1475	t	The feeling of going to McDonald's as a 6-year-old.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
3ab32cbc-b336-438b-b656-52e19dcdb0ca	t	The fear and hatred in men's hearts.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4e64ff38-4ce6-4778-a28f-815d0e2b51bc	t	The clown that followed me home from the grocery store.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a7696793-7577-4ee9-bff2-71a94cbe8d27	t	The bond between a woman and her horse.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0ef6e403-dd4a-4d36-a473-fa38252e6a34	t	The body of a 46-year-old man.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0f238391-ab2c-4664-9a6d-bdd9978cb14e	t	The best, deepest quotes from The Dark Knight.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b85aab2d-6fb6-4324-b824-b6930f9aa6a7	t	The amount of baby carrots I can fit up my ass.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8ad105af-7c8b-4702-8f58-d5fc592d98e4	t	That chicken from Popeyes. ®	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e2723ff0-a850-409d-b12a-cc9ae7151df6	t	That bitch, Stacy.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4e6e7154-397d-4849-a4d3-7aa19c81f6cf	t	Tender chunks of all-white-meat chicken.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d58d5e2b-c761-4f68-affa-ade82b922fb1	t	Taking the form of a falcon.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5416a1b2-2fec-4307-81ca-d998b4fdd307	t	Tables.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0a003606-086d-4faa-8d18-ee25b1795097	t	Systems and policies designed to preserve centuries-old power structures.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d482193b-79da-49eb-a538-69e1896a35f8	t	Sudden and unwanted slam poetry.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
99518931-360e-4795-9e57-1ed766f41c01	t	Sucking each other's penises for hours on end.	\N	64bad7bc-cd80-4d9d-8ef7-49da0f60d234
f43747ca-8f90-4780-9531-e9e86f699deb	t	Straight blazin' 24/7.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
1127f83c-3305-4953-bb6e-6c1f7a239b78	t	Starting a shitty podcast.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e72667cd-8680-4d42-9dec-7582a1cabaa3	t	Some real spicy shrimps.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
20a21ea0-fab2-4278-84c1-32757300e3f6	t	Some of that good dick.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
49b97873-2889-4339-94f8-efc5120df3c1	t	Smashing my balls at the moment of climax.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e870acc0-bcdd-4c90-93b7-10f579303aee	t	Slamming a dunk.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
addcbdfe-d031-4cee-8098-de77d7e7293c	t	Showing all the boys my pussy.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6e59026c-3e92-4566-851d-9b01c664c5d3	t	Showering praise upon the Sultan's hideous daughters.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
acdf062e-3b8e-46b2-9401-cc76fe0af05b	t	Self-identifying as a DJ.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
70e6bc57-c917-45c9-a004-0659d115cbff	t	Seizing control of the means of production.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8b9c4134-ba2b-4f20-b967-1c0b94d789a9	t	Scissoring, if that's a thing.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5fb31565-b9b4-4a3f-8be5-734c5792190d	t	Salsa Night at Dave's Cantina.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0d93f493-5cea-4065-b330-f6ddc55e817d	t	Rubbing my bush all over your bald head.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c7d555df-d4e2-47cc-9e33-f40039589ddb	t	Rolling so hard.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
017252b0-5a9e-4ba1-a7df-a763416c5eed	t	Rock-hard tits and a huge vagina.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
59202694-a39d-4beb-bc83-45ab48e469f9	t	Restoring Germany to its former glory.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
df693bac-96fb-4af8-9f3d-ae20d00bd964	t	Regurgitating a half-digested sparrow.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
04605cad-d037-4aa5-b7d8-d476e74d0339	t	Reaching an age where barbecue chips are better than sex.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
3ef4eeb1-622d-4700-8379-f614c8197f73	t	Raising three kids on minimum wage.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
195a4bf2-d2a0-449e-9208-19ac6712663e	t	Quinoa.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
760e169e-bd99-49a3-9e43-fc9f0f0001e8	t	Quacking like a duck in lieu of a cogent argument.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ec0bc8a6-8f58-487c-9a5f-41734b25f585	t	Putting more black people in jail.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e001e2b4-23f2-48cd-8a9c-7f2d1b03a266	t	Pretending to be one of the guys but actually being the spider god.	\N	a95919a6-97a3-40dc-84ba-702fed111361
99fd253f-d0f0-41ed-8a3a-ffca541f56ed	t	Prematurely ejaculating like a total loser.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
164f3325-43a2-4e1f-b2af-1921522f923f	t	Pooping in the potty.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9a3147e7-cd52-4499-a706-5315a697919c	t	Pooping in a leotard and hoping no one notices.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2350912b-8c4e-49fe-a6c3-a78a9eec9b1d	t	Political correctness.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0c42b780-1bfd-49ae-889d-d50980af7afa	t	Plowing that ass like a New England corn farmer.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
423be01e-26e6-4c13-b879-244e492f6e8d	t	Picking up a glass of water and taking a sip and being the president.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fb08fe5a-0e7e-4977-b908-01be7c4a27d9	t	Period poops.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b4bd891f-80fb-43c1-89e2-96f8edac4aa6	t	Participating.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6219e137-471b-47d9-8117-802167443cad	t	Overthrowing the democratically-elected government of Chile.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
39a4c962-3959-42d8-81a0-da527b15a4cd	t	Out-of-control teenage blowjob parties.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
66424fb4-14be-40ab-91a9-84f7fde9655b	t	Our baby.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c4fd46e6-26a2-4cd1-9ced-ea84a4ad6e9d	t	Opening your mouth to talk and a big penis flops out.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
18fdbbb6-3587-48eb-8598-b1fd3bdb2cc8	t	Onions.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
cdfb8414-270b-492f-b52a-d1428d8cf96b	t	One of those "blow jobs" I've been hearing so much about.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d659cf7d-24a7-462d-bde4-9e3a9fc6a267	t	One of them big-city Jew lawyers.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a0bf6ae5-8432-4762-b43b-d973a6db9e86	t	Objectifying women.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
62ab2ca0-f916-416a-9dc9-bf99adf0c3b5	t	My huge penis and substantial fortune.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a8a6fa39-1805-42e2-9610-ca8c8fa53f84	t	My dog dying.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bb3b3328-bcd1-40a8-bfde-d1823f40f7b8	t	My brother's hot friends.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d19a82da-15d8-4cb7-acda-b960d0f9b7e4	t	Moon people.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2ace3fa1-5f38-4245-83c6-33cfe99eddfb	t	Mommy and daddy fighting all the time.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7e191388-e81e-411a-9249-18843431ef17	t	Mixing M&Ms and Skittles like some kind of psychopath.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
687e265c-06ac-4d1d-bc16-2dbbb7659104	t	Misogyny.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5edac65d-0f35-4e84-94d0-6e9f388910eb	t	Microaggressions.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2d01ce38-00c5-4a98-86bd-1aed2ecad5b5	t	Mental illness.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d8dea138-6c6b-4669-8858-4d693f3699de	t	Menopause.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
590fc805-f265-4c26-bdbf-40609cbd4dad	t	Melissa McCarthyism.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7f80e62f-ca5d-41fd-a114-c15345a50492	t	Meatloaf, the man.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fa2745e4-1125-4be2-b217-c4e4a68919c9	t	Meatloaf, the food.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9af2d017-1678-4697-8b25-8321cb3aba09	t	Math.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
54fd5163-d157-4cbd-8371-231f0166ad17	t	Making out and stuff.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
40fe8d0e-ca3d-40cf-9a0c-edd5290a483c	t	Loud, scary thunder.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c4e7db3f-8416-4ae3-9400-1658ac137f01	t	Libertarians.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
aa6e89f0-d5a2-4993-ae00-58d0c1f60681	t	Late-stage dementia.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6ff6fb4b-2aa4-479a-856b-adfa582258dd	t	Just now finding out about the Armenian Genocide.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
69d3a15b-8b16-400b-80e7-7c7873c2fd39	t	Jeff Bezos.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1cd13a30-4756-48de-a978-d859c612d2d9	t	Jazz.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c8c9edcd-7f8d-46a0-bdbf-86066a17b467	t	Jason, the teen mayor.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5c60bfab-a1d7-4d81-bbc3-1691366a7beb	t	It being too late to stop having sex with a horse.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8df1a9aa-46e8-4063-8625-8e2d23277cd7	t	ISIS.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
164500e5-25e6-4797-9b6c-4ffb5b28dd89	t	Informing you that I am a registered sex offender.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
597bded1-c67a-421f-ab7f-0e50f9b1ec63	t	Huge big balls full of jizz.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fd83ecda-07fc-4d00-8522-20c995c39145	t	How strange it is to be anything at all.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
70fa1675-00a7-4e45-badf-9f7db10fa4f2	t	How sad it will be when Morgan Freeman dies.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
18a23b39-b90d-486e-b52d-02cf4f05e588	t	How great my ass looks in these jeans.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e57fb602-4ee6-48c5-8211-667decf546b3	t	How good lead paint taste.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6dbdc619-874e-4798-bf16-746cd1ba5e27	t	Hot lettuce.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a726dd9c-ab70-4293-84d5-0e30582af35d	t	Homework.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c58185fc-0661-4564-bae0-e7f5698ebac1	t	Holding the proper political beliefs of my time to attract a mate.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
02c54afe-2d84-4b32-ae39-a9d8c152266a	t	Having sex with your mom.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fb81003e-445b-4ec5-b1cd-598f25a3be6e	t	Having sex with a man and then eating his head.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
16f69662-5286-4b60-a560-0ae8b210bd52	t	Having sex with a beautiful person.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a9e93359-3448-4fba-bcea-00d7467df79c	t	Having an awesome time drinking and driving.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
96e936bf-f017-4644-85a5-72e1f961a9dc	t	Having a vagina.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9bff9769-d143-4b5e-a4de-628b6200e6d2	t	Hating Jews.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a7e8ee8e-9f00-4645-9941-75d89979b2ad	t	Happy daddies with happy sandals.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bf0c3e58-677f-4580-b909-1ee7a536d95c	t	Gus: the Palsy Cat.	\N	4ac14a35-038f-4a9e-b26a-876e50aebbcb
e37af1c6-5482-4218-a245-9e38ce10e96d	t	Grunting for ten minutes and then peeing sand.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2fe8208c-510f-4c3e-804f-72bd9bc5cf7e	t	Gregor, my largest son.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b6c0e769-7aa9-4d29-8007-22cad699ea83	t	Going to bed at a reasonable hour.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0d1c550a-7e5a-474b-ab91-8ae5b258f6c8	t	Going around pulling people's tampons out.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7bbc8af8-75fe-41fb-bed6-87bf42a9fc53	t	Getting trapped in a conversation about Ayn Rand.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
77d82bcb-d9b7-4dde-b311-382ccd8da989	t	Getting this party started!	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a7a3b092-9d4e-4e53-9ab9-a6ac602ca036	t	Getting the Dorito crumbs out of my pubes.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
3ae0395b-3ace-4ee8-893f-688cc58bffb1	t	Getting pegged.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c5c7dad6-96c4-47be-b564-4c3e12637c0a	t	Getting naked too soon.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
452c7a26-8a41-40e2-bb95-19ab8a0b9899	t	Getting laid like all the time.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c1cbf98c-ad38-4b79-8780-0235e35ce7aa	t	Getting killed and dragged up a tree by a leopard.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c3cf70cd-9f47-43d6-b963-e057e302c85d	t	Getting high with mom.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
43213f48-d304-46be-86e3-350a5be46008	t	Getting eaten out by a dog.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4a52b1a8-5f04-4f15-899c-cd1219883bde	t	Getting blasted in the face by a t-shirt cannon.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8c632f3f-3121-4ded-8490-8fc68731bf6b	t	Getting aborted.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6167aa50-eaed-4bfc-8e8e-1af5c5417bce	t	Gazpacho.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
09ac3104-c48c-4651-9019-83d02986a428	t	Gayle from HR.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d4103702-5d99-4879-9c8e-c891accb7a18	t	Gay thoughts.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
18edb972-c94b-4443-b3dc-0fa30cf21945	t	Gary.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
cc769aac-badc-4ed0-a1e1-1dced81eaa6b	t	Fucking my therapist.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
cc6e2293-ec19-4332-ab66-5628245f44a1	t	Fucking me good and taking me to Red Lobster.®	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e6fb08f4-56f5-4d9b-ae2b-29cd3d31b2d8	t	Founding a major world religion.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b1326e7c-f1a2-44ab-a337-ed16d4e8a327	t	Forty-five minutes of finger blasting.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
280c4906-ff9e-4a00-b9aa-39a56dcb8e1c	t	Finding a nice elevator to poop in.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
d4010a9e-416b-4adc-824a-dc89cb1945ce	t	Film roles for actresses over 40.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8795f8b1-0f58-4f39-a7d0-6683571f23fb	t	Feminist men.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ffb390a3-804d-4e3a-9967-f9a2e92d5f13	t	Feeling the emotion of anger.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
83f3dc92-7e69-40f6-88b5-1dbed45edf54	t	Farting all over my face with your tight little asshole.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bee8916f-ba58-4524-bf4d-21a1f4a7229d	t	Farting a huge shit out of my pussy.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
250814ea-80a5-4a4d-b9dc-c75f8d88f19b	t	Falling into a pit of waffles.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
73781531-a913-4a6c-b583-ec54cb111830	t	Facilitating dialogue and deconstructing binaries.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
1cd5d59e-3373-4ee4-b5e7-1da36eecc7d1	t	Exploring each other's buttholes.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
543dfb7a-c247-4a12-ae17-c9717a0d763d	t	everything's for sale	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
af796458-d5d2-40d7-b4cb-a9d93f75f7f1	t	Every man's ultimate fantasy: a perfectly cylindrical vagina.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
48fc9468-9a20-4b32-917c-fd72f6ad28c2	t	Eternal screaming madness.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7942a689-d9c3-4ba4-89ca-e904197c952f	t	Esmeralda, my most beautiful daughter.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ca28dcc8-1ea5-4f5c-8cc9-cbe92c91b72a	t	Ejaculating at the apex of a cartwheel.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8ced7de2-4a03-44df-8f21-59d155a613bc	t	Eating too many Cinnabons and then vomiting and then eating the vomit.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
505f5a1c-3fac-4f2b-aee4-42209c905a9e	t	Eating people.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6e85ee2e-360c-4fe4-a256-c3765314e84e	t	Eating pebbles, shitting the pebbles, the eating the shit-pebbles, and then shitting those pebbles again.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
10975e6e-ba63-4b72-93cf-eb049a04ddb2	t	Eating ass.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7244d596-be74-4e1f-bcf3-ac9d148508a1	t	Dumpster juice.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bd2382b3-fa38-4c34-a02b-50c4dedd50f8	t	Dropping dead in a Sbarro's bathroom and not being found for 72 hours.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6f5dfd2c-7f35-493c-8105-42a3d2f08d55	t	Doritos and a Fruit Roll-Up.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
971edb53-56a4-4737-b355-b66b3a11a49a	t	Dominating a man by peeing on his eldest son.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
53810e81-64a1-4562-85ee-d0939d2bc260	t	Doing a somersault and barfing.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
6b469edf-f076-43ae-8d2d-68372731241a	t	Discovering that what I really want in life is to kill people and have sex with their corpses.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
26eb1cb3-29e0-4f02-8637-0d4d19ce9f37	t	Dis bitch.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0a2fe49d-6897-4221-84d5-00fc6ec7ca75	t	Denying the Holocaust.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
68b0d2c4-3a60-4d4a-b045-36804f800bc7	t	Defeating a gorilla in single combat.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5b34f1c5-2bff-4c76-9a34-8e4aa958b93b	t	Daddy going away forever.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
3b9246d7-f2a9-4eb4-9849-80001f22145b	t	Crushing the patriarchy.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0a1f9bf6-4810-40e4-ae3c-eceb2d5109ae	t	Critical thinking.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
65ab1061-edb1-4a38-b8cb-e57762f9935f	t	Creamy slices of real, California avocado.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e7d53785-19c7-45ad-b3ab-30885b410f31	t	Crazy anal orgasms.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0c88d788-df52-41d3-b2e1-6d5e6196220e	t	Content.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
526ad912-a032-4424-a547-b426a7d0fed6	t	Consensual, nonreproductive incest.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2d4794e2-e29a-4b4f-9414-15e0516d18c0	t	Condoleezza Rice.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4550d86d-e592-4b5c-94ad-bb1f6c85a895	t	Comprehensive immigration reform.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e1beabee-ee07-4f90-8405-6a08219439f5	t	Chris Hemsworth.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
dcf6bdd9-44ce-47f3-a3c2-4ca4e2ee6b16	t	Chipotle.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e1e8c415-ffdd-421c-9fbe-2c9e44716624	t	Chinese campaign clothing.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7a252cdf-acec-479d-887e-07209e62e037	t	Child labor.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
70bb2bd7-313d-40a8-8a43-c26d20238c7c	t	Catching a live salmon in your mouth.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
745e1dbc-8bb9-4a61-8d87-ee925fa79a57	t	Brunch.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b85a7e3b-f904-4481-8522-5fc3c3b512a4	t	Breastfeeding in public like a radiant earth goddess.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
780b73d7-001a-4139-829a-42d0730fcae7	t	Blossoming into a beautiful young woman.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4d9a6656-b853-4047-b0a6-2ea32795a2a4	t	Big, smart money boys tap-tapping on their keyboards.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
939ba990-e41f-4cda-bebd-59254c3e7327	t	Beyonce.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a0889176-a0e5-46ba-983c-427c6e3d074c	t	Being turned into sausages.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
b547f91e-317f-4633-b355-17074ff06522	t	Becoming the President of the United States.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
960a1c05-2336-4559-ae8c-c399ef69c052	t	Bad emotions I don't want.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
744f8060-75cb-4a67-8b20-352a43a96bd5	t	Awesome pictures of planets and stuff.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
45cabadf-4000-4357-a73b-73fe2f5d7bfa	t	Assassinating the president.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9a58d9fb-568c-4a67-8a81-a7faeaae1356	t	Art.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8dd4bd71-812e-4688-9aeb-5234f436c114	t	Antidepressants.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
483adc72-0980-4533-99c3-49f46df5795a	t	Anal.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
91ce419e-bb85-412e-a4da-41c2c5682457	t	An X-Man whose power is that he has sex with dogs and children.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2fffc834-fae6-471c-a360-9f9b511b42c6	t	An older man.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ec457e04-73bd-47b1-aa5d-4fa257520d1d	t	An old dog full of tumors.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
892ed27b-47c0-4451-9008-b4e5594ef93b	t	An old dog dragging its anus across the floor.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
dd6c7e66-0b67-4848-b6a5-cbe3746c5a1a	t	An incurable homosexual.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
471bbcd4-4baf-4407-936c-ac1f3b791f5c	t	An empowered woman.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
016f5b63-c047-444a-b675-b85b96806bc8	t	An arrangement wherein I give a person money and they have sex with me.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bb0beb1a-9567-4040-8401-f5ea656ce8a3	t	All the people I've killed.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
af6cd243-9539-41dc-ba79-196e5473278a	t	Albert Einstein but if he had huge muscles and a rhinoceros cock.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
45cbcc5c-a00a-40ad-a7b6-cde9a0469f21	t	Aborting the shit out of a fetus.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
70471a9b-b2d9-4234-99e6-dea4c833f6fa	t	A woman's right to choose.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
62154a1a-56b1-4df6-8e66-a0bb30e24646	t	A woman's perspective.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
9a111939-7ff9-4ae5-987e-a6b40e7fb293	t	A weird guy who says weird stuff and weirds me out.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c51cd495-b342-433c-83a6-c8e9412e1e49	t	A tiny fireman who puts out tiny fires.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7d9e4be4-2808-4c39-9696-1d5a331a4e83	t	A terrified fat child who won't come out of the bushes.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7bd2bcfd-887b-411e-9212-33ebb8ac8978	t	The Rwandan Genocide.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
913cfff5-c398-45c4-b117-4d95a1776975	t	A strong horse and enough rations for thirty days.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
952ca66b-1724-48d3-a778-00a69c5bc81b	t	A slowly encroaching circle of wolves.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
fa6e073e-dfb4-4233-93f7-d28bbc1584ba	t	A negative body image that is totally justified.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ccccd503-f8dd-413f-b312-2730ab90490f	t	A medium horchata.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
c9e51c6f-8958-4288-bd01-31e43bf6c1bf	t	A massive collection of child pornography.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
bdc1dc2e-f95b-4477-acc5-32035e73e9da	t	A man with the head of a goat and the body of a goat.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
7125e9af-c557-4544-ac43-e147563738e2	t	A man in a suit with perfect hair who tells you beautiful lies.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
54fa74c9-63ce-4bd0-9a5e-fa513712263c	t	A long business meeting with no obvious purpose.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0830105f-38a3-400e-9c23-2f828d1f2d4e	t	A hug.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
a244f24c-8126-45de-8c2a-0cb0410f28c5	t	A gun that shoots cobras.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
da26f834-247a-4cb2-9bd9-e2236d22d371	t	A genetic predisposition for alcoholism.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
814695d9-cad1-4998-9b7c-77554b63c729	t	A finger up the butt.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ea34460c-fb63-49e9-9496-e1912b9e3a99	t	A duffel bag full of lizards.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
72647e58-ec7e-496f-8b35-53e865f3c10e	t	A dolphin that learns to talk and becomes the Dean of Harvard Law School.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
5c94b4d6-57e5-4b89-8201-759b48aa96cf	t	A creepy child singing a nursery rhyme.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
92434ac7-b734-484b-9387-3a506e0c051c	t	A creature made of penises that must constantly arouse itself to survive.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ba849fbf-8359-41ff-b317-a231d37d238b	t	A cold and indifferent universe.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
005f52b3-fae1-49f4-8138-2a53461c65ef	t	A cheerfulness that belies a deep-seated self-loathing.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
620b0c15-f8dc-4ac6-83a0-53e46c8cbd40	t	A burrito that's just sour cream.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
cc19b2bb-9dc6-4974-a28b-18f131eb3243	t	A black friend.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8a145787-ed57-4aeb-99df-b90062b8d9c1	t	A big, beautiful mouth packed to the brim with sparkling white teeth.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
0a188929-9804-42a2-abd8-42fa334a444a	t	A big ol' plate of fettuccini alfredo.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
f4bf9526-df78-4f3b-b893-5601f74320b4	t	10,000 shrieking teenage girls.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
09cbe3b8-5d45-41ec-ac83-cb64b68bd8ab	t	10 football players with erections barrelling towards you at full speed.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
6cfe0ab1-662b-44f9-9ff3-c69431d02fe2	f	Young lady, you better knock it off with _ or you're grounded!	1	b79ee076-4270-4793-b5ae-15b60686eedc
bdebd531-c51a-4a61-a1ae-e703b6ed299c	f	You guys, you can buy _ on the dark web.	1	ea613201-36d3-406d-be15-e7496396a199
a439d869-c8a2-4193-8a06-e359d59dc561	f	What's going on with your female servicemembers?	1	346fd14d-a972-4c0b-b147-bb47965e1730
17a8ade3-7094-4362-ad52-8f027a4d9ebf	f	Wes Anderson's new movie is a whimsical look at _ starring _.	2	346fd14d-a972-4c0b-b147-bb47965e1730
5aeb54f3-3fdc-4f28-b3e3-82e3c2f6174b	f	We played baseball with _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
3e04e098-0792-4e4d-b58d-92ca189a244c	f	The Juice is loose.  And by Juice I mean _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
245a0b0a-99f7-4afb-833d-673819089180	f	She's a lady in the streets, _ in the sheets.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
41073b53-bc4e-4b21-bd5a-e7da4b3a8d8d	f	Other parents worry about _ but I stress over _.	2	346fd14d-a972-4c0b-b147-bb47965e1730
bba4efa4-da68-456a-be13-24350589aec1	f	Many questioned the Smithsonian's decision to feature an exhibit devoted to _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
6d081537-46df-4f2b-9ba9-f1fc0aefa31b	f	It makes me sad to think about?	1	346fd14d-a972-4c0b-b147-bb47965e1730
b0c92c9d-6728-47d6-b245-b722a41ab0d0	f	In the category _, the first prize is awarded to _.	2	346fd14d-a972-4c0b-b147-bb47965e1730
03eb4f85-daf7-4573-ae83-d9879c5ccd69	f	In Rome, there are whisperings that the Vatican has a secret room devoted to _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
f9306487-d74b-4126-bf33-1d732fe99bbf	f	If you can't love yourself, how the hell you gonna love _?	1	8d8215b4-ebc5-4665-96a5-40cad1637426
45257f65-036a-45b2-85ea-fed6c0279abe	f	I'm sorry, this table is reserved for _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
c4f941bd-a752-49bb-a7fe-f601eee2a3a1	f	I'm pretty sure I'm high right now, because I'm absolutely mesmerized by _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
e7b633f8-2389-48c3-892f-9d8b57e21627	f	I am become _, the destroyer of worlds.	1	346fd14d-a972-4c0b-b147-bb47965e1730
4b7c74be-c71e-4a66-bb42-a843a8ad5f5f	f	How am I going to kill myself?	1	346fd14d-a972-4c0b-b147-bb47965e1730
abebbf64-c5b1-4fe7-b53c-a19b55d55c4d	f	Honey, I have good news, and bad news.  The good news is that I'm _.  The bad news is that I'm _.	2	346fd14d-a972-4c0b-b147-bb47965e1730
9322b053-bb46-4670-8dd5-cbd2b7d489ab	f	Every Sunday "Insert Name" goes to market to sell _, and every time comes home with Magic Beans.	1	346fd14d-a972-4c0b-b147-bb47965e1730
c24854c2-9088-4e47-974d-d378f7f1bc82	f	Do not go gentle into that good night. Rage, rage against _?	1	6a7e7db7-a0a8-4d2a-a21f-1056a8ca071f
0743ba5f-3853-43d5-ae08-1a52bd45484f	f	Dear Mom and Dad, Camp is fun. I like capture the flag. Yesterday, one of the older kids taught me about _. I love you, Casey	1	346fd14d-a972-4c0b-b147-bb47965e1730
833daa13-d583-4407-baf2-89c32d341d98	f	Dammit, Gary.  You can't just solve every problem with _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
d70ba3a5-b90c-4b8d-832e-b75c5a2eeaa2	f	As long as my kid doesn't grow up to be _, I'm happy.	1	346fd14d-a972-4c0b-b147-bb47965e1730
3c743699-6393-48b6-a953-f56ee08d8c86	f	Alright, bros. Our frat house is condemned, and all the hot slampieces are over at Gamma Phi. The time has come to commence Operation _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
2c6e9e22-52df-44e1-9379-f74b47f9f212	f	Affordable healthcare's not the answer.  Only _ can end America's opioid epidemic.	1	346fd14d-a972-4c0b-b147-bb47965e1730
53f134cc-23f1-4e08-8aba-68c0e19ea065	f	2 fish, 4 potato fritters, 1 scoop of chips and _, crumbled if possible.	1	346fd14d-a972-4c0b-b147-bb47965e1730
8ed46d79-779c-40a2-a20e-009a955484cc	f	_ will win you the Mom of the Year award every time.	1	346fd14d-a972-4c0b-b147-bb47965e1730
3bd65092-b87d-4eb1-ab44-d39075f8c8e6	f	_ melts in your mouth, not in your hand.	1	346fd14d-a972-4c0b-b147-bb47965e1730
79fac6b0-8dbf-4fbb-9b49-d155003495d5	t	Whispering to your chaplain that Jesus Christ was a pussy.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
3aa0c6c4-ba16-4a2d-a747-f23b08bab89b	t	Whatever brave hero killed Hitler.	\N	f9f9f855-b2a3-432a-9f49-a52f1b402740
3aafe788-2f56-42c6-a315-4df7aaf3b752	t	What looked like a chemical weapons facility but turned out to be a children's hospital.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
c0e6bc85-f6bb-406f-b5b4-31ef94ec7cbb	t	Unraveling 550 reels to look busy for a significant amount of time.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
d77c40ca-e00b-43ee-89bf-7b8328e8fd47	t	Three days without eating in the Arizona desert to reach the American Dream.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
075aa7c8-cd44-47fd-b422-0f8bffa8d6bf	t	The tiny man who lives inside the ATM and hands out all the money.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
97db0270-ec30-4184-ad00-3faf686584dc	t	The skin flute, in A minor.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
1e5edff1-889a-4770-9cc8-f74cb78770a2	t	The secret handshake.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
7263e889-21df-44d4-bb8f-5b1c2bf2d5c6	t	The safest way to have dolphin-sex.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
40aa9084-53c4-4d3f-8cf5-02c54b0ebb47	t	The pelican that will one day eat Scarlett Johansson's baby.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
20af4524-97a7-4a4f-b02a-7059f39a046a	t	The European Union	\N	346fd14d-a972-4c0b-b147-bb47965e1730
bd862467-f5fc-431e-83f1-9819525f3711	t	The complex sounds of goats	\N	346fd14d-a972-4c0b-b147-bb47965e1730
3c32e855-6275-459f-9937-435b904f90c4	t	The best words. (And a below-average spell-checker.)	\N	346fd14d-a972-4c0b-b147-bb47965e1730
aa7a9dd6-fbf6-4b82-81fd-4633c8757118	t	Sugar madness.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
e3de45fe-63f6-459e-ad50-8b3516bb9510	t	Stuffing my balls into a Sega Genesis and pressing the power button.	\N	81d803d7-8b78-45b1-ad22-ac904d93c275
9e8219b4-0f8a-4bb8-9def-c400d48c703d	t	Spotting your commander at BronyCon.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
bb87a69a-b802-4cf8-9cc8-ea01b9fe94d8	t	Some sort of unstoppable poo gun.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
29ed2182-f34a-417c-b6cc-ff56bed20032	t	Snorting coke off the back of a toilet	\N	346fd14d-a972-4c0b-b147-bb47965e1730
8b484eb7-ac0a-443e-8d46-671ed60de690	t	Smoking crack.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
19301186-96f3-4b39-a198-fcb6475f60f3	t	Sharks.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
531c198f-aede-401c-9bb7-c4424b61e0a0	t	Prince Charles	\N	346fd14d-a972-4c0b-b147-bb47965e1730
7d46de4c-90c8-46af-9784-bd691cf73c81	t	Party poopers.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
366c3c92-20c3-4859-8583-02ad2ea94136	t	no cock of mine	\N	346fd14d-a972-4c0b-b147-bb47965e1730
cdb8418f-aeef-4334-804b-8d7cea954662	t	Neil Patrick Harris.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
b46de199-707a-4f63-98e7-3a0c9cc5c6d0	t	my Yale College and my Harvard	\N	346fd14d-a972-4c0b-b147-bb47965e1730
f322d2bc-2029-49e3-b72a-724acf91640c	t	My sex life.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
0e309812-7cef-410b-8e1a-d3514318f800	t	my dad's jar of petroleum jelly	\N	346fd14d-a972-4c0b-b147-bb47965e1730
51177e46-0457-4d14-8e20-2dba5acb8f64	t	Modrobes	\N	346fd14d-a972-4c0b-b147-bb47965e1730
1bb1025b-df74-4dea-94a8-7652db2fe83e	t	Lots of therapy.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
1ab7c474-cc14-4f1a-b6e3-08971d0a9f71	t	Kibbles 'n Bits™.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
dde35e0d-c6db-4348-b658-b27c2532e58c	t	Jizzing in your Mother in-law's soup.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
df3e3612-6039-47b5-aec4-6252fc756a1d	t	Intimacy problems.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
64751240-96a3-49a1-ac81-a21cd8795524	t	inner city children	\N	346fd14d-a972-4c0b-b147-bb47965e1730
fb6f3031-498f-4872-9bbf-78f693545443	t	How awesome it is to be white.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
55a7b1a5-3754-496a-9433-dc1aa5d9a02a	t	Grand Theft Auto: Fort Lauderdale.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
17e3577c-3f7c-4f43-a5ab-eed62a711f34	t	Fucking a girl so hard her nose bleeds.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
f44efb79-9cec-4a9f-b2ed-13887fcdf24e	t	Finally getting rid of taxis.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
7529a8b1-f191-495e-a61b-7c28fd9535e3	t	Falling into the zoo enclosure.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
b6976959-bf4d-48c9-9e1e-6668c1c138bf	t	Exploding so dead you're reincarnated into an abortion.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
64eb42b1-844c-49fd-863f-8db7b4db9908	t	Drinking soda	\N	346fd14d-a972-4c0b-b147-bb47965e1730
ff1c0e69-f59a-411b-8642-06c9261c8362	t	Doodle on a cheese doodle.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
467738ff-c53a-4fa6-a9fe-0f939bfebd72	t	Depriving white men of the right to vote for 150 years and just seeing what happens.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
d3a3e88a-8146-4bb9-94c1-10ecf100c167	t	Demanding an end to video game addiction	\N	346fd14d-a972-4c0b-b147-bb47965e1730
0b11aab9-14c4-49f9-ab16-5fb533c9e7b7	t	Crazy raccoons	\N	346fd14d-a972-4c0b-b147-bb47965e1730
1a3cf1b1-ba96-4106-830d-8503c2308ac7	t	Child support payments.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
eac92f4b-122c-4448-85e4-65f3080d3c62	t	Calf implants on an infant.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
78a37a52-ae0e-4bc5-9814-fe5a63c2d466	t	Bountiful barracks butt stuff.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
d952602d-cf0e-4a41-8840-0e5d16d80b3a	t	Blah blah blah	\N	346fd14d-a972-4c0b-b147-bb47965e1730
849854c2-1043-430d-9808-5f9d50ea109b	t	Assassinating the president.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
ea549667-4b74-4406-b12c-4e9490b0b2f5	t	Angelina Jolie	\N	346fd14d-a972-4c0b-b147-bb47965e1730
413991f8-3c00-4485-b2d9-fc1634b3add8	t	An interspecies orgy.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
366bf9a2-beae-42bc-ac0a-1213c4591aae	t	Amendments and Commandments, whichever	\N	346fd14d-a972-4c0b-b147-bb47965e1730
fb73222e-5d2c-41fc-91e5-5a2ba5e65540	t	Almost having sex in a dream.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
a06a9660-c1b1-4957-aab0-c1509f8d00cd	t	All the ways the baby blogs convince you you are murdering your unborn child	\N	346fd14d-a972-4c0b-b147-bb47965e1730
78ee12d7-b20e-4d76-94a6-6fd5069e54e3	t	African Babies	\N	346fd14d-a972-4c0b-b147-bb47965e1730
ccd42b26-0bc8-48b6-8d03-206ddd3990b5	t	Actualizing my potential.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
fb65bbf2-cc6f-47b3-a3b7-73818255c72c	t	A unicorn farting rainbows	\N	346fd14d-a972-4c0b-b147-bb47965e1730
acaf4a16-81e5-4107-aa03-e6d92e7c59e7	t	a ship-load of precious sperm	\N	346fd14d-a972-4c0b-b147-bb47965e1730
e8f02953-a9db-4461-9a2e-f76ed5c4700c	t	A sex machine	\N	346fd14d-a972-4c0b-b147-bb47965e1730
800ca516-15bc-48ff-b831-446d4a98d898	t	A sex doll that just wants to be friends.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
9e9ae30e-962a-4aae-88f9-9cadabae8b05	t	A naughty girl	\N	346fd14d-a972-4c0b-b147-bb47965e1730
26d0335d-13b4-4e24-bf63-5f5f8c4c851b	t	A map of Trump's electoral victory.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
06e87f94-89eb-461e-9ab1-4b6f62697648	t	A Kiwi with lasers for eyes	\N	346fd14d-a972-4c0b-b147-bb47965e1730
d45a9bfb-e1f3-4566-b2df-0a3c2cabe5d6	t	A hot air balloon powered by fart gas.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
4153df81-2a13-43a9-b74c-3f7adcaf8644	t	A horcrux	\N	346fd14d-a972-4c0b-b147-bb47965e1730
b9eeb07b-1605-4980-9c5a-16b4b074ed3a	t	A gender studies teacher.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
4aa57c3e-a405-4a36-b5f9-3626192062a6	t	A foreskin charm bracelet	\N	346fd14d-a972-4c0b-b147-bb47965e1730
d0bc0be0-6243-4194-a410-1b61a8f0ac10	t	A fascist loofa-faced shit-gibbon.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
2eefa1a4-d412-4046-be01-eef8c069c995	t	A dance so face-meltingly hot, you have to go to the restroom and check your underwear.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
90b16039-2468-4ada-be72-95136608757f	t	A bunch of naked bridesmaids.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
0b29d8e4-eb96-4474-9518-9b8214dee03f	t	10 minute sof decent sex.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
18be08fb-e148-443d-88b3-c610abda617a	f	When i pooped, what came out?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a86c69c1-6bae-4f72-8b50-bf0bd3ac4f4f	f	When asked about the biggest threat facing the nation, 60% of Americans said _.	1	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
eb826a42-5529-4d91-ab50-37724062a2ae	f	What's the gift that keeps on giving?	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a38f1045-60a0-47a8-8bf1-fb70b506e606	f	What has been seen cannot be unssen! I just witnessed _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
f1610873-f682-4ae6-9a94-55ca5fc9539e	f	What came in the mail today?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
a78db2d5-9af8-4b18-816b-6379aef16dc4	f	This season on Man vs. Wild, Bear Grylls must survive in the depths of the Amazon with only _ and his wits.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a8db22c4-c119-4a24-9e1b-b5fc95f0998c	f	The socialist governments of Scandinavia have declared that access to _ is a basic human right.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
651f4b80-e041-41de-b0a2-ffbc4267e97d	f	The secret to getting your adopted African street dog back into the United States is _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
03ed50f4-eb44-4e34-9441-a9073fed304c	f	The CIA now interrogates enemy agents by repeatedly subjecting them to _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
78efb40e-1dcf-4112-82a0-eaddc4b6cd86	f	Science will never explain the origin of _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
3762740b-ea8e-41ad-a7b9-0118a9ddd64a	f	Science will never explain the origin of _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
408fec62-20ce-48fe-981e-4e731a498f24	f	Next week on Discovery Channel, one man must survive in the depths of the Amazon with only _ and his wits.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4336583f-29ee-4830-8277-26b34bbd67c6	f	Next season on Man vs, Wild, Bear Grylls must survive the depths of the Amazon with only _ and his wits.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
3403f8b0-27e1-4e3c-88a2-149f6d62d167	f	My porn-star name would be _; and I'm famous for _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
ff3a641d-aa9a-418b-96cd-98dcb10ab658	f	Michael Bay's new three-hour action epic pits _ against _.	2	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e9d471a3-30a9-42d0-9aaa-b9512ca2e4fb	f	In the distant future, historians will agree that _ marked the beginning of America's decline.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
3b2f70d0-9a6a-49ff-b265-0bc4ee8446ca	f	In some cultures, _ is considered a good omen.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
39724232-8300-4a01-a17c-1106bbc2ae65	f	In its new tourism campaign, Detroit proudly proclaims that it has finally eliminated _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
d006ace9-c4fe-42a0-ad21-3a3a6eaa3487	f	In his new summer comedy, Rob Schneider is _ trapped in the body of _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
ad951b0f-5d11-4147-9088-3955a97b23be	f	In a pinch, _ can be a suitable substitute for _.	2	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
d4ec9293-8d52-4954-9585-56ddae136013	f	I left Hamilton because I heard about _'s obsession with _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
4fee55d2-2f48-430a-b205-e111c383b0b3	f	He who controls _ controls the world.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
0e4865f1-880a-437f-86a9-4856d189bf64	f	Future Historians will agree that _ marked the beginning of America's decline.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
0a80c419-e431-44df-bf0f-0f361bdeda33	f	Dear Substitute Teacher, could you please stop _?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
3c313d65-571f-4ab5-858a-1b915fe8844c	f	Awww, sick! I just saw this skater do a 720 kickflip into _!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
77a892e6-dc99-4e26-92fc-80d50a346eca	f	And I would have gotten away with it, too, if it hadn't been for _!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
63ca5f66-9f27-46e0-aa4c-91a8020f8458	f	An international tribunal has found _ guilty of _.	2	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7052383f-6e52-4ceb-b182-e92d9e36f293	t	Zeus's sexual appetites.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
5e82cedc-5f10-48d3-95d7-60c7d39358f6	t	Words, words, words.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4943535f-638b-484b-897c-e7fc4f573edc	t	Walking in on your mom dominating your dad.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e83d843b-b69b-4718-b27d-e0e9504a411a	t	Tripping elderly roller skaters.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
dc9450c3-db73-4d3a-8c58-40ae6c8bdc07	t	This guy!	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
90da7f3f-df6f-4488-9754-b81a0f89325d	t	The worst pain imaginable. Times two!	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
dd657677-60cd-4fcb-8f30-2c6c5dc55be2	t	The shambling corpse of Larry King.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7148a846-2897-4df8-bd02-9d79e4cd3f9a	t	The ooze.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
25111bd9-8182-46a9-afc1-5cc1afe86190	t	The hidden dick in your favorite Disney movie.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
6c0f4d47-6225-4eae-91d8-272a7c4d5ef6	t	The harsh light of day.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
36642861-3009-443f-971b-f449474cc651	t	The gun lobby	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4c538672-1734-4282-b1c0-309680519be9	t	The four arms of Vishnu.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e5c52dea-f0cc-4c21-be13-8da38da8e5c4	t	The Fanta® girls.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7e5b5e12-ac36-4520-a873-8cefe4d9b6fb	t	The EDL.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5c01055e-f33e-4fa0-8a7c-d7004ee81f95	t	The boogeyman.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9377834e-5d8c-461c-bd18-f4e5e0ce8efe	t	Syphilitic insanity.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
5f334208-2639-4928-84c2-843be825518e	t	Suicide Awareness Training.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7cba51ba-5af4-4f00-a500-6dc4e214af8f	t	Suddenly feeling really sad for 40 years.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e356e052-99f6-408e-a65d-ada84cd2ecfa	t	Stockings filled with Vaseline®.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
6a982262-b663-4329-b05a-c569f2ca63e6	t	Statistically validated stereotypes.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
b3af9e18-9ca9-41c8-9c89-2878c91bb74b	t	Shitting perfectly into a hot dog bun.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
690521b8-f386-4491-ab44-eb0fae5d91b2	t	Shaft.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
f0b528d8-f9b5-419a-bcf6-40f5eb2d9c43	t	Sexy Siamese twins.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
024a342e-aa7b-4a24-ae6c-279ca7edc24b	t	sexual inadequacy	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8f69ef89-800f-4f51-9858-018f3f7d18fc	t	Scrubbing under the folds.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
42806a1f-257e-43b7-9fe8-be2adc99ca91	t	Savagely beating a mascot.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
27044e4e-a0f5-40ee-a80a-2cd8b9f3e8ba	t	Santa cumming down your chimney.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
35485e03-cdd2-4991-b9f4-b43c0bb180a2	t	Sanding off a man's nose.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
8f036a2f-cb6d-4ba7-b4fb-723abbe0fa3c	t	Salvia.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
9655b965-6422-42a7-9d95-8fc918f632c3	t	Ryanair.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8ead719e-afd6-4296-8efe-d602fd0d47e6	t	Ripping into a man's chest and pulling out his still-beating heart.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
dc1fb2f8-cf0d-4dc5-996f-fc41bb967250	t	Revenge fucking.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7052c34f-4d16-40fe-b259-4f5200c830d4	t	Quivering jowls.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a513118c-29e0-4b4f-8318-67497194390a	t	Quiche.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
86640dfb-def3-4b49-921d-69900ac423e8	t	Pistol-whipping a hostage.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
53ff979a-e4c1-4ad9-bf62-a0fbf56572d9	t	Panty raids.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
44f5266f-4bcf-40ba-8a74-1f9dd2dbedd4	t	Oversharing on social media	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
30294a03-eb9f-4b18-aaa0-00d8756b1a46	t	One thousand Slim Jims.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
d41fc594-aae3-4bea-8b94-1b5763976c01	t	on her left breast, a mole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d3aecc74-df8b-49c3-8878-3e99fda129a3	t	Nubile slave boys.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
ae78d2d6-e9ef-4964-9d46-8159a8bfcc12	t	NOOOOOOOOO!!!	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
68d85a4f-3877-4d45-a63e-7082bed29725	t	Neil Patrick Harris.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
e68b3042-6def-4a5c-84f4-fdabf6a45eae	t	My magic awand	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4c778d4b-ac6d-4cd4-897b-6006bee55789	t	Moral bankruptcy.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
17f257c0-8f0a-486f-b271-4362a46f79fa	t	Mom's ability to take a cock.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3a317440-bcbd-4775-bea0-feba60c16683	t	Medieval Times® Dinner & Tournament.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
2f2f7894-8800-4fd2-9e55-41d0a5a49169	t	Media coverage.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
3615c9c0-13c4-41b9-9d79-395fe89a0eb6	t	Making the printer work.	\N	b79ee076-4270-4793-b5ae-15b60686eedc
b36bdb18-c428-423e-ad73-34e2995faa8e	t	Mad hacky-sack skills.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
9dbfb058-bbcd-4b2d-907d-e314295a3b18	t	Literally fucking the shit out of someone.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
325e7dda-4e44-48a7-82dd-da90bd722158	t	Liam Neeson	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2c2a5dc4-ad96-465f-a02a-fbe66a37943e	t	Just the tip.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4de42bcd-8c35-4067-9a7a-bbb84ab34998	t	Jean-Claude Van Damme.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4bfb6e0a-095a-45df-8e92-6b0f97207d04	t	Jean-Claude Van Damme in slow motion.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
15ea8727-6e22-4bc4-be52-b55879acd992	t	Jafar.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
1cfd9b05-9f7f-4bf1-aedc-79e044c24008	t	Insatiable bloodlust.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
6aafd5d1-1ac5-476e-a6e6-41ab943a8770	t	Historical revisionism.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
9e9c1a28-ff67-459f-8a59-89b37516ffcc	t	Hire that Stripper	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b8e1257d-14df-47fb-89ee-d167d8fb5a73	t	Having a pint with Aquinas.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
41b17831-9426-4370-841c-9fc00e488252	t	Good grammar.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
1e9d7565-a096-4cc7-a214-dbc5bda6f713	t	Glamping with Muammar Gaddafi.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
786c6d50-0e3a-4491-a6b4-d9a2cf1795ff	t	Getting in her pants, politely.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
14ce83fe-2e07-4fed-85ce-737e0603a664	t	Getting abducted by Peter Pan.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
3446f3d0-331e-4391-999f-a3f549b2a695	t	George Clooney's musk.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
fd0143ad-8965-4a2b-a6d7-5c4de53c420d	t	Genetically modified organisms	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4480b2fc-9d74-4de5-9183-c07d661c4d88	t	Gandalf's perfectly shaped eyebrows.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
cc9408c0-a1a3-4ba1-8922-e5272f598054	t	Finding a skeleton.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
aa3a4ec1-5e66-4fa4-8c33-0ff8e8106fe7	t	Fabricating statistics.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
cdb328be-01ef-46c1-b1ed-47172b94aa7d	t	Enormous Scandinavian women.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e31a4007-fdf7-422a-8105-eaa2dd11b647	t	Eating an entire box of chocolates.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e4c46734-def6-41dc-b970-458c86f68afc	t	Dorito breath.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
89a7b6d3-8cc3-4f48-a6f3-08e8ba425b6f	t	deformities floundering in seas of blood and blue paint	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9530f45c-47be-43cd-86bc-bb4d36c9d416	t	Deflowering a princess.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
73f42f9d-a19c-408b-b59b-b20e77760c6f	t	Dancing with a broom.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
6ba71db5-760e-45a2-8c79-b17b09fc5aed	t	Cutting.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
323e1962-a426-4775-9e6a-5c2ef9df1cd8	t	Coughing into a vagina.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
bcee7e24-d9fc-448f-af4a-384e85c94eda	t	Converting your sex dungeon into a baby room	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c2f8b87a-32ba-41c9-92fe-c5ed4f0c4d6e	t	Clenched butt cheeks.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
49bf2b0c-b397-450c-b1ed-9534ca5d0f6d	t	Clams.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
2140af07-fcf8-4191-9f9d-29c4f05fe76d	t	Carnies.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
3206a6d6-d8d9-416d-9377-60c6f3829fb0	t	Breaking nip slip news.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
b6eb0113-5290-4ec1-8354-00bb18c462ce	t	Bosveld lapa porn.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6125e63a-fe19-47b9-a711-9e81efc02529	t	Blaxploitation.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
cd0d9663-ca09-4883-8ebb-c94de7e53dce	t	Big Bird's brown, crusty asshole.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
52141873-7ea8-4844-bc1d-3f571c2557c7	t	Being a dumb ox.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
98fa9287-3f2a-403c-8565-7325caedd1bc	t	Being a clever little girl.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
eb28d010-07dc-482e-933b-74c9fb12dc90	t	Beating your wives.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
6384517d-9e13-458c-8b0d-1731c572f29e	t	Ashton Kutcher.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
1b15ff47-e364-4c33-8f82-30d28cbbfffc	t	Appreciative snapping.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4f78c66d-7413-41b7-afca-917f588e9f35	t	Appalachian swamp cannibals	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
802e4d6f-e0c5-449c-a6be-e66368485dbe	t	Andre the Giant's enormous, leathery scrotum.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
8582356d-fb8e-47fe-a168-dc4df50d2df5	t	An Ex-Porn Star Kindergarten Teacher	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
fe1376b3-d9d3-4c33-abbb-5febcce1c677	t	An Etsy steampunk strap-on.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4f4c46c7-0f27-4783-8454-ae4e05d517d9	t	An atomic wedgie.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
1cded4d0-aa22-448e-a2da-7d7d02c3cea6	t	A woman scorned.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
df5e8848-6830-4c1a-a490-9a369459871c	t	A wedding reception. Again.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2b1c5f88-ce51-4ace-9d4e-22541f1930bb	t	A smiling black man, a latina businesswoman, a cool Asian, and some whites.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
271356ff-7f51-44f7-8f86-ba82bab1d951	t	A rival dojo.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
0a34ed9b-edb6-4ec7-a8b0-83d9004fcc50	t	A plunger to the face.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
027b32f8-4d39-4ab5-91bf-3f93ab9304fa	t	A passionate Latino lover.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
fbf6bbd2-0682-4584-b621-9a3d07cfed47	t	A panty raid.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7637b06c-633c-4df6-b52d-24fd8fb94803	t	A nuanced critique.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e1e95cc8-50b3-42ae-8348-f537898a954a	t	a low sucking sound	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e18df18d-f5db-44e2-a375-1bb85ade2344	t	A Japanese tourist who wants something very badly but cannot communicate it.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d2b724da-f243-462e-878e-42c467e75784	t	Defeating a gorilla in single combat.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
4f3a0563-bf38-46fa-a421-8d8434e2fbe7	t	A fat Batman with a sopping wet scrotum.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
9b7db062-b30f-4679-95fc-90549132f625	t	A crappy little hand.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
6b28be68-7daa-4d32-83fe-a0c6e88ae5f1	t	A bloody pacifier.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
08b3f347-8357-4912-b7a3-da1ec9b7ad66	t	A big black dildo.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ecd959ec-a8cf-4e18-b675-814bd96bd92d	t	A beached whale.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
22585644-25f4-42ec-b33e-6717fa86d527	t	24-hour media coverage.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
c41d50b9-5637-40f3-a61f-34312167fcbb	f	Yorkville's latest fad diet is called _	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a14faf8d-3937-4ff8-bbef-9bb1f56784c9	f	Why am I in jail?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
d4f3d80c-09d6-4098-8d37-ce80e90f4d42	f	Whos afraid of the big bad _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
c072b8ca-9d85-4a78-a9bb-fc3e085ac1a0	f	What's Mom's best friend?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
81bff024-6daa-425f-9b1f-16a9812b1df5	f	What killed Old Jim?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
12297cd5-7b67-49b4-9203-05dbd41a85a6	f	Well, look at what we have here! A big fancy man walkin' like he's _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
fb077ead-31bd-434a-a11f-97fb2c94385b	f	Well if you'll excuse me, gentlemen, I have a date with _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a06b8ba1-853d-43aa-89b1-e358a495108c	f	Patient presents with _ . Likely a result of _.	2	df299c12-e25e-4774-8e4e-5c01b4ae80e8
9ed12f6f-788e-44f1-88e1-d368ce3c4249	f	Now in bookstores: Nancy Drew and the Mystery of _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
036310f0-ab5f-45f3-b151-1368bdb52db7	f	Lifetime® presents _ - the story of _.	2	df299c12-e25e-4774-8e4e-5c01b4ae80e8
387e0b0a-6b93-475d-be73-daaea78348a5	f	In his new book, author David Sedaris details his life-long love affair with _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
07ce15fc-bb75-4bca-8240-883b6de7d6a2	f	In his final interview, Robin Williams discussed his private battle with _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
801cc2d7-5c9b-4e56-844c-ca804d1a6f9b	f	I don't need to hold onto my youth, I just love _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
2dc3a0d6-19b4-4a4a-a8af-5082918218ee	f	Hidden behing the Mona Lisa, scientists recently found Da Vinci's original subject: _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0036b6a1-2be4-41fa-9da9-9668fc24556d	f	Hi, this is Jim from accounting. We noticed a $1,200 charge labeled "_." Can you explain?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
89cbea0f-d0f1-4420-b26a-2a7b9699036a	t	Space muffins.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
79024309-4bf3-4d9f-ad7b-2b1bc9aac4fd	f	HELP WANTED: Need assistance with _. No experience necessary.	1	67582170-8e93-4677-8c02-eab952da4da6
9a671e0a-cf5e-4e23-8582-5c3c6e53d116	f	Hell hath no fury like _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
600aa5c1-f4f4-4e2d-907a-70928baed0fe	f	Having tired of poetry and music, the immortal elves now fill their days with _.	1	e28a9316-9ac1-4a97-b413-73b7a15f9f27
8ccff234-c18d-4d4e-9b5e-4d7f1055444f	f	Get rich or die _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
2add8b3c-0f5d-4d07-aafc-61be86da49af	f	Don't get me wrong I think what Hitler did and stood for is horrible but you have to admit he was was spot on about _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
b27ccb15-6395-490a-9636-03132018e52d	f	Do you lack energy? Does it sometimes feel like the whole world is _? Zoloft.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
edd69ebb-40dd-44cc-8ce8-3aff9ff89dee	f	Do the Mahi, get _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a5cdbb1b-1540-4229-8e04-5400f049b465	f	Art isn't just a painting in a stuffy museum. Art is alive. Art is _.	1	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
2872808c-e4bb-473f-9104-9e06756b8982	f	And what did you bring for show and tell?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
f4d98e58-1fc8-4a9f-badd-2c21ed787c8b	t	Westies	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
26b502ee-d64d-4f1b-ae7a-a1a8b40e402c	t	Wearing glasses to look as if you are smart.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
65a8f66b-33e5-467e-8aff-614d5fb93168	t	Vegetarians or humanitarians, whichever	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
26f188c1-2e9f-4011-b27e-70500cb18538	t	unrequited love	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
f8e7c731-ce3e-4447-8b9b-2ea198dbcabc	t	Too much edibles.	\N	8c660d5b-aaf2-4d12-9584-01460706bc1a
9565a07e-d6ce-4107-9518-0b991b26d3be	t	The White House Coal Garden.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0e164ec5-78ca-4e78-b0ee-cda8f839105a	t	the undeniable dark side of mankind	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
055283e8-6eea-47c5-a04e-422533d8ce6c	t	The time I figured out that "Twinkle, Twinkle" and the "Alphabet Song" had the same tune	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
42fa9d40-5492-455d-8fda-d1de0d2fd141	t	The Sword of Damocles	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
bbda4807-f51e-48c8-a475-a011cab953a4	t	The Passion of Christ.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
89c5c851-723a-41a4-bc42-ec94bbf83457	t	The inability to grow facial hair	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
46e07941-b1d1-417e-8d0d-5d558234adcd	t	The Girl Next Door	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
518e1097-524e-4d33-982b-0a1133acb60b	t	The eighth graders.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
512d2173-cbd8-4c72-8956-fe5ef3256de8	t	The black lung.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1b03991a-1bf4-4cfb-a9f4-a43f3a9750bf	t	The bastard seagull who stole my chips.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
4671d491-2740-4165-822b-c53340a10166	t	The ability known as "retardation."	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
735b9e8c-5ffe-4840-bc03-6f2d3ff6b4f3	t	Sub drop.*	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a1311ff7-6365-46de-9a33-b08f704ed8ce	t	Some sort of Asian.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
18acfc45-ee64-492a-87e0-98f8fc8e7a1d	t	Social media evangelization.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
da865cb0-d092-46a9-95ba-56641fb78ff7	t	Slowly evaporating.	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
cab6df98-c671-4767-9661-52573bbb2ff8	t	September 11th.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
4bb0a14d-2570-4b92-9099-2aea90cdcb26	t	Seeing what happens when you lock people in a room with hungry seagulls.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
d9b7f977-6e91-451e-a3d4-d9c43c8f441d	t	Seeing Suzy Cato in a completely new light	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
4d30607a-f2a7-41ae-aabc-260beac8298b	t	RussianBrides.com	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a545f804-529a-4807-a1d9-ab3581280d44	t	P.F. Chang's fusion of casual and formal cuisine.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0fa92a50-a8cb-4068-88d3-d8a5381f52a7	t	Outdated gender norms.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
19099e3e-72a5-43ae-8a50-cb57e71ca86f	t	Oiled up bodybuilders wearing only a thong.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
8e779f6c-e759-4f90-9d4f-c99d861831e7	t	Not caring. At all.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
21f4476e-654a-40a7-b49e-5ba57fee7eac	t	My fist	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0c57b1e4-51a8-4ab8-a277-ac9d566a0fb2	t	My dick in your mouth.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
5ba9d5e2-3edb-45db-9013-928bef5fef92	t	My bright pink fuckhole.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
4480d1cb-df87-4a79-b9b0-3b9a88dca900	t	Mom's new haircut.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
6498bbc0-b4fc-4448-a25a-a759f234b209	t	Having big dreams but no realistic way to achieve them.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
c7ccd861-0380-47c5-82de-4a2715767937	t	Going to a strip club to vent your problems to a complete stranger.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
5fbdbcb1-44b2-4ad1-95ec-df9ec4486469	t	Giant Strap-ons	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1294136f-c58c-479f-8c63-be3b8f114be2	t	Getting eaten alive by puppies.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
6641d416-d388-4655-90ff-98a86775384f	t	Getting drugs off the street and into my body.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
8f8cc0f6-10ee-4c8f-81e4-7b0a4acd3fdd	t	Getting caught masturbating to hentai porn.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
2dc8cc68-2d3c-400b-80b6-06fbd54af634	t	Genital piercings.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
46c6afef-f5b0-4efa-b093-ba28bd4cc427	t	Free introductory seminars at Trump University Community College.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
56a63e24-3f63-4ae5-82d0-02a5b76a2551	t	Figuring out how to keep a woman with really small, flexible hands restrained in bondage cuffs.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
8a0be9b9-8632-4634-921b-fc8743bea916	t	enormous drums	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
bf400d19-6a20-48aa-9313-57ae298d2e54	t	ejaculating on your partner's face, letting it dry, and then peeling it off in one piece	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
eade3746-da79-4663-a44f-226ad5aefff4	t	Doing the right thing.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
5605aa91-99d6-46f9-9b21-c89369623f2f	t	Denzel.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
d0e9c48c-d1e6-471a-b99e-fda49ec968ff	t	Cutting off your genitalia and mailing it to your celebrity crush.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
af5686d1-e82e-44e7-88f4-b27f67f4079f	t	Child-borne IEDs.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
d9e2187a-7154-45ec-b4e7-b92e9ced1e96	t	Changing both your last names to "Danger."	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
e271b92e-a7de-4f98-aa2d-01dc41fb39d6	t	Butt surgery.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
f0600757-9114-48dd-a9c2-35946d6e5861	t	Boring weekends in Amish Country.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
cdc5c580-56fc-4c3f-bcc8-4541968a8e04	t	Blown Out O-Ring	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
15f59b9a-8536-4ee5-aad0-50efb16db530	t	Blacking out and causing some serious fucking damage.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
779c57f0-2d3e-4e7e-9057-85f560706023	t	Being worth many sparrows.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
bb01926c-3990-4d16-bbd2-afca1c6682f8	t	Being passively-aggressive on social media.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
f57247f6-011d-4a08-b064-4f3317bc2665	t	Being obessed with board games.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
f0123bbf-a05c-400d-8a88-c7c65a07d25b	t	Backwards recordings	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
93394930-6e37-44f8-a937-406643a37374	t	ancient porn	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
04fc6c30-50f6-481c-9e4d-2ba9df1b075e	t	Anal Fisting	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
aac99728-67f5-4e7f-a7e6-b527db7489f8	t	An unmanned center podium.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
896d6058-af03-479f-aa24-25fa44678f69	t	An unfulfilling handjob.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
110b4b11-0a9a-4d9c-bdbd-422197d115e8	t	An inability to take a joke.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
2357191d-bb4e-4877-a7b8-cdad9c4e332b	t	All things divine	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
31b8e0de-e8f6-4d0d-92e6-eefeaf25cfae	t	AIDS.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1cf9f60f-8538-4502-82e0-dd6521c1de91	t	A zesty breakfast burrito.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
792521a4-11a3-414c-a3ff-8bc9c62a54c1	t	a whole school of tongues in this belly of mine	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0be7e69c-36c5-4eed-b919-0799ea2be00e	t	A teaspoon full of toenail clippings	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
c32b7cd4-1500-4728-8d19-8ea5a493fa0d	t	A recall of hotdogs	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
324b573e-4604-417b-a1e9-08dd005ea855	t	A powered exoskeleton.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
10545764-d7f2-4efc-aaeb-c4bae7032417	t	A one-way ticket to Mars.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
43102607-c7db-4fd5-83aa-948220fb320a	t	A mouthful of soup	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
da8a9d61-97db-4175-a478-78b592ada81f	t	A giant squid in a wedding gown.	\N	67ed36f2-9707-4048-91aa-236725de08d8
371a70b3-e2f2-4faf-bd97-a0e028e04b88	t	a face full of period blood	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a0c21149-f137-4483-8f97-36ef5f258025	t	A disappointing season of Tabletop that's just about tables.	\N	4d845a2e-d6e7-4110-a862-4363efde011e
b856fe18-0956-45d2-8306-5b2e472fb1b5	t	a creampie	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
b3ff51d4-d2f7-4c98-acf2-b33c1c932042	t	A Chinese cyber attack on Pornhub that cripples morale across the force.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
760741ab-1eae-4ef1-bf75-f3266253368d	t	400 years of colonial atrocities.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
e453d836-d9ce-462a-8dbc-8e4c8580f6fc	f	You don't love me, Sam. All you care about is _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
12fad346-7a6c-4ae1-9658-1424d8163453	f	Whoa there, partner! Looks like _ spooked my horse.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4f325faa-ebe4-4479-9203-7207a3ef53da	f	Where in the world is _?	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c1382682-40b5-40cf-a7dd-56c7487162b7	f	When i pooped, what came out?	1	cf526624-d9a0-4f89-84ad-88c963536dd4
81c5c759-2267-45ad-9915-6df26230bac0	f	What's about to take this school to the next level?	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6f1481de-20bf-4e43-b1af-deaf283083df	f	What killed Old Jim?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
fc9ea78d-717a-4feb-a91b-b87ac412004d	f	Well, look at what we have here! A big fancy man walkin' like he's _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
e6f75b5e-bfa3-4ec7-8428-39b7477ca23c	t	Slow motion.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4b462a08-eca4-42f2-9aba-9b99064d7b6f	f	We're off to see the wizard, the wonderful wizard of _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7d80cdd7-1b3e-4ab0-8faf-a02734a16888	f	Today we honor St. Mungo, the patron saint of _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
ee19b044-7017-415c-8bed-c1055b2cfe74	f	Time to put on my favorite t-shirt, the one that says "I heart _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
85034766-90de-40ec-87c2-0009d603b227	f	This is gonna be the best sleepover ever. Once Mom and Dad go to bed, it's time for _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ce8c3931-f90a-4a45-bdf4-2d43bc2083e5	f	They call me "Mr. _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1ddd673c-6f4b-4b6a-8b72-fa626bc15b59	f	There's nothing better than a peanut butter and _ sandwich.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6faab7ac-fb5d-4172-94bc-26465147b12f	f	The warm August air was filled with change. Things were different, for Emily was now _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b0418904-4f91-4b57-8180-2539c19e3737	f	The easiest way to tell me and my twin apart is that I have a freckle on my cheek and she's _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
313a6899-6d7d-4c0b-ae13-8e37ec910741	f	Thanks for watching! IF you want to seee more vids of _, smash that subscribe.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b9f0ff3d-5cb0-4b9c-9a92-83cb47cc38a2	f	Shut up, Becky! At least I'm not _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c19e5f81-e4d5-4f82-a413-0181e57ef593	f	Run, run, as fast as you can. You can't catch me, I'm _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0dcdb48f-e48a-4c1b-b7dc-50511a7870e9	f	Police! Arrest this man! He's _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3e4d8633-21c7-410d-a34f-81968735e569	f	Outback Steakhouse: No rules. Just _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1a6ad76e-3204-4719-bf5a-9c31f2a9f875	f	One nation, under God, indivisible, with liberty and _ for all.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
57dda855-a379-4266-888b-a5a5443762ec	f	Oh, no thank you, Mrs. Lee. I've had plenty of _ for now.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1efb0db0-bf0b-4f99-99c7-dda5b768b50b	f	Oh Dark Lord, we show out devotion with a humble offering of _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f7520c4a-5454-4d87-a424-fa8037e16698	f	Now in bookstores: Nancy Drew and the Mystery of _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
df6961f8-7532-424d-8c69-ccd2d7b8e092	f	Next from J.K. Rowling: Harry Potter and the chamber of _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a73d430c-f987-42f7-b41b-43704d432387	f	New from Mattel! It's BUNGO: The Game of _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5d552b60-fbd7-42b2-86d5-82914c513e42	f	Never fear, Captain _ is here!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ede330b2-9d5a-4b0c-9dc1-47d37663d569	f	My name is Peter Parker. I was bitten by a radioactive spider, and now I'm _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
074c2195-3624-4639-b272-f762f717272b	f	MY NAME IS CHUNGO. CHUNGO LOVE _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
181faf34-45a6-42f5-a326-f2e0127e4115	f	My favorite book is "The Amazing Adventures of _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
512f8e10-ae28-453f-84e1-849bd06009bd	f	My dad and I enjoy _ together.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ab44d3c8-4797-4a6e-8504-a5f0adf09ac9	f	Moms love _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e48d43fa-071d-4752-95bb-f4e02453aa56	f	Mom? You have to come pick me up! There's _ at this party.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8de37f8e-53e8-46c4-821b-3b52234bb22b	f	ME HUNGRY. ME WANT _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
74d12eb2-e66b-403d-b6cf-ba60bf02cf7e	f	Me and my friends don't play with dolls anymore. We're into _ now.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b7d77669-c6a0-413c-a75f-88c742956c9d	f	Madam President, we've run out of time. The only option is _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b99e2b24-49c2-4e42-abfb-ead654dc069b	f	Ladies and gentlemen, I have discovered something amazing. I have discovered _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
63af977e-1899-4392-8c74-7986ecec3b1b	f	Kids, Dad is trying something new this week. It's called "_".	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c687a101-fd38-4160-8e3a-1ffad4d1fa6c	f	Joey, look out behind you! It's _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
475f7e98-cc29-4993-b737-19c1a5b27291	f	James Bond will return in "No Time for _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
db429583-37fe-4a68-8809-a6e085d5064c	f	Isn't this great, honey? Just you, me, the kids, and _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
36c9f664-4467-426b-8f56-98eedd213363	f	I lost my arm in a _ accident.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3d6b5780-35c9-4c42-91e7-5a55f1b8350b	f	I have invented a new sport. I call it "_ ball."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
deccf43e-88b4-4c67-9141-2ee1c7e22693	f	I don't really know what my mom's job is, but I think it has something to do with _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6b5d6c47-4def-454a-985e-22a14bd81454	f	Huddle up, Wildcats! They may be bigger. They may be faster. But we've got a secret weapon: _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e41e4e25-0617-4b4a-b878-6adcef398bb4	f	Hey, kids. I'm Sensei Todd. Today, I'm gonna teach you how to defend yourself against _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f9f69613-2da2-4e70-8432-d5bf5900a638	f	Hey, check out my band! We're called "Rage Against _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c7ba35e0-e5ce-469d-b719-d50fad81f50e	f	Hey guys. I just want to tell all my followers who are struggling wit _: it DOES get better.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8f24b76f-2687-4d62-8827-b0ec1efab84d	f	Guys, stop it! There's nothing funny about _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dfcee78b-5a33-41d1-89f8-5c095acf2254	f	Foolish child! Did you think you could escape from _?	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9dc744de-c266-4cfd-839e-bbe5c993cccb	f	Ew. Grandpa smells like _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dd427d6d-77c2-499c-a668-c46847b1ffaa	f	ENOUGH! I will not let _ tear this family apart!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
676d7d6c-f81b-452d-93c9-8463226b63da	f	Did you know that Benjamin Franklin invented _?	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
55098ede-8493-467a-8c84-164576f2e560	f	Coming to theaters this holiday season, "Star Wars: The Rise of _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5bd19fa8-9290-4a33-a9b0-0099bcb9f770	f	Coming soon! Batman vs. _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8c778991-48d9-4955-b15a-b6fb8355ae61	f	Come with me, and I will show you a world of _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
247afa4d-3310-46de-b07f-95fbdada70b3	f	Come on, Danny. All the cool kids are doin' it. Wanna try _?	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
673baed1-a793-4c6f-9782-8be7cb6488e4	f	Class, pay close attention. I will now demonstrate the physics of _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
53791c73-ed3f-4edd-9784-ec5fb54fdd9a	f	CHUNGO FEEL SICK. CHUNGO NO LIKE _ ANYMORE.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
692e60e1-a15e-4da5-9bc6-dd43f2dff4d2	f	Boys? No. _? Yes!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
16e9024b-5ef9-42e0-a202-37e15e3e9b7f	f	Bow before me, for I am the Queen of _!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f6e535f3-42bd-492d-9453-1c5eb59c4391	f	Before I attend your sleepover, I must inform you: toys vore me, and I don't care for sweets. I prefer _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9f839c31-95ab-4572-ab93-b55632dab623	f	Beep beep! _ coming through!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7ec24072-e8cc-4d29-94dd-65b113c55c5f	f	Attention students. This is Principal Butthead. Please remember that we do not alow _ in the hallway. Thank you.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
937f526d-81cc-493e-b3ec-2d72819c99d2	f	At school, I'm just Mandy. But at summer camp, I'm "_ Mandy."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cfa13dbe-79b2-477e-b1e4-dfc9d1afeaa4	f	Alright, which one of you little terds is responsible for _?!	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c2c0f99d-1ba9-4841-9a80-de858f579e6a	f	_? No.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
bcb93eb2-1650-443f-8284-6ebb7c2a5913	t	Your mom!	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ce67d972-0fe2-48a2-a258-f44272e823dc	t	Your fce.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
85e34a30-05db-46ae-b907-bfb189cd60fe	t	you'd look good in a  pearl necklace	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ed5194b0-ad02-468f-a8fa-60ca2e40c2e6	t	Wiping my butt.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
47dee2b3-7f37-4cd6-8d27-30f53bcac223	t	Whatever dad does at work.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
87d8b90c-48b6-409a-b9a6-ef03c6cd1a15	t	Waterboarding a Muslim.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
920851a8-f52f-4c92-9828-fa7cbb81878e	t	Volleyball shorts.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b09fc65e-f812-45ab-864c-f0809b60d79c	t	Using my butt as a microwave.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f3f6f307-63b1-41dc-b705-ae9e4d7e3210	t	Using balloons as boobies.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7422c842-8a97-4afb-a744-6398bbf4d6d7	t	Urban legends	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
a7deae81-845d-4cc6-b989-9f1a64e970c0	t	Unleashing a hell demon that will destroy our world.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c951cde1-d6dd-4b56-9d79-d4559a7a7a92	t	Uncle Bob.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b468f5b0-bc90-46f6-833b-0ebdd3ef3c3f	t	Twig and berries.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9d8a9cd3-d354-432f-ad22-052cdfb1b9ce	t	Turning 70 and still being fuckable.	\N	c44f63ce-aee4-414b-ba28-c45d190b5190
8ce91d3b-7684-4336-878c-7ceea21ace30	t	Trying to catch that dang raccoon.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8fc68876-6b45-43fd-a28b-be406bea64bd	t	Triangles.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0910b246-216c-441b-8aba-26abb0e02471	t	Trekkies	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a27af92c-8dcf-439d-8a61-805eaebf0d22	t	Total crap.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
96980a62-6bc6-462f-8d0c-51bf87f7522c	t	Tossed salads and scrambled eggs.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d0a6a6f3-6b22-4670-9f3a-e8cc52ce99a0	t	Tongue kissing.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
540b1a5b-514e-42e2-8971-5be021992006	t	Throwing up double peace signs with my besties at Starbucks.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5295ba78-420a-40dc-b301-bc036b629eca	t	Thousands of lasagna	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b44b5a31-342e-4b49-9f03-e7f526406926	t	This stupid game.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0b25fae6-8b72-4fc7-9b3b-92df91f9838e	t	This goat, who is my friend.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
59dedd30-4a91-4d41-8291-50cca7c8471a	t	Think, nasty burps.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d9615b43-f8f5-4eb2-a42a-104d385bbb59	t	The whole family.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
24dfce97-091c-4470-8005-c35fb4ef3adb	t	The wettest fart you ever heard.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c5a1fd6d-8835-4f4e-88cc-aa1ce96ce0c9	t	The way I feel when I see Kyle.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
373b411d-6848-4911-86ad-0aa3df2c479c	t	The way grandpa smells.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
92968b06-f743-4297-8731-7f199485c1b8	t	The underrepresentation of African-American dancers at Blues events.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
df5463ca-4e89-425a-bf7c-37935c96f38c	t	The terrible winter of 1609.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
aa550f95-b2f3-4a09-9428-c8bbaf08e745	t	The sweet honking or Karen's bassoon.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1c7310b9-9224-40b2-b08e-b8e8a2ab2196	t	The Rwandan Genocide.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
8e7339b5-cd0c-41f1-8075-8f6bdb95745c	t	The president.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c7036ae0-78ce-4e1d-b53d-7012376c94c9	t	The police.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dc29cf9c-999d-41cd-80a7-1bcd97b6b17b	t	The oppressive system of capitalism.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e9a3a9a9-63e5-4250-af81-a91ba793775b	t	The old man with the rake who lives down the dark and winding road.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f8a5406c-04e1-4ffe-a28c-06a78058c63e	t	The octopus stuck to my face.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c5789c6b-06ec-49bf-a94e-dae23db9275c	t	The middle finger.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5fc65e37-99de-4ed9-a1b7-db98649daeec	t	The loose skin at the joing of the elbow known as "the weenus."	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b3b274cf-17c9-4ea9-89ee-3d1874477d8a	t	The huge, stupid moon.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
90fa248d-6231-4f2b-bce2-2e8838cf2f59	t	the government's secret stockpile of confiscated marijuana	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c4b05733-8449-4617-b078-8b06e0411e14	t	The gluteus maximus.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
709a72fe-4ede-4e39-b35b-524a26205035	t	The garbage man.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8bc7bd86-e024-4521-96f3-e1e7fab49556	t	The first female President of the United States of America.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
187d3055-249b-45e7-ac26-969260c200d3	t	The entire state of Texas.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
660864ad-914c-4586-8356-641e314b499d	t	The divorce.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2afd955d-261b-47ef-9438-9f77a2b363f2	t	The Denver Satanic Gardens.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
332dc031-09bc-4736-8564-065fc2480757	t	The bus driver.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
25012fa5-b062-4fbe-a016-6acbf8c6de4f	t	The British.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6f2599a6-3fa5-4ca7-a529-2b52b05d05b2	t	The beautiful potato.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8eb62e7e-af0f-4a89-bee2-a4e5286face1	t	The babysitter.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
677dfc78-550a-4192-b31c-b6b103443ed7	t	The baby.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2f7fff64-ee64-494a-9f62-1286bbfbf4a3	t	Teeny, tiny turds.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
37e4a36c-9b1b-4649-a514-df0ca5262bd4	t	Teaching a chicken to kill.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c09be76b-2589-4804-abd5-1b9a5db096c1	t	Taking a dump in the pool.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
19498c80-d0ab-4da3-814d-2f177216bcd4	t	Swords.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
38b34063-0741-4fcd-9e17-917b0da03bb5	t	Supreme Court Justice Ruth Bader Ginsburg.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0c59b0c3-9bec-4158-b42b-d1c2a2245a53	t	Stuffing my underwear with pancakes.	\N	60a4daa4-fd0c-4818-9d41-6daccede4bf3
fd32d931-5359-4db3-a5a8-d187dcf32089	t	Stuff.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1a11c8c2-768c-4d7a-86fe-65f027bb98c2	t	Stealing people's money and going to jail.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3fb59e6b-e049-4eba-87fe-e6a9e8170689	t	Stank breath.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4f4545f4-5496-4664-aab6-cd5fbbf4c867	t	Squirty cheese.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9f3e2de3-b5ce-4031-8e3e-364578431796	t	Spider-Man.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
75745431-15c2-4424-b13b-b8793e72c40a	t	Spending my parent's hard-earned money.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
011c9a18-f51e-4cb6-8a27-94996fdf1f2f	t	Space lasers.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8651e114-12af-400b-9d8a-7abdd2d08082	t	Soup.	\N	343dc3c6-e89c-4ddc-a924-0705650e6f76
fe2541cb-2d4f-498f-a583-f390a97158c4	t	Some freakin' privacy.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8edeb56f-1582-4f3b-88e4-a926b351cb42	t	Social media.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
19a5173f-e91a-4369-94ef-4e339af42e36	t	Sniffing a dog's butt.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
221835bb-e1e0-4385-b5b1-0f6e7cf3375a	t	Smelling like onions.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5a00ddc5-f988-42aa-b17f-abcd55bc8eee	t	Slowly turning into cheese.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b8bb425b-6d20-49f4-95c8-0a80cb2b4c5d	t	Slapping that butt.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
389d1a07-e77f-4474-acc3-d6503b0b20ff	t	Sitting on the toilet and going poop.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e0a7bbf4-0f81-467b-bd35-9e330206d992	t	Sitting on a cake.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e72c3eb2-bc35-4d09-a8bc-c54b36be0c02	t	SILENCE!	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c01ebb2c-25ca-4fd3-95d9-d8ff375c31bd	t	Shutting up.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b68a2d13-51f0-469c-b305-9c2d00e9439c	t	Shrek.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d31a196b-f546-46b0-b9e0-7d087a675f3e	t	Shoplifiting.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7fa4163f-3e0d-4be7-bb27-a4ba93aa308a	t	Shaving Dad's back.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c8d8118b-77fb-44a4-9b87-ef2c6d1174cf	t	Sharks.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
5ae4caca-8172-44d0-8997-abbac768c00d	t	Seymour Butts.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4721ba25-c87f-4853-8903-15997c6013af	t	Screaming the F-word.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
34d1da58-186a-4ef5-917e-7944dad7c161	t	Screaming into a can of Pringles.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8c73bd1d-36b4-4235-b383-c2e20bd39b04	t	Screaming and screaming and never waking up.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9e19a523-d6fa-457b-90de-e485a10249b6	t	Saving up my boogers for ten years and then building the world's largest booger.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f6d3aecc-c6dd-4ac5-8b72-8b5a5b92a65a	t	Satan.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
99a8ebfe-38b8-426d-a4cc-166b07a67ce6	t	Sacrificing Uncle Tim.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0c882781-c506-44ef-9aa7-eb2cffb56714	t	Running full speed into a wall.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8332393b-f53c-4d1d-b0d7-84e046b25c82	t	Running away from home.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b7e17f57-6863-4ded-8455-352e23387bd0	t	Richi McCaw; the PM we want, but will never deserve	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
55037c4a-0195-484f-9af1-47f5152fccfa	t	Respecting personal boundaries.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c8314b66-8064-472e-ba54-dfa52f8891c8	t	Rated-R stuff.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a775315b-cd58-4b75-ad99-aaf2990392aa	t	Racism, sexism, and homophobia.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
34b11aae-b73c-4ed9-b9ac-891d9c3d4964	t	Questioning authority.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c230ea8c-e1cf-41a4-9eb1-789136d332f2	t	Putting my butt on stuff.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5a5d2a83-68a7-4e22-b4d0-d1a02e2cde6c	t	Putting my brain into the body of a tiger.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
63e8f997-e440-4107-b30d-ee7fb9aea5fc	t	Punching everyone.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
929e7db0-a742-4b17-9a4c-0a666de09fc1	t	Punching a guy through a wall.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
b2cdec1d-2ec5-4e75-884e-45fabfd67157	t	Pubes held together in a little ponytail holder.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
69fbc82c-05ab-47f6-8cbb-9b21e2627829	t	Principal Butthead.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0930f411-5321-4415-94ed-2356c4131193	t	Poseidon, Lord of the Sea.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4eae342c-be52-4522-b8fe-8b1e5a11424a	t	Pork.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3157ac11-ce27-49cf-a8c6-f51c69c8357c	t	Pooping on the neighbor's lawn.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
bfe097b2-3d95-404f-a930-a274580c5ff5	t	Pooping barf forever.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fe3e03e8-5491-47ed-be0d-c63863ac6bb1	t	Poo-poo.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cd5738c9-bda3-4867-aca6-132c0d8ac3b2	t	Polka dot underwear	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f469ad62-8e3d-4c0f-bc29-23b09166b623	t	Playing trumpet for the mayor.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
96b5ced7-1613-4ffb-8572-70d0055ab328	t	Pizza.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0a64c389-067c-4aa6-b10a-9bf6bb7f0d28	t	Person milk.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2e5ec1d7-e96b-4816-b791-e7bd8938f35d	t	Peer pressure.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
befe97c2-088c-4163-95da-0802290b76bb	t	Peeing into everyone's mouth.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
3ab9dc2e-395e-4d19-84a2-995e7fd41e62	t	Peeing in the cat's litter box.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
16df9514-43fa-47ba-8956-f0d6a6f72509	t	Pee-pee.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
99487aff-ecdd-49c2-b0c1-60706750e0d0	t	Overthrowing the government.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5382a814-a634-4d98-a1e4-b5ce60740358	t	Only beans.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
aefa63c9-ea12-4599-8a4a-686efe0f11d8	t	One weird lookin' toe.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
35610a1b-81b6-48af-83a4-71d6884d624b	t	One tought mama.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
aa5d3a95-8d8f-4886-a477-f16c8dc30f11	t	One long hair growing out of a mole.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
da5682d2-68bb-4fbb-a810-957a9dd38076	t	Old people.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cbcfc2c5-fc7f-4bd0-bea0-10381ea3a467	t	Old Jim's Steamy Butt Sauce.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
63fdb86d-a536-4368-8bfb-7cf9ddd182d6	t	Obama.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
402ae2e1-f7e3-455d-89d2-a5d1de33b3a4	t	Nunchucks.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
34d6fc60-e036-437c-a78c-84dc49263ae0	t	Nothing. Absolutely nothing.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f8a214c4-53e6-4809-b819-33933dede9e5	t	Not wearing trousers.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6d077678-6fef-4f6e-b26c-27b7507ba319	t	Nipples.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
58eaa227-eb13-44ee-9c4b-64aa0e680db5	t	Never showering.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c9be0783-0a0a-4acf-ab3b-1e6dbd34acba	t	Naked people.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
22deb31b-c9d5-4e1f-9cb9-0aa5dab5baf6	t	My sister's stupid boyfriend.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5a8cb3c0-03ed-4886-ace7-6aa9b499e7fb	t	My girlfriend, who goes to another school.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5fdba4f3-c6d3-4160-a8af-7bfcb579cd66	t	My future husband.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
aca46aff-281e-4537-9357-426d83ca4853	t	My father, who is a walrus.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d99e438d-5763-4c19-8d71-1c56e2f0d9c7	t	My big donkey brother.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
de75aefe-a940-49f2-aac9-9d09f9b396d5	t	My annoying sister.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
989116b9-b850-4f98-8e5f-c3cd82839d94	t	Murdering.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
83060433-703c-4e95-9d2c-02a2b1d47cbe	t	Mowing the stupid lawn.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fb3ebc0d-fc74-4266-bcbc-a74094a5f90f	t	Moving to Ohio.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e3e068bc-0dd1-4fda-beab-259d017ffe31	t	Most of a horse.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d8bd4245-6afd-455c-99c1-9f8a3559df36	t	Mom's new haircut.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0f79fc6f-0ad6-41c6-8009-ffadefcf8ee9	t	Mom's friend, Donna.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
44810622-2768-475c-af59-ad50cf543b37	t	Mom's butt.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a66ef9f4-6309-421e-a4c0-dec727a9ef92	t	Mean people	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6bda7262-03bd-4006-bd72-e5925194f258	t	Me, your dad.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
586fe751-469d-4aa6-8236-5ffd5c9cbb01	t	Mayonaise.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
44f77406-bea0-4c7f-894c-bde44a04f17e	t	Mashing a banana into your belly button.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b5a6b79e-ebf3-4aed-9622-0443fa003c9a	t	Martin Luther King Jr.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
48ce7f72-e458-41c5-bd85-22c5c9f57240	t	Many wolves.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8f51c52d-23ef-4038-8e21-cb8406a73ffd	t	Making out in a closet.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1633bada-1bdc-4438-a64d-d6e56864fc47	t	love's quick pants	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0e4833d2-f67c-4f30-9772-1f744501e0bb	t	Locking Mother in the pantry.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7e3fa3c1-e32b-4326-8b08-514e2c0ee153	t	Living in the dumpster.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fba074e3-d751-4e10-9ee9-2ef05b8dcaa1	t	Living in a pineapple under the sea.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
bcb1764c-85f2-45af-82d0-be76f18adba6	t	Literally ruining my life.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
432c4674-cd13-42f0-9497-e3b274ee70c6	t	Lighting stuff on fire.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ea64cd87-3e39-4298-8b92-0861df9cfe3b	t	Licking a used bandaid.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
18a0aa5a-4b92-4c24-baf1-65f12ebc0200	t	Lice.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f16a80f8-b1dd-428d-97da-388cacb3c8d8	t	Legs.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
65b17108-f81e-4bde-9dc6-424d48eb3c45	t	Knives.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1794c175-76d1-4f01-904a-2c1621a752b6	t	Kisisng mom on the lips.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ecee18b3-285a-4621-8fa7-7ed934e573ff	t	Kevin's mom.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1c2f0f15-7826-4b8d-85f6-ef33d26bc3f2	t	Josh.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3ce3568d-31ba-495f-9552-ec4601cb8a49	t	JoJo Siwa.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0e22afa8-88d8-4b5a-903e-1c1d6db2ad24	t	Johnny Depp, dancing all sexy.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b98a04d3-1f48-4218-b0ef-30994a90fc08	t	Jesus's death.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e57fe9d8-9a48-45fa-b76a-63e6ba568393	t	Illegal drugs.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
24f98516-2731-4c4e-ba06-0a497bda7e96	t	Idiots.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b152a3b7-0d73-4be3-9d50-3c27646a7f66	t	Hurting people's feelings.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c7d612a7-0cd2-44fd-8276-cc7444dfc8b5	t	Huge, hairy men.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e917b07f-aa0d-4450-a7c9-212fa36a61c1	t	Huge pants.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
03f3c96b-d19f-493e-acd8-a729b144b804	t	How much wood a woodchuck would chuck if a woodchuck could chuck wood.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2cd18250-b670-4520-aeae-9c17552b250d	t	Hot, fresh doodies.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8dd1036e-71e7-4831-b7cf-15ab0e9c2e28	t	Horrible allergies.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2c28e9ed-8363-41e8-a873-5624cae25692	t	Hogs.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4e39ce95-2159-410e-afe2-cf032db359e7	t	Having to pee so bad.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ba812f1d-cf2b-4647-b2bf-50b0dcf11255	t	Having no friends.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cd6ed308-db4e-42b7-9f61-4aefe3397e6f	t	Having no bones.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1e95560f-aeed-4efa-a783-6dd991688c66	t	Having many husbands.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
363d8066-ae23-435a-9264-7d69a1bfd429	t	Having a really big head.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3808f9d1-07c4-47ed-8bbc-5970ae2eb2a7	t	Having a baby.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
aacdf590-ba5c-430d-a783-8197f8acaad8	t	Harry Potter.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fca22b47-ea06-42bb-b910-c699677ec85d	t	Happy Endings.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cec35775-c68c-402c-9535-fb157fb7adf3	t	Ham.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ded87515-8ed6-4a14-9632-144372f5c87e	t	Greta Thunberg.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8411ded6-87b5-40b1-a322-252e92b1c035	t	Grandpa.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ea7eecef-1dd4-4aff-b898-45ae996fdb31	t	Grandma panties.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1e70768c-c7b0-4c7e-b9ec-b87dbeb9df43	t	Going to Hobbiton for your hairy foot fetish	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
36bd9d82-72ce-49c5-b63c-9ab02c46ca0c	t	Going night night.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0f241f28-21b3-44b2-a3e6-83f708673885	t	Going beast mode.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3fddc135-b41a-4094-81bf-e498f4fa5c78	t	Going ballistic	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d58942e4-ccd3-451c-b1e0-2050c0e73a6a	t	Going around sniffing people's armpits.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4f4b01f9-e323-436c-996e-9978667d718e	t	Gluing my butt cheeks together.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6310f7ea-0dec-46aa-ac64-a83526e1f763	t	Glen's fabulous body.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6aee9a2d-b329-4eb1-afb2-646a590cb934	t	Girly drinks	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2dbeebc6-6b7e-4316-84e2-b05e3d2e29db	t	Giggling and farting and slurping milkshakes.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
160fbd64-28ad-4710-a194-530815b90803	t	Getting struck in the toilet.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
56197e08-e115-46fa-87ac-3225117b135c	t	Getting slapped with a fish.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
69a3e674-dfb7-44a0-8acf-d98310e28c1a	t	Getting skin cancer after 5 minutes at Takapuna beach	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e5d04b96-3698-4e6d-9f43-04e7ab13b580	t	Getting scalded in the fave with hot beans.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
22d539ae-6a9e-4323-8b95-70d285857276	t	Getting run over by a train.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
718a8c82-a982-4d34-b3fa-40116f3cb384	t	Getting naked.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cabfa94e-25a7-4e3b-85a8-1241b98289a9	t	Getting my ponytail stuck in my butt.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c9f55e8d-7363-410f-bd38-22794b58f3de	t	Getting married.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dd6178b5-000d-4bbf-8d26-bfbea90190c5	t	Getting kicked in the nuts.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8d55381e-bdc4-4bb7-b14b-a36ed1afe176	t	Getting drunk.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1b400df0-1fcd-48a3-8afd-f769c2f7a909	t	Getting crushed by a piano.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f6d77e80-cf7e-44a6-b684-52b6f8373cb2	t	Getting a skull tattoo.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9acf08dc-97e0-4a3e-8180-d32b2f9b3ee9	t	Getting a girlfriend.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4366c196-92c5-459a-bda2-1d82df84c3d7	t	Garbage.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7ba4c9b6-ace7-484e-b635-04360d603f4e	t	Freeing a fart from its butt prison.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
97e7b67d-5caf-4c44-a34d-89bef4bc9137	t	Fortnite.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4a91264a-e3e3-411d-9fbd-7a85dbf6e754	t	Forgetting to put on underwear.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9b24ab93-ba7a-4918-8d97-63cf22fddfcc	t	Flushing myself down the toilet.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
de708113-d189-430c-90fc-457c9c2c28ad	t	Floating through the void of space and time.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2996b562-3941-4d9f-b2f7-b6f3f77eacaa	t	Flamin' Hot Cheetos.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
67c401a9-45c7-45b0-9cb2-192d8cf8c5e3	t	Fire farts.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
58813843-b6fb-44d4-a81e-64a9a9d44036	t	Finger teeth.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c09f240a-d992-4140-96b9-60f54a34dcfb	t	Filling my butt with spaghetti.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
24e1fe58-2354-4f0c-8728-539f47aed05d	t	Feminist men.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
106c6766-8ee4-436b-aa77-683cbd70c7f1	t	Feasting upon human flesh.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
35f1a1fd-12bd-47f6-b2b2-d915f1530454	t	Father's forbidden chocolates.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
55f45b63-173e-4906-b3df-bd1d1da3a27a	t	Fat stacks of cash.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0e06fa66-5da6-4c3d-bb97-c46e461d699a	t	Farting, barfing, and passing out.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fd64394d-20b1-4ba6-a21c-cd4938768563	t	Farting Antelopes	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0dab70ea-79d2-49fc-ba20-6b71047d5f14	t	Farting a lot today.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
47942492-0384-45b8-938f-9d63bb5db715	t	Famous peanut scientist George Washington Carver.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8a9e66b8-1109-434c-9950-9818a8531212	t	Falling into a pit of waffles.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e07c45c8-6f69-4881-b7ac-88934e15b7a0	t	Fake news.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
daff00a3-8711-460b-a90a-6590a213601f	t	Failure.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
73121211-e97c-4149-9602-2d1cfcd6b58d	t	Evil.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cffcb84c-c757-40ed-9806-f0ace8704595	t	Elegant party hats.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5a6d7a8d-f6dd-41a1-9616-1afeb235fdec	t	Eating toenail clippings.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6fd9abb7-0f6f-447c-b3be-5bd45b362d1b	t	Eating a whole roll of toilet paper.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
02c4f131-c530-48b7-9026-4d63bdb489d4	t	Eating a baby.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
44c347cc-1244-43a2-99ea-f07e132d02d7	t	Dying of old age.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dbdf9bab-bda5-4ac3-98fc-ec2937cb15da	t	Dwayne "The Rock" Johnson's acting career.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
eb340bdf-0e52-48e4-b4d4-e2c887658a14	t	Dump cake.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
06c00b9a-d150-407e-bef1-5babb36da92e	t	Drinking out of the toilet and eating rubbish.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
67371eb9-f866-47f6-9bc0-42088198c3a0	t	Drinking gasoline to see what it tastes like.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
93b37aeb-3256-4a9f-83b2-62d93b57530a	t	Drinkig a whole bottle of ranch.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c46f4c12-3b14-41ed-bd7d-4b960da1377e	t	Dreaming about boys.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0dd1c077-308c-4360-b4ff-1eaebb4edd7e	t	Doing karate.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9a2bed62-1dac-4bcf-879f-776e27c1a0cc	t	Diarrhea.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3d7c057c-24ed-4cbe-87d8-25cf964a8aa1	t	Debating cartoon logic	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b6e558f2-ad6a-47b6-8189-72b4cc4eccb4	t	Dancing with my son.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b21aafc3-74e4-4c69-b134-61ae8b392b3b	t	Dad's meatloaf.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
03490639-d414-4595-ac72-096185e523c5	t	Dad's famous poops.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5173afbd-91f0-481c-a5f5-2a4ad6f181b3	t	Crying in the bathroom.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0ecf0847-e526-43c0-86c0-62ebd04e3bb3	t	Crab-walking from the toilet to get more toilet paper.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
64faf0fa-f6cd-4349-adde-d5c0e6ca531a	t	Covering myself with ketchup and mustard because I am a hot dog.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3a8d4c86-41e6-4dbb-8d68-f5e6c872db75	t	Completely drunk organizers.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
721c6c2e-33df-481d-adcb-5d15f8d017db	t	Comign back from the dead.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fbec5c46-fc03-4475-b81c-0627c3e21e3b	t	Coffee.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
80f42da8-6455-4cce-bbae-e67a5d442264	t	Climbing into a cow's butt.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
239fb3ae-4add-48fc-9466-d8ef054cdde2	t	Climate change.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fdb94e66-8b0e-49a3-aad2-f1f82ce84fa5	t	Cigarettes.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a2b49328-4577-4d9a-b1e6-5341987862fa	t	Chunks.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dbf09824-7524-42dc-8eb1-25cd7dc4f9fe	t	Chungo, the talking gorilla.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cdecb978-641f-4baa-8b69-ce340fa2c0fe	t	Chugging a lava lamp.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
d919d543-7e1a-4a07-9e59-8458d0263714	t	Chinese campaign clothing.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
374695b5-462a-4115-8d11-d9f6812acbb4	t	Chest hair.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ff0a1292-a6b1-48d2-83df-4310fbace9ce	t	Cheeto fingers.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
33ab4593-c87e-47fb-bc41-8c66bb933534	t	Cavities.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
424272e2-e9c5-453e-9668-ffb779b98780	t	Cat pee.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
06a13321-4552-417e-bc62-aaf54721ce4e	t	Butts of all shapes and sizes.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c7c68e89-4213-4e3a-8fbe-e8f940f4a82e	t	Butthole.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3229f0f7-d12b-46e6-879b-6134fabf94ea	t	Butt surgery.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
0ed04888-41f5-4334-b876-c42558e7b458	t	Butt hair.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
dfce4368-d7ac-40f1-b53e-fa97c4d697fa	t	Bursting into flames.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
b0b94752-b2f8-46e8-8537-c681c0ad957c	t	Burning books.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3f3b72e6-0b42-43d5-9b10-171366a21179	t	BULBASAUR.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e5b8a12d-976e-4b35-8a97-e005ee482248	t	Building a nuclear bunker at my parents' house.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
55001c81-629b-43fc-966d-4a30bf6b71c8	t	Boys.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
cea391a7-ce45-4e98-b560-bc838796f095	t	Boogie-boarding down Huka Falls	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
10322b3c-bcfd-40a2-b62b-fe3ee358e9a9	t	Boobies.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d25c1c3a-47e9-4e27-be39-7e74064b5616	t	Blowing up the Moon.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
2d96faa9-ed83-4eb7-8fa9-18871b9cf5ed	t	Blossoming into a beautiful young man.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
df91f76a-1ee3-4858-bc77-9a88a67e85fd	t	Bleeding.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
621a0375-ca24-48b9-bc57-22ac5c9e7783	t	Blasting my math teacher into the sun.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
bfc57c95-70d3-4826-a570-fafb7347c1c2	t	Blasting farts in the powder room.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e6b29de9-232d-470d-81c1-401d0eb3ed2b	t	Biting a rich person.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2048c529-ea1b-4256-8b59-d4d09cd52fad	t	Big, slappy hands.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e84bef04-9dc9-4e91-a70f-c8f7f7fb0db4	t	Big, juicy pimples.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
acfd5ea0-c95c-43bf-ac73-83b392285ac6	t	Big Randy.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
362bc066-f4da-4f57-830b-f747e3eb9af6	t	Big Mississippi boys.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
40c0a928-d884-4003-8311-d319ca9e7159	t	Big butt cheeks filled with poop.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
7c88c0cf-3f7a-4841-8683-a3aff59ed812	t	Beyonce's Superbowl performance.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
499a4576-48c3-450b-894c-b267f3aef779	t	Bench pressing a horse.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e80f6aa0-7812-4228-bb59-be451ae61031	t	Being super serious right now.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
83068140-fb71-4247-972e-3dc29c047bce	t	Being French, hoh-hoh-hoh!	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6c129800-844c-4c49-a50d-c1cca7adf7c3	t	Being famous on YouTube.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
84adc4d3-b0fb-49f1-9a95-10836ac9a487	t	Being dead.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ee8b3fcb-f615-4961-8e36-9753f67096bb	t	Being adopted.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c3aec767-843a-4b90-bd7b-350859a532c1	t	Beer.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8a077dfe-87f4-4110-995a-c4ccdd816566	t	Becoming the president.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
42f72e39-c42b-44c1-ae74-b5c6b63d1f21	t	Becoming taller and stronger than Father.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
be30c0e6-17f2-4cb5-8fb1-b6a33914a7a3	t	Beautiful grandma.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
75d3e2c0-58c6-46a2-9d12-c62e0789dfb4	t	Batman.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
11557e35-fcbf-4a2f-b59b-ced81178bc75	t	Barfing into a popcorn bucket.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f0377416-049a-4b8f-8ac3-315eb9cb5045	t	Barf.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c6af2636-1d39-45e6-ac2e-6dc8aef8c230	t	Balls. Big balls. Really big balls.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
07c7556e-f17c-4386-9bf8-1a2ec475343b	t	Bad parenting.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
524f1375-35a4-4032-a793-57238dfe7700	t	Baby Yoda.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
c1b13ba0-7939-44c6-b760-a2714bc41dc8	t	Aunt Linda.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
88a59eb1-c46d-4ad8-becf-6b748067a2af	t	Ariana Grande.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
21fd195f-8964-40d9-8e73-66d7937d226c	t	An owl that hates you.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4a575ec0-c9aa-40da-abc5-f2525ca0f393	t	An order of mozzarella sticks.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f99f44e3-eff0-4799-9de4-1049a7e9726f	t	An old, dirty cat with bad breath.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8d65f1ab-b11f-42fc-abdd-9af3763c3565	t	An invisible giant who takes giant, visible poops.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
71ab6e17-a61d-44f3-8e19-05b870331c57	t	Abraham Lincoln.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
8c452467-78d1-43ac-a66f-d70480f4d199	t	A wise, old woman with no teeth and cloudy eyes.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
30d3dee7-f58b-4cc9-89c8-c31b3fdd4281	t	A whole thing of cottage cheese.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a8f6ea28-917d-4ba2-b879-38dd827793ba	t	A turd that just won't flush.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2b3b228c-cd2c-4312-9041-95e794470687	t	A super angry cat I found outside.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
47a16765-aad1-4eb5-9154-880e90e45cb0	t	A screaming soccer dad.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
40387e5a-4e14-4051-9f39-bd54f95240a8	t	A scoop of tuna.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
440e9b5a-e006-4c7d-b0b7-9549d6c44d7b	t	A Republican.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
73d8d6ce-5feb-4c89-ad6c-9dabf452e916	t	A pregnant person.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
84b6cf6d-c8a0-46f2-bf82-e72316305026	t	A poop as big as mom.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
928f910d-bb5d-4f92-a9a5-99aeb348eda0	t	A plant-devouring space-worm named "Rachel."	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d9b08b9b-2444-4161-9b90-142487354148	t	A nice, warm glass of pee.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
76c1291b-d5c5-4322-8956-76d27c1bc1ac	t	A naked lady in a painting.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
1bbb60d5-d648-4fe3-b400-0e184c84e8aa	t	A long, long snake.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f5c1ac96-7ea3-4c75-97d8-f33ec87ad178	t	A long, hot pee.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
494c5cfe-ae55-4615-aa2b-373ab2e5ad7d	t	A killer clown.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
86edf2d0-5a87-41d0-a46d-423ecaef9030	t	A hundred screaming monkeys.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
a7a62036-6c71-47ce-a4f3-8162bd9d651e	t	A huge bitch.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
30ba94a4-2634-4b56-a9cf-8b31793571c4	t	A hot air balloon powered by fart gas.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
b618329a-51d5-4d3d-b70f-249d5b9d0599	t	A gerbil named "Gerbil."	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
fec8708e-d065-41bc-aa7b-be0cc663c8d5	t	A flamethrower.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
82159f39-9437-4ead-aca3-8d6c871bac1b	t	A fake kid made out of wood.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
42e83cce-2dd6-44d4-b221-bddaa0fe152b	t	A dollw that pees real pee!	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2c1a5ded-65ec-4275-8940-bacfbfeee4ad	t	A Democrat.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
10c8295f-0902-471f-a1c0-ac0782e5bb65	t	A dead whale.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
0985b0ef-6c8a-408e-ab09-b6a23140850c	t	A dead body.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f64f711b-1f99-4a38-8eca-27dc0d22bc02	t	A cowboy who is half boy, half cow.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
3f69c3f0-310d-4b66-a249-eed0c2798896	t	A butt that eats underwear.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
43078aa5-d734-4633-872a-261817bfe605	t	A bunch of dead squirrels on a trampoline.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ed0fcb87-f5bd-4849-a505-48716310a4f1	t	A black hole.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d61132e4-b33d-4a91-ab32-1e3e89920db3	t	A bird pooping on the president's head.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
133380e7-03e6-49bf-9d46-04b7be96a89e	t	A big, and I mean BIG turle.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
226e1958-1cf6-4314-b5c5-727fcb1ec578	t	A big sad dragon with no friends.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
5ce998f6-4022-4db9-964b-b3b543c47b07	t	A beard longer than 12 inches.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9f4bab57-d49e-45e3-a264-0868c908cd5d	t	A baby with a full mustache.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
2ad28a3f-fdfd-48cd-a7f5-eaa6060d6765	t	A baby boomer.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
15f5a153-f1c1-404c-809f-7883b0cf45cc	t	14 cheeseburgers, 6 large fries, and a medium Sprite.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
57d2a3a7-f524-4b73-95b7-1435c2c617b1	f	The Department of Psychology is looking for paid research volunteers. Are you 18-25 and suffering from _.	1	ee06b7d3-9af8-44a4-ad2b-83325af32692
3aa42af9-fe91-4f1d-a58a-008a390bf6ff	f	Pledges! Time to prove you're Delta Phi material. Chug this beer, take off your shirts, and get ready for _.	1	ee06b7d3-9af8-44a4-ad2b-83325af32692
58f94360-c436-4cff-8f8c-8f45394c72d9	f	My memory of last night is pretty hazy. I remember _ and that's pretty much it.	1	ee06b7d3-9af8-44a4-ad2b-83325af32692
1ab6370d-10c1-48cf-af14-381bbf97a463	f	In this paper, I will explore _ from a feminist perspective.	1	ee06b7d3-9af8-44a4-ad2b-83325af32692
44e82e53-4681-46f7-b22c-f4e114d4e484	f	Did you know? Our college was recently named the #1 school for _!	1	ee06b7d3-9af8-44a4-ad2b-83325af32692
496ad07f-252e-4095-b883-b4ff77f61a4a	f	All classes today are cancelled due to _.	1	ee06b7d3-9af8-44a4-ad2b-83325af32692
80ecaf22-1067-4670-93de-0f1c6b8c75d3	t	Young Republicans.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
5ea942eb-740f-4cd0-a3c1-574a25836088	t	Whichever one of you took a shit in the shower.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
3fc0ae06-addf-4d8d-86f7-3b5731d17f07	t	Wandering the streets in search of a party.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
ffbe53c0-c73f-458a-9049-8a45b1d1290b	t	Valuable leadership experience.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
e7dc51ec-3b16-4573-b74a-b2a32da568d4	t	Uggs, leggings, and a North Face.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
c7e0d353-93a9-4be4-9495-19ca21e42da7	t	Throw up.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
bd917c10-3b87-4ee0-8e4f-7ee6ab39da1f	t	The sound of my roommate masturbating.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
f5797015-9826-472d-b2fb-057c0c228316	t	Sucking a flaccid penis for 20 minutes.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
548ee361-5879-48d2-94df-bda5c27a84c3	t	Rocking a 1.5 GPA.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
962ff895-f5c4-41cc-9601-2cded51f3a8e	t	Pretending to have done the reading.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
e50e2023-bef7-4a68-83f3-6502f4304f68	t	Performative wokeness.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
baad9d9c-8a70-4f36-9a9d-8f1b66c7f73a	t	My high school boyfriend.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
c7d30a75-e214-470e-b9ea-150ebc0d88b4	t	How many Asians there are.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
c267ca55-0554-478d-9499-38ad5b309c1b	t	Googling how to eat pussy.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
9d272d15-a791-4e18-a828-836d6159ae42	t	Going to college and becoming a new person, who has sex.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
cb4654a5-097b-4eb7-b2c2-f99e6284f018	t	Fucking the beat boxer from the a cappella group.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
497afc9c-d6c6-47b6-990d-6e4d45378c5c	t	Five morons signing a lease together.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
0754fe96-68d4-4a74-9cac-50d4a716bba9	t	Falling in love with poetry.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
1d341443-9870-462e-bf88-d0e144c7c0d3	t	Calling mom because it's just really hard and I miss her and I don't know anyone here.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
9e57dbff-f9a9-43e6-8e89-c51e6f594645	t	An emergency all-floor meeting on inclusion.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
f2010917-5523-4a4b-a85b-91f6378050a5	t	A Yale man.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
54a5d6d2-3f97-4bb8-9e91-1673389f9a56	t	A girl who is so interesting that she has blue hair.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
357f5269-8c9c-4877-bbb0-bc2a12d991c5	t	A bachelor's degeree in communications.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
7f7d20d6-d6d5-46a8-9478-2346be8c229d	f	When I am Prime Minister of Canada, I will create the Ministry of _.	1	133a3c5a-af03-4708-af98-8ff154ff76f4
f4a1efc5-be14-4bf9-8ecf-17d043896e52	f	What's the crustiest?	1	133a3c5a-af03-4708-af98-8ff154ff76f4
3c3aeb69-30d6-4f01-b78b-db57703d327a	f	The Royal Ontario Museum has just opened an interactive exhibit on _.	1	133a3c5a-af03-4708-af98-8ff154ff76f4
aca3d9fb-104d-4ead-9e00-7bf1f63bc77f	f	Next season on Celebrity Apprentice: _.	1	133a3c5a-af03-4708-af98-8ff154ff76f4
bfac4c4f-0537-4418-8da4-8476ada8ca21	f	In an attempt to reach a wider audience, the Royal Ontario Museum has opened an interactive exhibit on _.	1	133a3c5a-af03-4708-af98-8ff154ff76f4
9965c21b-29c8-403b-b0d1-1f5ac2a79fec	f	CTV presents _, the story of _.	2	133a3c5a-af03-4708-af98-8ff154ff76f4
fc865b0c-072c-47d3-90ec-8a6e29a6e454	f	Air Force fuckery is getting so bad that the brass are starting to blame _ on the lack of discipline.	1	133a3c5a-af03-4708-af98-8ff154ff76f4
13889f03-4b9f-473e-8558-02555826bd4d	t	The royal penis.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
15147403-2c48-40c8-b434-9a20690d01f3	t	The Ohakune Carrot	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
dc2aafeb-8389-4c23-9dfe-211d03a4b627	t	The FLQ	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
5c10c524-46ed-44a6-99db-ca5ed58ab23a	t	The Famous Five.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
018f1945-9524-4e82-b0e3-3831b8abfc18	t	Test driving a used sex toy.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
4f68aff2-e71a-4691-95fe-849d9a9d0ae9	t	Systemic racism.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
96a6f7cb-2235-42a1-87e1-07373ad0f907	t	Stephen Hawking	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
5d3c8d1b-12cb-4362-a7f2-65ee80ab859d	t	Snow falling gently on the frozen body of an orphan boy.	\N	a95919a6-97a3-40dc-84ba-702fed111361
9dc622c6-118b-474c-8f13-7ea277b132a2	t	School friends' uneducated views on sex	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
6a9a8278-902e-4167-bfe3-bb09570a008f	t	Rob Ford	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
5dfe7756-65fd-4805-87ec-05ed91de8b0a	t	Poverty porn	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
7c7f8150-11f1-49d8-aac5-3ce56b8aca25	t	Newly incorporated kamikaze tactics.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
c6300ab9-fdeb-4ada-b39d-3caf0dbbeeb3	t	Naked people.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
4685ae8a-a6e8-45f1-b6fa-80babd61060a	t	Mr. Froto's ring	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
38a1aaeb-db28-47b2-ad98-718b2606934e	t	Homoerotic ass slapping amongst athletes.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
a8e617ed-9a05-4a2d-af05-07a5823b4573	t	hermaphroditical Italian pictures	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
48b20184-1a52-4aaa-bdca-c0b96c5f3ed7	t	Don Cherrys wardrobe.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
87abe10f-876e-43af-90e6-6261a2a0b74a	t	Canada: America's hat.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
40e9f02f-c4ac-49a5-951b-d985a5006b32	t	Burning Flipside.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
010ab2a1-a6b5-4ed2-a92e-4f2137d7a689	t	Being catfished.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
aef848ee-8cae-4f3b-b79b-7f2e19a8486a	t	An identity crisis	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
8d8203e0-af35-4c09-b9e4-f9645a70558a	t	A time travel paradox.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
5762aa4f-111b-48a5-8511-08fcc28e2f4f	t	A Molson muscle.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
c94f21e6-5ba7-4d01-b0a6-1dc4c4d9426b	t	Two midgets shitting into a box.	\N	7a7a3827-3882-4982-b262-267942846ee8
aa814c5f-3d8e-4d8a-b3d8-64528da50292	t	The J15 Patriot Assault Box.	\N	7a7a3827-3882-4982-b262-267942846ee8
c3a70f61-5784-4bda-ba36-3a2e3837bdb4	t	The even biggest, blackester dick.	\N	7a7a3827-3882-4982-b262-267942846ee8
c005214e-8c40-467b-94b5-29b8a97792c7	t	The Boxcar Children.	\N	7a7a3827-3882-4982-b262-267942846ee8
37a92dad-b153-481e-9ec8-69fa0efab5a6	t	The biggest, blackest dick.	\N	7a7a3827-3882-4982-b262-267942846ee8
55e03c02-ec83-417a-b584-96e331f440f3	t	Something that looks like a box but turns out to be a crate.	\N	7a7a3827-3882-4982-b262-267942846ee8
6192963d-4e7e-4c8a-bf65-cb9134674529	t	Pandora's vagina.	\N	7a7a3827-3882-4982-b262-267942846ee8
2199f034-489f-47c0-81de-42a90deaec08	t	Former President George W. Box.	\N	7a7a3827-3882-4982-b262-267942846ee8
1194e9b1-4a41-4fe5-a555-a4db42dfa232	t	Boxing up my feelings.	\N	7a7a3827-3882-4982-b262-267942846ee8
51cd7912-6881-4859-8abd-163427bd2f85	t	Being a motherfucking box.	\N	7a7a3827-3882-4982-b262-267942846ee8
af4d5b43-c8f5-4559-8367-cbdae4a15ba7	t	An outbreak of smallbox.	\N	7a7a3827-3882-4982-b262-267942846ee8
830d57e8-ec13-48d4-a808-5cb0a645f4e4	t	An alternate universe in which boxes store things inside of people.	\N	7a7a3827-3882-4982-b262-267942846ee8
add31073-0b39-4bf0-a559-d7e5ad38d693	t	A world without boxes.	\N	7a7a3827-3882-4982-b262-267942846ee8
5c3a2e3e-4479-49b8-95cf-64393b7d2830	t	A man-shaped box.	\N	7a7a3827-3882-4982-b262-267942846ee8
aa525eb3-f0d1-49a8-94e3-c174c839ab27	t	A falcon with a box on its head.	\N	7a7a3827-3882-4982-b262-267942846ee8
e455b788-1264-4cb3-8d98-06336515b763	t	A dick so big that it is a problematic stereotype.	\N	7a7a3827-3882-4982-b262-267942846ee8
d650867f-33d7-4c84-9ba9-5a11e07116f2	t	A boxing match with a giant box.	\N	7a7a3827-3882-4982-b262-267942846ee8
31f1686b-294c-49b7-ae77-96b091876734	t	A box.	\N	7a7a3827-3882-4982-b262-267942846ee8
6c2354a3-194f-440c-9fa7-c63d1be0ad02	t	A box-shaped man.	\N	7a7a3827-3882-4982-b262-267942846ee8
1b166941-8656-49f3-9c19-718e433919a7	t	A box without hinges, key, or lid, yet golden treasure inside is hid.	\N	7a7a3827-3882-4982-b262-267942846ee8
dbf98949-a69a-464f-b70d-419e50bf23fa	t	A box within a box.	\N	7a7a3827-3882-4982-b262-267942846ee8
7426520f-de93-4fc6-b308-4d5be941e300	t	A box that is conscious and wishes it weren't a box.	\N	7a7a3827-3882-4982-b262-267942846ee8
f8e04799-558d-4b31-8c71-857f3e1446dd	t	A box of biscuits, a box of mixed biscuits, and a biscuit mixer.	\N	7a7a3827-3882-4982-b262-267942846ee8
07668902-fdba-4a4c-a9aa-0f07b64299ca	f	You've seen the bearded lady! You've seen the ring of fire! Now, ladies and gentlemen, feast your eyes upon _!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
0be981f2-dc4a-4259-9da5-f567a65d14bf	f	You Won't Believe These 15 Hilarious _ Bloopers!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
6ea1586f-7a5b-4785-b810-69c1b907e6e5	f	You know, once you get past _, _ ain't so bad.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
1834c4df-8ddc-4c4e-a772-fdb22fddd593	f	You guys, I saw this crazy movie last night. It opens on _, and then there's some stuff about _, and then it ends with _.	3	21166107-a43e-4d61-ac5b-6cbbf18f1874
a0ebf0b2-9c01-4a36-976c-b9cd3d3e3f28	f	You are not alone. Millions of Americans struggle with _ every day.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
2858ab1a-2762-40f2-86c9-cc3bf578b6b1	f	Yo' mama's so fat she _!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
7af600c6-fb8b-45ba-94db-5db585940b48	f	Y'all ready to get this thing started? I'm Nick Cannon, and this is America's Got _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
393904ba-011b-454d-9c3d-ce409e9fb625	f	Why won't you make love to me anymore? Is it _?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
83262753-baa3-4e32-94b4-066ebd8b145c	f	Why am I broke?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
590e8437-1bc3-4573-8aca-2d7962ac63e6	f	WHOOO! God damn I love _!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
90b9b025-f0b9-4fac-9b4b-4e07e40c0174	f	When I was a kid, we used to play Cowboys and _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
e851bb8d-a8d7-4557-9723-f523675407d3	f	What's making things awkward in the sauna?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
e37ba097-3105-4006-a951-2cf6113fc812	f	What's fun until it gets weird?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
dffd07cd-c96d-419a-9e4a-9f940588e44a	f	What killed my boner?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
3c96713e-10f3-4225-a762-ba4f8743cb70	f	Wes Anderson's new film tells the story of a precocious child coming to terms with _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
f9d778e9-cb60-4973-8fa6-e2b144754786	f	Well what do you have to say for yourself, Casey? This is the third time you've been sent to the principal's office for _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
e45a42de-b2d6-47cf-9057-1bbefd7ec61b	f	Well if _ is good enough for _, it's good enough for me.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
5d4d59b2-7c0d-4198-8db7-26cc281234ac	f	We never did find _, but along the way we sure learned a lot about _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
8b86e2d0-3f69-413f-9bf8-9db3a20b6f96	t	Underage drinking.	\N	ee06b7d3-9af8-44a4-ad2b-83325af32692
41379a27-57ff-4d00-872d-86755be0d575	f	Tonight we will have sex. And afterwards, If you'd like, a little bit of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
b3233466-30b5-4f1e-bd70-a4f053a87a13	f	To become a true Yanomamo warrior, you must prove that you can withstand _ without crying out.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
e2357aae-e7a3-4e79-89d1-dd24feac21bf	f	To become a true Yanomami warrior, you must prove that you can withstand _ without crying out.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
f0215b58-d01e-4b33-94cd-9e3635d6ce10	f	This year's hottest album is "_" by _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
89c84ac8-8e7b-4f3b-8d49-6ae335a2b87d	f	This is the prime of my life. I'm young, hot, and full of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
250a3f47-7297-4c8f-ba35-7ff1db8b1596	f	_ will never be the same after _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
6b6c76de-760e-49bc-a858-c37c74c143ea	f	This is America. If you don't work hard, you don't succeed. I don't care if you're black, white, purple, or _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
e87dd945-9bbb-4c6e-bac5-55710ed30365	f	The six things I could never do without: oxygen, Facebook, chocolate, Netflix, friends, and _ LOL!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
44751248-148f-4847-9233-46979c25961d	f	The Japanese have developed a smaller, more efficient version of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
98b60721-7e71-490a-a2f8-f4d837657a67	f	She's up all night for good fun. I'm up all night for _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
9107cac3-8ce1-4bda-bee3-8448e9eae07f	f	Puberty is a time of change. You might notice hair growing in new places. You might develop an intrest in _. This is normal.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
61c3767e-58d2-4c70-a776-1025b23f632b	f	Patient presents with _. Likely a result of _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
a168d4c1-11fa-4b37-99f5-dd4ba31b0e6d	f	Oprah's book of the month is "_ For _: A Story of Hope."	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
b18559b8-c113-412b-aad8-43531d98b016	f	Now in bookstores: "The Audacity of _" by Barack Obama.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
54feaa62-ec20-4e32-8547-85f4ae7e5cb0	f	My grandfather worked his way up from nothing. When he came to this country, all he had was the shoes on his feet and _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
16701f5d-7c6c-4f36-8028-590d2f95211c	f	Man, this is bullshit. Fuck _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
44752fa5-928a-405e-8c41-68c58a250005	f	Listen Gary, I like you. But if you want that corner office, you're going to have to show me _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
9094f701-9572-4e3f-83d2-8b267bd9e5fa	f	Life's pretty tough in the fast lane. That's why I never leave the house without _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
ffd9ae9a-28f3-44b5-a3c4-eccca81d5ed9	f	James is a lonely boy. But when he discovers a secret door in his attic, he meets a magical new friend: _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
85fafd6b-00a3-4efc-8e57-e28dacdbc460	f	It lurks in the night. It hungers for flesh. This summer, no one is safe from _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
677b2405-d2a8-4766-81ef-9e72ce30b84f	f	In the beginning, there was _. And the Lord said, "Let there be _."	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
6eba68ba-3026-4875-88c5-96f95ed9188b	f	In return for my soul, the Devil promised me _, but all I got was _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
c2308be6-d453-44f4-9aa9-7c039835fa65	f	In his new action comedy, Jackie Chan must fend off ninjas while also dealing with _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
7f8369c6-da14-42de-9939-0c3fe3465bbb	f	In his farewell address, George Washington famously warned Americans about the dangers of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
a1fdc8fd-76b3-4a8e-b2e6-ad172d64091c	f	If you had to describe the Card Czar, using only one of the cards in your hand, which one would it be?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
5c12a4a9-36bd-4ce4-ab14-da8256c1cda1	f	If you can't handle _, you'd better stay away from _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
74eecab3-c4c5-419c-a9d5-57556b891670	f	I'm sorry, sir, but we don't allow _ at the country club.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
a692b91d-2c1a-43f0-a2b3-fb5e1add99a3	f	I'm sorry, Mrs. Chen, but there was nothing we could do. At 4:15 this morning, your son succumbed to _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
9e771d2b-3cc9-45e7-9a30-ff58cd16a789	f	I'm pretty sure I'm high right now, because I"m absolutely mesmerized by _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
62c7523a-013f-4d9a-8f03-1a3d917ccc19	t	The haunting stare of an Iraqi child.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
03d38738-3a55-4264-922e-82a20b33b252	f	I'm Miss Tennessee, and if I could make the world better by changing one thing, I would get rid of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
cfecf430-631d-4947-800c-d4e1c083185c	f	I work my ass off all day for this family, and this is what I come home to? _!?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
36c1950e-6911-4f1c-8ee1-87c6ace85d7f	f	I have a strict policy. First date, dinner. Second date, kiss. Third date, _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
72c2cb49-a1b5-4553-84df-1b4202742f42	f	I don't mean to brag, but they call me the Micheal Jordan of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
0d103896-6bb9-4cf8-965f-4f72f678ce1a	f	I am become _, destroyer of _!	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
cd7d8bdc-a960-4d1d-ad7f-716c47724532	f	How am I compensating for my tiny penis?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
cb9536d1-dde1-415f-ab9e-432fe01df2b2	f	Honey, I have a new role-play I want to try tonight! You can be _, and I'll be _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
2ebf9d40-ec11-471d-a62a-26e6475ba3c3	f	Hi, this is Jim from accounting. We noticed a $1,200 charge labeled "_." Can you explain?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a420afd3-d42f-4625-aea8-118be16d5749	f	Hi MTV! My name is Kendra, I live in Malibu, I'm into _, and I love to have a good time.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
1c532bca-4047-450a-aa2a-ba81ad010bd7	f	Here at the Academy for Gifted Children, we allow students to explore _ at their own pace.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
c942833a-4f5d-4c18-a380-9a479b9790c1	f	Help me doctor, I've got _ in my butt!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
bc5ee09d-1ca4-496e-81d3-f92edb20e81a	f	Heed my voice, mortals! I am the god of _ , and I will not tolerate _!	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
f86098f2-4257-4bb1-8934-c92b77ae809d	f	Having the worst day EVER. #_	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
72333367-28f1-4461-9d54-ef8b5111b51c	f	Get ready for the movie of the summer! One cop plays by the book. The other's only interested in one thing: _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
67d6b234-2f03-4bb2-99dc-ea4cdc000b7e	f	Forget everything you know about _, because now we've supercharged it with _!	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
177fd100-f5cf-430e-8316-8bc274a8b436	f	Everybody join hands and close your eyes. Do you sense that? That's the presence of _ in this room.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
ec283fb4-49cd-4947-8021-039a7956fe42	f	Every step towards _ gets me a little bit closer to _.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
a301ab85-fc08-4980-8095-dc635808c54e	f	Don't worry kid. It gets better. I've been living with _ for 20 years.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
95a3bac0-468f-40da-b3b7-4b4111dca010	f	Don't forget! Beginning this week, Casual Friday will officially become "_ Friday."	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
e2bbec27-66dc-4359-8c28-ba8b9c541fdf	f	Do you lack energy? Does it sometimes feel like the whole world is _ ? Ask your doctor about Zoloft.®	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
1efc67ea-0326-41fe-b3a2-8ba3a1cb556e	f	Do the Dew with our most extreme flavor yet! Get ready for Mountain Dew _!	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
8e98818b-80e0-43a6-838a-ec20b48c080b	f	Do not fuck with me! I am literally _ right now.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
b22b18b5-a4ec-446e-ac25-47167cd3f820	f	Dear Leader Kim Jong-un, our village praises your infinite wisdom with a humble offering of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
98281368-8eb0-42cc-a819-a2ebaabf244e	f	Dammit Gary. You can't just solve every problem with _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
90d92569-2b63-4c6a-93ad-03a2c94b5317	f	Come to Dubai, where you can relax in our world-famous spas, experience the nightlife, or simply enjoy _ by the poolside.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
7918954f-5855-4c14-95fc-f83c2f55161c	f	Behind every powerful man is _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
5c620f48-b085-4068-915e-dda01dfb3b65	f	As king, how will I keep the peasants in line?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
3111d85e-b1ca-45c3-afff-9a9d288a8fad	f	Armani suit: $1,000. Dinner for two at that swanky restaurant: $300. The look on her face when you surprise her with _: priceless.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
70b7086e-5b03-4a6f-839c-8090376e8698	f	And would you like those buffalo wings mild, hot, or _?	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
1755cb1c-1063-4973-b8aa-54d7a002b786	f	And today's soup is Cream of _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
b5a77643-f02d-4272-a9db-c6b9d4cd6384	f	Adventure. Romance. _. From Paramount Pictures, "_."	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
cbdc7532-6cac-4c12-b71c-00dd0f851f7f	f	2 AM in the city that never sleeps. The door swings open and she walks in, legs up to here. Something in her eyes tells me she's looking for _.	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
a5870fea-054d-47e1-b08f-768b2698ca58	f	"This is madness." "No, THIS IS _!"	1	21166107-a43e-4d61-ac5b-6cbbf18f1874
1f0f4f29-6426-4cc1-b5f2-9af8617db04f	f	_ may pass, but _ will last forever.	2	21166107-a43e-4d61-ac5b-6cbbf18f1874
4e5530ac-e655-4351-a6d8-f34528f823e6	t	Whatever you wish, mother.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3af9af80-c2af-4018-a95e-33c66ff14bfa	t	Whatever a McRib® is made of.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
831160e1-b0b2-4c5c-9b89-877938c1f29a	t	What Jesus would do.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
259d7702-e269-4d8d-b59f-95998aed60ad	t	Western standards of beauty.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
79b4e2ca-8e58-4e44-bd94-76d4a9578b88	t	Wearing glasses and sounding smart.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bdfdf966-363f-4c2d-b414-55c672f2b7f7	t	Walking into a glass door.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
df2ccc28-bce9-4141-803b-7abaa216041f	t	Vegetarian options.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a703f64f-1417-44fb-aa3e-f740b12819be	t	Unsheathing my massive horse cock.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
2b8f3b65-eb18-48ef-88d8-a809f7d9662a	t	Unrelenting genital punishment.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
f82ea987-d1f3-4627-bc78-776c02feb17c	t	Unquestioning obedience.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5682fc7a-785b-427a-9615-eccb9c375674	t	Two whales fucking the shit out of each other.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
af78571e-06be-4526-8ec0-79aada871464	t	Turning the rivers red with the blood of infidels.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3bb2fc8b-1604-4c32-91c8-23bb083aa5d6	t	Treasures beyond your wildest dreams.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
41009570-38f7-486f-ac7f-c0c4185c7624	t	Total fucking chaos.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
743c83b1-b574-42e2-8ead-acd8fcbd1a25	t	Too much cocaine.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
53b8c3a2-9bb6-4e36-a3a3-c53ee12b7fe7	t	Throwing stones at a man until he dies.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
92802dff-bfa3-4e8a-835b-70d89f8f6c9c	t	Three consecutive seconds of happiness.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
591ffca6-46e4-4e44-887a-d120e9455671	t	The white half of Barack Obama.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5b55cae4-5b4d-47f8-90b4-00553335f9cc	t	The unbelievable world of mushrooms.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
87e81b72-70c9-41a7-a6f6-fcdb08c71d22	t	The tiniest shred of evidence that God is real.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b7aaaade-d956-4659-aa28-3acfe666b7ec	t	The tiger that killed my father.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
93f6dd15-d213-4f89-b339-b0624b52a45d	t	The swim team, all at once.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
23165506-dffb-42ff-a70f-d82597542d0d	t	The sweet song of sword against sword and the braying of mighty war beasts.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1ad06d02-22a1-4b47-b4cd-156c609836bc	t	The size of my penis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
350997d3-fefe-4aa9-b4a3-3fb7b8f88587	t	The secret formula for ultimate female satisfaction.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5e5115c1-06c3-4762-bbb0-47e43388a431	t	The safe word.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b74d0f5e-8c42-4f2e-9a5b-4279d69f4354	t	The right amount of cocaine.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
f2b478e4-7b2e-4367-832f-bc9bc9de1320	t	The power of the Dark Side.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
fee3e03a-5ffa-4dbc-9bf4-d413bbffb23e	t	The peaceful and nonthreatening rise of China.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
d02c113a-7792-4241-bf09-5c204b168d64	t	The passage of time.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c7bb8e0d-89d8-4095-be1b-62ca4be2d8d9	t	The male gaze.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8db57a72-2f40-4104-87c9-9ed2e30d4524	t	The inability to form meaningful relationships.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
e56c1df4-6937-4cec-a3af-6692152a0212	t	The ghost of Marlon Brando.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
4b6aa5f9-f2f2-4340-b3c7-1ca670e8be0a	t	The euphoric rush of strangling a drifter.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
4d8a0c7d-7800-4b98-b6fb-a595820fe225	t	The eight gay warlocks who dictate the rules of fashion.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
64f09910-7ac5-41d0-b11f-5826b1d8bcb8	t	The dentist.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b34bf5e3-0370-4cbe-b10c-79394a64f992	t	The complex geopolitical quagmire that is the Middle East.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bc7a4a2f-9750-45c4-bb32-280c01fa4d7b	t	The color "puce".	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
55e1aeeb-f416-495d-9268-d8e44f93eb8c	t	The black half of Barack Obama.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
e0d4418c-2173-48cd-9d18-a66a0b03d4e1	t	The best taquito in the galaxy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
105bb40b-ba07-400d-bee2-226dd4c97b92	t	The basic suffering that pervades all of existence.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
0f1b3df0-5774-40cc-aab1-a6ce19039826	t	The amount of gay I am.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
400ee5c3-44e9-40be-b733-e5918ca85cb1	t	The all-new Nissan Pathfinder with 0.9% APR financing!	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
208c09f0-a9f5-4072-8e62-437354cb5e75	t	The Abercrombie & Fitch lifestyle.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
646ba3d6-8a3a-4378-adc8-9d4bf15f3fb5	t	Texas.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c238f825-b136-493b-b2f7-d5aabfc3d18f	t	Teaching a girl how to handjob the penis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
0f14296b-46ff-4c23-9192-23dd07d196fe	t	Sudden penis loss.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1cbaba01-f117-481b-b1cd-1baee1078d1b	t	Sucking all the milk out of a yak.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
304bec71-2af4-4c32-bf23-9923b0210c47	t	Such a big boy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3e217d01-3cc1-4de6-94df-e034388e990e	t	Stupid.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
e1104ba5-1d79-481f-8918-e8e349cbe089	t	Stuffing a child's face with Fun Dip® until he starts having fun.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c1ce1c25-df26-4a9b-91de-e6deba9f339f	t	Storing a bunch of acorns in my pussy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7f251297-89c5-4073-8021-fd219b4c0810	t	Sports.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
901b39ea-2a9a-4f3e-a698-fe7f4f611f29	t	Some sort of Asian.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
cf29a7dd-3eef-4280-8fc8-9d32cb37eda2	t	Some shit-hot guitar licks.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
876a9335-86d3-4064-9f1a-e5f72c10f730	t	Social justice warriors with flamethrowers of compassion.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7181a6e7-bf82-4b43-9acd-bd2b4fd5c74d	t	Snorting coke off a clown's boner.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
dae7db36-4204-42a1-b0c3-70d6c08110ff	t	Smoking crack, for instance.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
299d1619-df5e-4a22-9a39-f64a21b109f8	t	Slowly easing down onto a cucumber.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
4ecc5b48-714d-4940-b1a8-b7a90bdf8b7a	t	Shitting all over the floor like a bad, bad girl.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
41d80fd1-7440-4cf7-91ca-395568f9a1a5	t	Sharks with legs.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8d549d66-b4d4-4db1-8201-fddd766af0fd	t	Shapes and colors.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
176b7b4d-d3a2-4ca9-a859-ade1d71958ca	t	Setting my balls on fire and cartwheeling to Ohio.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bd85b5f6-b9c0-4d0f-b2de-cf1cea81093c	t	September 11th, 2001.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
aae016e7-7e75-4a7d-a513-a27dd3b17173	t	Seeing things from Hitler's perspective.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
62513e1c-ef4e-40da-8683-f321d3d30e4d	t	Seeing my village burned and my family slaughtered before my eyes.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a07e56aa-1dd4-467d-b558-a17b6078a50e	t	Russian super-tuberculosis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
dfd0fc7e-6c1e-4382-9700-ad1248d2b137	t	Robots who just want to party.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bfe4318a-79e8-4fe0-86c4-20023331fb3d	t	Ripping a dog in half.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6b81b1c6-79ea-4ffc-96c8-b3975ad8a43e	t	Reading the entire End-User License Agreement.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
abaac67e-7fed-43b3-881c-ade2345b8896	t	Raccoon: The other, other dark meat	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
62bdbe1f-ba49-4e57-9064-a3a84d471c5d	t	Pussy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
19964c60-727d-49d3-9555-0633fe844edc	t	Prince Ali, fabulous he, Ali Ababwa.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
dea1de9e-7cf5-4629-bfbb-5fa1fc34d0c5	t	Potato.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
edd9533a-cc13-4914-8d16-43db52aea552	t	Peeing into a girl's butt to make a baby.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
ba57fad4-2b7e-49a4-aa32-32e295adf2a2	t	Party Mexicans.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
033babc7-d04d-4a5d-98d3-27c00dd65168	t	P.F. Chang himself.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bf2839b0-8939-4843-bccd-c7a222ba48ca	t	Owls, the perfect predator.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
0d18fe1b-83cf-469e-bd80-1a8ee5ad5b84	t	Out-of-this-world bazongas.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
101f449c-f573-449d-ad2e-bdc15fff134d	t	Our new Buffalo Chicken Dippers®!	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
04c7db4e-76bf-448b-a314-46ad76972187	t	One unforgettable night of passion.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
7a7fcda0-5bf7-4667-9084-91bb21299d93	t	Oil!	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6d602d48-dac6-4614-9052-6b365b6a5aca	t	Not believing in giraffes.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
d7e71d01-13ac-4f8f-8896-c80ec8fbef4b	t	No longer finding any Cards Against Humanity card funny.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8e8f1a7a-ec60-4c72-a477-c74f2c241a8d	t	No clothes on, penis in vagina.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1f1803d5-5f63-4927-a137-fdf624440347	t	Never having sex again.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
62ebf50f-c370-4a78-8e99-90ac67d717a5	t	Neil Diamond's Greatest Hits.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
fa51a130-a818-4231-9dae-28e200f8c3f8	t	My worthless son.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
cc539ff7-b446-4def-973d-a51ae276dca2	t	My sex dungeon.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
746f89fd-e029-465f-bf74-d02fb2744c3f	t	My first period.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
fc7a32ed-2966-44e7-b12f-9ef0a3ea7c1c	t	My dead son's baseball glove.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
97ed613b-4a54-4a96-9987-53b0053078bc	t	My dad's dumb fucking face.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
fd9c9c0f-94a1-49cb-8012-799dd11f4d09	t	My boyfriend's stupid penis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b3545086-e03d-46df-8ded-e9f4e851d0a5	t	Morpheus.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
01c580fe-e011-4d8d-a49f-9caa61406f96	t	Mom's new boyfriend.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c4477681-aba9-4a3d-b981-52d04a68db0c	t	Moderate-to-severe joint pain.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bcf44872-0b9b-46b1-9e39-bca45c2d0ffa	t	meditating on virginity	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
95e2654d-b8ba-4bac-b9a6-6ab4d13c8e5a	t	Meaningless sex.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
9f0ccc80-a785-4114-a58f-edef8fd6d1d4	t	Lots and lots of abortions.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
774d25b3-0d4b-4de3-888d-4cd07af67268	t	Like a million alligators.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a1a9b552-ef67-41c0-8e06-89eddde6cfc6	t	Letting out 20 years' worth of farts.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7130e0ea-47cb-4594-b7f4-18cc340c96e3	t	Khakis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a5d8d258-2a13-4407-87e5-28979e53bb1e	t	Kale.	\N	e24c45ac-4baf-4900-ba07-82823a946366
db23704f-1d82-4554-b927-15c112a730ec	t	Jizz.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3fd6db8c-350d-4910-bd47-a85406b81090	t	Irrefutable evidence that God is real.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
79522a73-7be6-44af-b1f1-d2f2a4966932	t	Interspecies marriage.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3e17d855-2f60-488c-bea7-e1a19ddb3620	t	Injecting speed into one arm and horse tranquilizer into the other.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
620b68ae-6222-4ea4-b25a-18a4431b593b	t	Important news about Taylor Swift.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
f226d1d8-ed1d-428f-8eec-76e3b0e42a8b	t	Immortality cream.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
9e4d73df-ecb4-41b7-ac7b-b9fada856cb9	t	How awesome I am.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
38ea6f6e-0909-4845-8255-43f01a59c4c3	t	Having been dead for a while.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
9e355a08-b191-44cd-960c-8d4dbe9d662a	t	Gwyneth Paltrow's opinions.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
ec08c052-3a08-47fc-bc50-7d27713641e1	t	Growing up chained to a radiator in perpetual darkness.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
639c390f-448e-4fd5-b4e2-4b8788569d49	t	Grammar nazis who are also regular Nazis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
ae08b352-24c9-45b9-853f-600182520f14	t	Going to a high school reunion on ketamine.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
2f3fe4c5-a3d7-45c4-9f50-43298db4e94e	t	Going inside at some point because of the mosquitoes.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1e6d728a-7dbd-413c-9393-d8941d7dc3c3	t	Going down on a woman, discovering that her vagina is filled with eyeballs, and being totally into that.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
d7e9bfed-9c1b-49d6-a4f1-16234d079a24	t	Giant sperm from outer space.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1c9b4de8-aada-4769-8546-d54e86c21104	t	Getting shot out of a cannon.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
444beaf6-2429-4c92-85aa-3e9b3b3a2312	t	Getting shot by the police.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1dea1957-6b9b-47e2-9c54-7a8e723d3155	t	Getting offended.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8bc788a3-2f1c-4c54-803b-bfda1461e6bf	t	Getting eaten alive by Guy Fieri.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
74b2b10c-fb2d-4524-ab6e-faba2e948365	t	Getting drive-by shot.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
87c7b01d-889c-40af-bea3-99f6b2faf74c	t	Getting down to business to defeat the Huns.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
2aa1a4b5-8fd4-4539-9f00-28e4171099f2	t	Getting caught by the police and going to jail.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
61e47ddd-f6ab-4473-aeb1-b96a5129ccdb	t	Getting all offended.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
89d62d3f-4354-4aff-86e6-f054cb3ed375	t	Genghis Khan's DNA.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
0ded7a26-7d1f-4bff-ac3c-fd40455fd152	t	Generally having no idea what's going on.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
f7869f8c-61bb-480b-a41e-770cca9c2350	t	Fucking a corpse back to life.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bf3230ff-d5e2-4d12-91da-b1ff1d3d613e	t	Fresh dill from the patio.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
eb61091a-ce91-4d66-9708-c864d1d83b26	t	Free ice cream, yo.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8cf96646-7ee2-4556-ba62-e6a6c63539fc	t	Finally finishing off the Indians.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6ab375ce-2202-4199-a172-59c10b65111c	t	Filling a man's anus with concrete.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3a0ddf21-7901-43da-ac2a-456418ae6be5	t	Figuring out how to have sex with a dolphin.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
772fb2b1-f106-4a22-9bca-7639dca58016	t	Falling into the toilet.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1cb8475c-b958-46c5-b4fa-12f281c8bfca	t	Exploding pigeons.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
98f4eaf1-b9fa-483c-99da-12b89690643d	t	Every ounce of charisma left in Mick Jagger's tired body.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
40fd3edc-9722-453c-b6d6-0eb006f038f5	t	Ennui.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
d9cfba16-2038-4a9a-9b00-fa35748587d4	t	Ejaculating live bees and the bees are angry.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
49189886-36ae-4974-bf8f-4d75b43dff49	t	Ejaculating inside another man's wife.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
e3719b88-d235-4ca7-9622-2dd6432e1ce0	t	Eggs.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b6294f46-0e75-44d6-83b3-7e8ed8b0f1f6	t	Eating together like a god damn family for once.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7f5db472-5d6e-4d49-88f0-bc7c79ce47fb	t	Drinking responsibly.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
2570f504-7070-4ab5-987a-84f984772aa2	t	Doo-doo.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5d78e14b-b44f-4e68-ab03-498ddf488eee	t	Doing the right stuff to her nipples.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
daef7a0e-e75d-4f0e-84bc-5b0c8cb8cba2	t	Depression.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7c4d02fd-fadd-4f27-bf44-0a5a9d770f6b	t	Dem titties.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
35b69928-7f16-4ba4-bfa3-92cf5982d5e2	t	Deez nuts.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
245904dc-fe73-4c29-a73a-2e4034dea672	t	Daddy's credit card.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f0d7db09-b13a-4003-9db9-8b92f7c4f8ce	t	Daddy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
4a6ca5a6-4741-44fe-97b9-f1e256daa22b	t	Cutting off a flamingo's legs with garden shears.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7fafcbd8-3536-44e2-9518-5a57abdf211d	t	Cute boys.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6b1f1aa0-de59-4f1c-9ee3-a88d5fa5bbe5	t	Crying and shitting and eating spaghetti.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
78ac4f52-86b8-4cc1-a860-ffe104cac90b	t	Crippling social anxiety.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
4df05aec-771e-458f-995c-b3ad9d95c7a8	t	Crazy opium eyes.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
41914d9c-edf9-449b-874f-291d04af73cb	t	Cool, relatable cancer teens.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5e65d0c2-2dcd-4992-bcdc-294deb6540ec	t	Common-sense gun control legislation.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1f34c7ca-51a3-43b9-825a-fdbb06961529	t	Child support payments.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
4fe2b737-17df-4e34-b7da-89ce1c829afc	t	Child Protective Services.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a79a41d1-43cb-4f58-80aa-ccd5f360b186	t	Changing a person's mind with logic and facts.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a1a12aee-adf1-4a43-a3e5-9d50e19f7892	t	Cancer.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
555d706d-3578-476a-b61d-d7644fd3c8b3	t	Calculating every mannerism so as not to suggest homosexuality.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
517886af-c394-4ef6-921d-96f58290cbab	t	Butt stuff.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
da48fcb8-c66b-482a-b833-1bb9c8f25efd	t	Bullets.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5c2c4524-3eab-49ca-9282-3fadd9ca4881	t	Breastfeeding a ten-year-old.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
3233c1f8-5083-485b-9fbd-9c42c5734ede	t	Breastfeeding a ten year old.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b7bc1d82-e50f-43d1-bf06-5a9703291fd3	t	Bouncing up and down.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a594faeb-834c-4d0e-b42e-bb3746d1ec4d	t	Boring Vaginal sex.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8c4903a8-83fd-40aa-ab4d-125b249ea7eb	t	Blowjobs for everyone.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
e62affab-c063-432e-b819-b3989d5d9ac7	t	Blackula.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
ac95e8d6-e57f-4c3a-b0ad-800005b42635	t	Blackface.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
e9c22e79-946c-4044-b098-8d64c86d8723	t	Beloved television star Bill Cosby.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
20359d6a-d8bf-4e3c-9e7a-e0c25c80dae6	t	Being worshipped as the one true God.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
50081111-31a5-4197-854c-22efb4a3317e	t	Being popular and good at sports.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
20b5aa5b-77e0-429c-b331-91414cad9160	t	Being paralyzed from the neck down.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
53521f45-5233-42e3-8927-e046283736c3	t	Being nine years old.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
889cd827-80d2-4308-ba65-508ef8e4d33a	t	Being John Malkovich.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a1c1ba0e-501c-43f9-959b-aec75e47cb61	t	Being a terrible mother.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
e924e81d-c91f-476e-9906-77af70124dd0	t	Bathing in moonsblood and dancing around the ancient oak.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6287e536-8732-4266-be76-256a02d49c7f	t	Backwards knees.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
67344ac6-0706-4e41-aaae-37a842dc9a95	t	Ass to mouth.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
94ec8157-d09f-4800-a8bf-70d5be2771a4	t	Angelheaded hipsters burning for the ancient heavenly connection to the starry dynamo in the machinery of night.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
700a3ce8-ca25-4806-aa2f-7d050403031a	t	Ancient Athenian boy-fucking.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5fe9be1a-d878-404c-986d-c14fe7c9a3be	t	Anal fissures like you wouldn't believe.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
48f26fe1-a2e4-4206-805f-2b5c8fe3a484	t	An uninterrupted history of imperialism and exploitation.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b4519ed0-08ca-4e19-9722-af54ee16dfa9	t	An unforgettable quinceanera.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
130c2ede-25d5-457a-ad59-80c3c3cd40c5	t	An overwhelming variety of cheeses.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6f974071-ee90-4621-a5e8-b81248d3913a	t	An oppressed people with a vibrant culture.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
155bb6a3-1ca7-48be-858b-fa0beda05f96	t	An interracial handshake.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a88de8da-b5f6-4ad9-9297-68cfbbdf4570	t	An inability to form meaningful relationships.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
bf511ea1-58ae-4e35-b147-8928561efcec	t	Ambiguous sarcasm.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1ee28fae-5fcc-4167-9be0-fa5769b6dce3	t	Almost giving money to a homeless person.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b5ac4ae0-ff9f-4f18-807c-3eecfa66854f	t	All these decorative pillows.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c3fdbbbb-62bc-4807-be60-596f5cad9452	t	All the single ladies.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
149786c2-6069-40bf-8415-77f4eb5494a6	t	AIDS monkeys.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b4e6c5cb-832b-4f64-a2d8-dcd1b4806bf1	t	Africa.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
767ed0a1-0e27-4d9e-a781-a6c4d7667f9b	t	Actual mutants with medical conditions and no superpowers.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
9cec74a9-825d-4538-be74-1513aef2946a	t	A zero-risk way to make $2,000 from home.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
032d95d6-4a9f-4898-a197-651ab6d2ec54	t	A woman.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c30f1618-7fe8-4ca0-84bd-a218b2370ddc	t	A whole new kind of porn.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
cdf3f08a-8d5d-4207-8eeb-98ddf6ae345e	t	A whole lotta woman.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
30ecf0a9-f446-4a1d-a25b-de3d11b07a27	t	A Ugandan warlord.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
93ae6d14-14aa-43e3-99b4-b45944e86465	t	A turd.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
56959cc3-a44f-4cdf-87ed-017f350cbdc5	t	A thrilling chase over the rooftops of Rio de Janeiro.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1bff0005-3623-49a9-bebd-2ad0e63a468c	t	A team of lawyers.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
9a95b544-03ea-49ef-9c69-50e0c10de560	t	A shiny rock that proves I love you.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6ec64199-5fa7-470d-899c-cd07c0da6f91	t	A sex goblin with a carnival penis.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b733a578-182e-4ef4-b193-b8015d3f100e	t	A sex comet from Neptune that plunges the Earth into eternal sexiness.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
877f276e-24ba-44d3-904c-d734bb141512	t	A self-microwaving burrito.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8606aa67-580f-4067-b851-61ceb1cc6dde	t	A reason not to commit suicide.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
402a1d7f-9e94-48c2-befe-0461d4523371	t	A possible Muslim.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
9a5d0145-6ff7-4dd6-bf14-0054d2c14014	t	A pizza guy who fucked up.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
fca886fd-4904-46b6-801a-e0b53be985d4	t	A peyote-fueled vision quest.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c957b00e-8a4b-41c2-af12-11c0357a17e3	t	A one-way ticket to Gary, Indiana.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3c4435a3-c4c0-4700-9c81-4a18736bd44d	t	A Native American who solves crimes by going into the spirit world.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
2ee4933e-3123-46fe-a675-51bae3875544	t	A mouthful of potato salad.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5a8d91b1-4579-4553-a7f6-452fc69b7ef1	t	A manhole.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1cce7583-682a-42e6-90da-aa9e87048e58	t	A man who is so cool that he rides on a motorcycle.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8fd3b702-1897-4e31-bf35-8fd1f8528dc2	t	A lil' stupid ass bitch.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
a12218d0-7488-4cc1-8d19-d40629cb885e	t	A kiss on the lips.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
098f56fd-4d01-4439-993a-1eab8ff982bb	t	A horse with no legs.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
eaacbeb7-27c6-4531-b388-48f99fbebff9	t	A hopeless amount of spiders.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
7e53698a-447b-4901-9a8e-be1736460321	t	A giant powdery manbaby.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
85aeb8b7-39f5-470e-847e-3eab502879be	t	A gender identity that can only be conveyed through slam poetry.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
df7a4c8e-0c85-4aa9-a8a6-116557117173	t	A for-real lizard that spits blood from its eyes.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
c591e800-62a0-443f-997d-71ce37c7129d	t	A fart.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
36c2f708-e814-4c8b-bbba-06b756723af9	t	A face full of horse cum.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
4025b8b9-792b-4e13-970d-212254fc576a	t	A disappointing salad.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
55610248-e3ec-4180-aa09-6d5310b27975	t	A dance move that's just sex.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
b67afa75-d4fa-4fb8-b7a0-5150f0f74216	t	A crazy little thing called love.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
8f63760b-0cda-4a7c-a013-7f429f2e70fa	t	A constant need for validation.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
76b0a1a6-cdaf-4842-86df-832fcf5a4d7a	t	A chimpanzee in sunglasses fucking your wife.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
5f7992e2-c451-4b21-88a5-917a0333c606	t	A buttload of candy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
6eacb754-b3ba-49e6-aa03-d17b28164860	t	A bunch of idiots playing a card game instead of interacting like normal humans.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
1095f2f3-c1d1-4425-aa4f-d8ef7d50697a	t	A bass drop so huge it tears the starry vault asunder to reveal the face of God.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
13996cb5-4efc-4ae6-9df7-091b0b7c19ed	t	40 acres and a mule.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
88d119f5-1afb-4331-9ef3-7d693d6a584f	t	10 Incredible Facts About the Anus.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
90c65451-ad9a-4932-856f-39692cd2efc0	f	My homeboys tried to warn me, but _ makes me so horny.	1	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
814eed12-d23b-434a-8474-a107140143b1	f	My anaconda don't want none unless you got _, hun.	1	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
ee674c4f-071d-404d-8746-24e12dd85695	f	I like _ and I cannot lie!	1	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
996fdc7a-c66b-4c8b-9f27-3792a50764bc	t	Your ass cheeks on my face cheeks.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
f26e465a-18a3-49d6-ac1a-636d42353f9c	t	Waxing my asshole.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
78601aa9-0d98-460d-bcea-9aabaea8fccb	t	Tight, red baboon ass.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
7d26d9b9-0da4-45e8-8e58-931c9c24e6d3	t	Thick Ukrainian ass.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
8bd81d31-11eb-4bfe-8553-f9b1aa67f8ae	t	The sun-ripen asses of Sicily.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
711a941a-4fd4-4eee-a7c7-7b02bf811964	t	That post-smack jiggle.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
514292af-7d0f-47e8-905a-7a6408c164e4	t	Tender anal love.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
590ed512-1c3b-4ea8-937d-69bb2ac4bab4	t	Sir Thomas Crapper, inventor of the toilet.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
8a11aa7d-ef75-4b7f-bc9b-a232fb993b9d	t	Sir Mix-a-lot.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
e080cc93-12db-4532-9141-0da448e21b1c	t	Showing everyone my lil' dumper.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
9375a2a4-cc0f-4aff-aa4c-b5120e3d422e	t	Shitting out a hot stack of pancakes and a pat of butter.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
9c4a55d1-1d78-41c5-bafd-60d4486b2544	t	Ruining my asshole with superglue.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
ab0f7411-9ba5-4d60-ba7e-b5bec0ffbcc3	t	Rubbing sage all over my butt cancer.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
d4c70f95-4cc0-4bb2-b1d7-0ef0a2b27a27	t	Pulling a shit-covered condom of Fentanyl out of a dead Slovenian's asshole.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
14aad87f-48c7-447a-98da-db40b042024f	t	Pooping and then looking at the poop.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
768a8b26-a977-4f53-abff-c6b7c8d82767	t	My faithful donkey Bathsheba.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
b337ac74-2a90-4153-b716-8a386e005cc7	t	Me arse.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
0c629269-b7e0-4612-a241-362e1e07c24c	t	How good the booty taste.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
4ce0fb02-aceb-4bbd-9ad4-469fe43dee97	t	Doing my duty to your booty.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
e534fb00-2797-48ad-bef2-bd5631543656	t	Cheesy French anus.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
12d7b45b-a0b7-4029-9ac2-7681b81a814f	t	Cellulite.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
01e1017b-8ec7-43e5-9f0a-af82ec8396bb	t	Carrying my poop around in a ziplock bag.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
079bb2b2-2e87-44af-b07b-5f8133b665ff	t	Blowing a fart hole in my yoga pants.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
4f5e5542-2e2d-417c-9551-33dcab073b0d	t	Being grossly unprepared for this jelly.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
36d897bb-c47f-4127-ae62-4b051db2ec6c	t	Bad bitches with fat asses.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
1f5dd8ac-926b-4de7-8d40-4cbfa5b385be	t	An ass like two old Italian faces telling secrets.	\N	4e0b937b-e04d-4dc4-a4a4-df8a7c6c6ccc
c24df776-9ad4-4628-b194-8ed5305ab2b1	t	An ass like two football helmets.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6f02bbac-7be0-4fbc-9cdb-5281f30ddbd0	t	What I Doin'.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
bd47daf4-c4d3-432f-90bd-a81f6c7d1bcd	t	These new jeans that look so cool but are actually so bad.	\N	a95919a6-97a3-40dc-84ba-702fed111361
d71caaa1-a5a7-4819-aab9-b77f4bfbce55	t	These awesome gadgets that track my every move.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
308d7348-2a78-4a04-8214-10ebe66b7a70	t	These amazing testicles I'm about to share with you.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
4d1ebfd3-13f4-41c2-b9a8-42d418d0d261	t	The unspeakable secrets of the weasels.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
90db48a6-aa78-4005-9c66-9c5932d71755	t	The real story behind the yogurt that came out of Tina's vagina.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
6d7d28f2-414a-477d-b7be-4d941e5f7f88	t	The lesbians of Iowa.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
9f66faee-6307-4ae9-9982-2936b9567d1f	t	The idea of a walrus.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
9a2e951c-11e9-4c61-b1cc-a408028fb161	t	The amount of emotions a peanut would be capable of holding.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
80319445-1d6d-4c57-b53f-b88413cc7eb5	t	That shitty season of Mad Men where Sterling Cooper Draper Pryce gets destroyed by Daenerys Targaryen's dragons.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
12a31b65-d297-4f6d-9019-075cb1c9917d	t	Stairs	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
5f9c5dd5-08fe-42f7-96bc-475c47bf6a13	t	Some sort of unstoppable poo gun.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
895ef113-4393-48d5-8b86-a1a81873ce0e	t	Some kind of mutated shrimp that can suck dick like a pro.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
b5bed47f-781e-4746-8061-4dc43dd4a2e2	t	Sitting in the back of the plane, smoking a cigar and reading the Flickr privacy policy.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
02c0555a-ac00-4f90-85ac-f0a47e418696	t	Secret CIA moon prisons.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
4443de3c-de34-4a69-9ac8-0c246ca39908	t	Screaming "there's a hawk up my ass!"	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
82d38a9c-143e-446c-9470-11ef694cf36a	t	P.F. Chang's fusion of casual and formal cuisine.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
a0173e59-8df2-46a2-82c5-cb956a4bf743	t	My disgusting pot-bellied boy.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
82fab16d-db3a-47b7-8950-ea8532bf1e14	t	Mr. Poop.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
acb97ced-c950-4983-8371-1ae5dbbd30cd	t	More olives than you could possibly understand.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
98ed7f50-b20e-41da-ae63-beeed102abb2	t	Laughing hysterically while my partner pours coffee into my eyes.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
316f689f-4eca-414c-9f9d-c3493bf60c61	t	Kim Kardashian, but with spider legs.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
854842e7-f582-45f6-aafd-fbc43de5f6b5	t	Insane empanadas.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
f00c2028-7775-4842-855c-5ac35c9e1b4c	t	Hands down the best eggnog I have ever had.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
cabaa4ea-9419-4bef-8283-7949b866484c	t	Ham finger.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
716cf497-8f4b-456a-9c61-2e61255c6a07	t	Giving grandma crappy things she doesn't like.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
3c35c64a-a8ca-4881-b3b9-6d96f4c46ebc	t	Getting Masturbated to.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
af5575dc-0dd1-4af5-a887-885b646f78b9	t	Finding a nipple and being like "Oooh! That's a nipple!"	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
d9084721-6de5-4c19-87d9-27a3ce769faa	t	A woman who is so smart that she can predict the movements of 300 birds.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
9910a80e-e8ee-45af-b084-5331c36f0e9b	t	A killer's diet of bush, cucumbers, and feathers.	\N	cd4fa33b-a12e-4727-9488-d8606a33df9d
ce61d0dc-e28d-4e81-ae21-eff03d178593	f	Oops! I did it again. I played with _.	1	f8c2f934-ce26-4efa-9814-26da6405ec28
847e93fd-5a6e-468e-bc7f-c094fa004b61	f	I couldn't help but wonder. Was "having it all" an unattainable myth? Was the secret to a truly happy life just _?	1	f8c2f934-ce26-4efa-9814-26da6405ec28
4637ef60-3eac-42c2-a4e8-b33dc57fbf68	f	16 people. 39 days of _. One Survivor.	1	f8c2f934-ce26-4efa-9814-26da6405ec28
ba39576e-1f6e-4cc1-8356-e8ba3c461fd5	f	_? That's a no from me, dawg.	1	f8c2f934-ce26-4efa-9814-26da6405ec28
a00645c4-234b-41df-841e-f4d4ab3c2cff	t	Weapons of tax destruction.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
ff79365d-2052-45be-9188-d1244f453516	t	Vajazzling my vajayjay.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
9ea09bc6-588f-4d8e-b67c-ada3c9186e7b	t	Two girls sharing one cup of poop.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
e8984da4-7da1-4d8c-9959-abf0e3268f5e	t	The new Sweet Onion Chicken Teriyaki sandwich from Subway!	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
9e3a900b-59f9-47d3-b3bc-964fb9ba84ab	t	The conservative blogosphere.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
6db00a70-9e71-47dd-881f-c48d8c12ca0e	t	Taking a blurry photo of my penis on my Motorola Razr.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
b932ec54-ed27-4a7e-b3d3-20ca24e5bc24	t	Sustainability	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
2be1d308-5ece-4704-b7b4-e69a7df1b144	t	Starting to be cool about gay people.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
0fac0ef9-1257-40af-8f7d-5dff863ab1c8	t	My son and business partnew H.W. Plainview.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
d56c7693-a755-4f14-bf4b-d4073282ab7f	t	Letting the terrorists win.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
de3eb3aa-24da-4e53-9b99-08d4cb8370ef	t	Hoobastank.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
378dc8ed-bc20-4df0-a0cf-ce308edbc1fd	t	Going to prom with a 108-year-old vampire.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
b0f279d7-d5ce-4a4f-86c6-ca38e91e827f	t	Getting pwned.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
6dfcdbaa-264b-465a-89f2-c7fa84a740ad	t	Getting drenched in Dave Matthew's shit and piss.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
bb440a55-b67b-457f-8126-d193517da5ad	t	Getting crunk.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
b58956c0-41e7-43f4-adbd-8a4273f483be	t	Downloading a bunch of weird porn on Kazaa.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
068a7cef-d47a-4b77-8bd1-758342110d37	t	Doing 9/11.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
fbbfd4c7-3621-427d-a3d5-a7a789d5b005	t	Defining marriage at the union of one man and one woman.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
bf233ae5-07e4-453e-a36a-e5294b1e9923	t	Cybering with diselman89.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
3c52b897-8ac3-4abe-983e-f637eea421e3	t	Competing against 20 other women for the love of Flava Flav.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
4f228a92-c150-41ff-8f07-5d861ace77d8	t	Collateralized debt obligations.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
6169c5f5-32db-4dd9-854b-89f8ac415a7b	t	Chunky highlights.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
5d70d36c-9659-486a-8363-6dd69bf17612	t	Blowing Lucas on an inflatable chair.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
e67dbd07-9c09-49d5-af82-aee6e7242070	t	Being a total Miranda.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
e6430a82-b160-4c81-820b-f5c4d3d22cf7	t	All these boys in my yard asking for milkshakes.	\N	f8c2f934-ce26-4efa-9814-26da6405ec28
794219ba-46d5-4b58-bac6-4194373fef49	f	You city folk would never understand the quiet dignity of _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2ff223a3-b204-46c6-bc05-d0afd3ce92cb	f	You can call me David Copperfield, because I'm about to make _ disappear.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
800a1d41-e57e-497a-9923-7c9fcda0d6d1	f	Why my mustache smell so bad?	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3c727e97-c92a-4b79-9e6d-ef6af8aef34b	f	Why did the chicken cross the road?	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
39485291-0d2b-4f7e-bdd3-61f88cf19638	t	All my dead sisters.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f13d83f3-4508-4729-bb0b-2a538add3812	f	What's secretly a Russian plot to destabilize the West?	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a4cfd86e-13bb-458a-9f9a-429bb6e054ad	f	What's hot, smelly, and about to die?	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3a479315-96e9-4288-b652-ff36152fcf38	f	What sounds great after four margaritas?	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ab61046a-fdab-4f54-9b9e-a3ca986b6c1c	f	What has my life become? I'm jerking off to a video called "co-ed absolutely destroyed by _."	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
42a39c8d-810f-4265-9773-b407099146c4	f	Unfortunately, no one can be told what _ is. You have to experience it for yourself.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1bf49ca9-d2d4-47f9-85b2-f3534607807b	f	Times have changed, girlfriend. If you want to meet people in New York, you got to be down for _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e610275f-41b7-40df-b0c5-e0fb4287352c	f	The sequel is here! Get Ready for _2: _.	2	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3bbc61f6-374b-4b03-8347-cfe79130e4a2	f	That's bullshit! They can't fire me for _!	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
309b48d5-b676-46a4-8b12-c57ea8569b5f	f	Sweetheart, you and your sister escel in different ways. She's got her violin, and you've got _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
26638eb5-d747-4927-8b79-1661d646c377	f	Seriously guys, there's nothing funny about _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f37e3b69-61cb-42fa-8008-35f9ab2ac110	f	Say it loud! I'm _ and I'm proud!	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d7e32079-0217-47f2-b19c-569db40ee7a4	f	Rub a dub dub, _ in a tub!	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2cbab92a-51b3-49f0-8cff-7d534e5d5ca6	f	Personal foul: _. 15-yard penalty. Automatic first down.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b44a4eb8-12e9-4c6a-982a-d5118a8f69b7	f	One, two, three and to the four, Snoop Doggy Dogg and Dr. Dre is _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a36070d7-6cb9-4081-8672-ac72165a73eb	f	Oh, the weather outside is frightful. But _ is so delightful.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
bb654eb5-5ed8-469a-a166-6e7918158b6c	f	Oh you haaaaaaave to see this new documentary on Netflix. I don't want to give anything away, but let's just say it will change the way you look at _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
cdd51802-e675-48f4-b125-b2b0e0fbe540	f	New at TGI Fridays! It's what you've been waiting for: The _ Burger.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
65f804e5-00d7-45e8-a3cf-7b21d0b3d643	f	Millions of copies sold! Donald Trump's "The Art of _."	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f8af7f20-4f5f-48af-8e2f-b00d998697ce	f	Live from Universal Studios, it's America's favorite game show! "_ or _?"	2	cf526624-d9a0-4f89-84ad-88c963536dd4
96d2a000-f691-46a0-a45b-cc289cb94d74	f	Ladies and gentlemen, I propose a two-pronged plan. The first prong will be _, and the second prong will be _.	2	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
313e34f4-2cc4-45aa-b57e-e9d202f05401	t	A poop emergency.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
91b37327-d7c1-43e6-9271-b8770312824d	f	It's late at night. You're in bed with your lover, Patrick Stewart. He leans over with a twinkle in his eye and asks "How about _?"	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
77df9499-1a90-402a-be10-3693482c16d9	f	It's finally happening! I'm finally doing it! Yes! It's time for _!	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b1f5d110-2e52-407d-b601-c5c0a4d88c55	f	In Radiohead's new single, Thom Yorke repeats the phrase "_" dozens of times over a skittering drum beat.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
811d899d-3ff4-4090-9006-5e714a4883ca	f	In bookstores now: "From _ to _: A memoir."	2	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
267ea0eb-1c7d-4d47-91f0-3fb41660c414	f	I swear to God I'm gonna murder my husband if he doesn't shut the fuck up about _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
97dd3cb8-9db2-4759-a588-e37b505a2c72	f	Here's a little something I learned in business school: The customer is always _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
07abef37-3a89-4a31-8bf0-86d88763216e	f	Goodbye, _, hello _!	2	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e3fc5ff4-7d61-4078-b43d-eb416c70f99f	f	Give me ten good men and 48 hours. I'll get you _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9a19066f-0590-4827-856d-f450e2ccb89b	f	For hunting in the King's forest, I hereby sentence you to death by _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5079bc87-f12b-4f3b-9117-703ea64712d5	f	Duuuuuuude. You have got to go to space. _ is awesome in space.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a0572569-02eb-4e68-a4b1-3a5ea30dafa5	f	Ain't it nifty? Barb and Bob hit 50! So get off your ass and raise a glass to 50 years of _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5e645afd-02eb-49f1-b990-4bc35927c9be	t	Yummy yummy yummy yummy rat pussy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
7e3b8e70-4d73-4b0b-9958-cabbcedb9847	t	Your mouth.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8046d95a-94c1-44ef-a50f-e04a9453e08d	t	Your little booty in them underpants.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
98370362-feb0-413b-a6ae-ff348bfd954c	t	Yogurt that moans in pleasure as you eat it.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ad9ca4e1-a9fa-4520-868f-c85b9c9d44c6	t	Yo stanky ass.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
feb72f22-fe8d-4082-b573-8fed07c234ae	t	Women in positions of power.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
33bb4bc8-0758-4c21-a39d-91a990958040	t	What looked like a chemical weapons facility but turned out to be a children's hospital.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
aaf0367f-b434-44e5-809e-542476641d3e	f	Oh my god! _ killed Kenny!	1	f8c2f934-ce26-4efa-9814-26da6405ec28
8e3c6420-e05c-44e5-aae1-b07f96d439f6	t	Voter suppression.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8ea9d608-929b-4b9d-bceb-d52b615a9c7f	t	Voldemort.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
30fb2b1c-7128-434f-ab80-e606daeecfc2	t	Violating the Geneva Convention.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ad026958-51d5-47dc-b4cf-529efc6da468	t	Uncut daddy dick.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
53760409-3389-46a4-a5e2-43e3c8a876f9	t	Uncles.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
aaa3e271-158e-4149-8b07-749fb552cc3e	t	Twirling a cane, popping it into my anus, and giving a tip of the top hat.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5093428f-3385-4235-b4f2-42e29387c0cc	t	Turning poor people against each other so they don't pay attention to economic inequality.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8022938e-976f-47a1-b196-e6f925f1139e	t	Trees with human skin.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5bb87c7b-dafe-453f-8a06-2dd4ab301dd8	t	Travolta.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d924dcef-f05d-46b1-b13c-5c33d421bd45	t	Tiny, sour kisses from a lemon dwarf.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f67fdf41-8352-437c-9537-591592600224	t	Thumb, the King of the Fingers.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
782b9a87-a6a6-4efe-8e41-e319f5ce7dd9	t	Thrusting and grunting.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
397db85e-6cd5-420a-aae1-67cb30540465	t	Throwing a man by his big penis.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9a875647-de9c-45fc-a2b9-4f1711807eac	t	Three men and three hot dogs.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9a9c6def-04e4-48a9-ba9e-0a5ae63e1b32	t	Thoughts and prayers.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2e7b2984-48c1-4c9c-9251-a0e5b88903f5	t	This kid I found.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
86e737c4-75ee-4e89-88cc-7947cf7abee2	t	This boring-ass white bitch from work.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e1cca64d-78e0-4c6a-ac60-1a475cd9b792	t	These breasts of mine.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e1260704-03c6-4757-a340-5a408ecd742b	t	The worm that ate my penis and is now my penis.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
df23c62f-f975-4e5d-89a6-3a5ced84571a	t	The world's largest baby, weighing over 700 pounds.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8ffa9802-b345-44d3-b05c-55d6a4315313	t	The wonderful giant spoon known as "ladle."	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
17c2a62b-0d00-43f2-b44e-697c90259652	t	The South rising again.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1efade22-88f1-4ee4-824c-90df4c48b841	t	The rock after which Dwayne Johnson was named.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
95a95a14-85f9-4ce9-ba23-37060c036125	t	The pleasure of watching my boys wolf down my pot roast and scamper into the woods.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a7ab9acc-1e6a-4adf-81b7-52f581e1c49f	t	The persecution of Buddhists by the American-backed government of South Vietnam.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
fb06b44f-126f-49b5-a2c5-53cd45a70235	t	The pelican that will one day eat Scarlett Johansson's baby.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
eb6185d3-4e5f-4e06-b9a5-2cbf9f1b44eb	t	The NRA.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ffd26f63-3e4f-4ad0-a5a6-37d28911cf91	t	The Moon.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a3ab5924-367b-4145-9910-4ce9ade53096	t	The man who fucks me and my wife.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1f1d2af7-99a9-41a5-b7f7-459e9442a6dd	t	The man in the basement.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1b201737-ceb6-48a6-8be7-89fd6a3aebc9	t	The little-known fact that Polish people don't dream.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a8dd21b5-bfe4-4ede-a7c9-c618ef886ca9	t	The King of Jews.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c5ac6b2d-a17f-4921-aa19-602007172c7a	t	The kind of porn with poop.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f611c8ae-7319-4872-8f43-7bdb1dd51e51	t	The incredible Gary, he'll suck your nipples.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a3fdf369-f3cc-41c4-b2f4-32b128ce94aa	t	The harsh reality that all horses are people in horse costumes.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
23dd6c6a-ce19-4241-b252-86470e82330a	t	The fact that time is moving backwards right now and nobody's noticing.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e9f5c412-cabf-408c-8fef-17777bf394ec	t	The express written consent of the National Basketball Association.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5e45f58c-aad1-4bfe-980e-137b893fb061	t	The end of all life on Earth.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
52ccded7-36f7-4ec0-bdae-740bfdc4cde8	t	The cutest fucking shoes I've ever seen.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9c376308-d370-47b1-a13b-d46c01e717f1	t	The current political climate.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
64f068b5-df19-45f8-84d1-172c86442d0c	t	The coming race war.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4ef3f4a3-97df-49a4-9667-fc9d728111a5	t	The boy who sucks the farts our of my sweatpants.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
f0c3de7b-c1dc-4b8e-aaa2-52dbc1fef9ee	t	The beautiful backpacks of JanSport.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ccd73495-e4be-49c7-afce-e9b35693b396	t	The awesome power of the Lord.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2a102fe8-a560-4346-8be6-33f2e33c8783	t	The Audi Sign-and-Drive Sales Event.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3ae68830-d85c-41a5-914a-d031fe6cd593	t	The Asshole Destroyer 3000.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ce838647-883c-49b9-bdaf-3d23128c62dd	t	Tar.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
2190e1a1-2bac-4d2d-9aca-2d08ee1cb1b4	t	Taking a dump.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b0c05e54-1762-4036-a91b-3483144e165c	t	Swordplay.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4a3f63d2-72e2-4605-95b2-4d3571799e6f	t	Suddenly feeling really sad for 40 years.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
63811fe5-8bd9-4775-b70c-9ce44e60cbe0	t	Sucking the caviar straight out of a fish's pussy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
57566f27-ab83-4471-8474-e10ca5ac6101	t	Substituting sweet potato fries for $2.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5d8a8121-8074-4dc3-b921-aaa30b1e1626	t	Sticking my hard rat dick in my girlfiend's wet rat pussy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4df49ef0-7a12-4ea1-a307-b17420597cc0	t	Staying hydrated.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9b666122-625c-45d6-8f3c-311a241ea58b	t	Stapling a butterfly to a cow.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2e85d2ab-1a1d-471f-8154-e7a383f15928	t	Square dancing with other racists.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8342a612-c031-45b2-b32f-6b9d173396c9	t	Some light choking.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4fd12873-090d-4216-8777-62952ae93af9	t	Some cracker-ass motherfucker.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
56ae1970-b61d-412f-9563-12882aaec07c	t	Small plates, or tapas if you will.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9d90fa9f-7e67-4ee6-a9a2-93caacf0e36c	t	Sluts, whores, and bitches.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
116e5ceb-af77-4985-bbce-831e5ee6134c	t	Slowly releasing a huge fart over the course of two minutes.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c4da4f45-64fe-4cda-992f-ef23357da550	t	Slaves.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d41c12cf-399e-4832-bd59-aef9f1f9ac44	t	Shitting perfectly into a hot dog bun.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
afc982e1-9532-40b3-8c30-7abdf3e9eda5	t	Shit.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c26d2318-c900-46b0-935d-eb64aa46707b	t	Sewing two hamsters together to make a Double Hamster Supreme.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
deaffe74-3511-4b43-bfbc-232cd850e573	t	Setting boundaries with co-workers.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b7b2f60a-da09-446e-b560-6477ca58b2fb	t	Sandwich.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ee97d835-93c1-41b0-b9a2-2e9bb996c513	t	Rubbing my clit with a handgun.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
09610420-23ba-4329-9e93-66ae1f36f31c	t	Respecting woman.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a53efae7-97bf-434a-8546-a33533c89ce6	t	Representing the entire Black community.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9a4a4d6e-4274-44e5-8082-797bd9f287d0	t	Representing the entire black community.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
0d701e1c-359f-4591-b9b6-d03a4fdd4954	t	Reparations for slavery.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6162a849-6fac-4537-96a4-bfa7d6201c97	t	Quality, affordable menswear.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
03c22058-bba4-415a-88cf-be7cd631c567	t	Putting dirty dishes in the sink and hoping someone else deals with them.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
655db290-e8b2-46ea-8c2e-15c3959c5ebe	t	Pushing my boob up to lick the nipple.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
eab3ff2f-e750-493f-8319-984db2105972	t	Pulling the butt cheeks apart so the fart comes out quieter.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
831c8b09-527a-4b11-b878-127a4ef4b4e7	t	Pulling a sick, shit-covered raccoon out of the toilet and nursing it back to health.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9d11df97-9b2e-494e-9d26-8f062fb119e7	t	Prison.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b99c5968-d53a-48cf-8718-487f4815e0bf	t	Pretending golf is fun.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9c8aa359-5819-4500-8bc5-7f0cb792e331	t	Preparing my asshole for sex.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
aeb16613-8164-4bec-9eed-7426f8f89ac9	t	Poppin' that pussy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
5d9725b6-aa24-42da-89a2-6187ffe27525	t	Politics.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d651edf6-c1aa-440f-8873-cec92a1b3dff	t	Pissin' me paants.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a3485b40-2fbe-41be-888a-5507bb8fc5b5	t	Panic and confusion.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
69621e18-33f8-468a-9044-06f5e1a69d0f	t	Panda Express.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
526b92ee-8b00-4194-9ccd-39dbaabc596f	t	Owing a lot of money to some very bad people.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8175682a-d2a3-44e5-9d71-eed1622d494e	t	Outdated gender norms.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
56be95ab-8807-44cf-9fb7-edfa5b036a6a	t	Oral.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
330e5520-8a12-441d-9db9-ad7b343ed4ed	t	Not being a part of my son's life.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1cc0e475-9271-419d-9efd-4f2c60dae960	t	Nonsexual activiities, such as roller skating.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
fbda0daf-177b-4140-b8c7-49fea7429fb3	t	None of your damn business.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
63ea9e28-59d2-417e-9c63-ab0a10b5b8a9	t	Nipples the size of CDs.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
df4d1f52-b260-40ad-b43d-a4db72438694	t	New DNA evidence exonerating OJ Simpson.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
cf9db162-b596-453b-be9a-c297dd69d27d	t	Netflix.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b746f293-6e3a-4324-b002-e129741f4c0f	t	Naked Dad.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
679cf63b-337c-4d8a-865a-e82dda17172b	t	My son's husband's huge cock.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
27bdbd28-c482-4b14-825a-9be94273bd2b	t	My son's dipshit friends.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
459ffcb2-f567-4bd6-8f1d-98ff1936be86	t	My secret butt.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
59fe5599-1851-4acc-9bbf-477930d09061	t	My real dad.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
51a14721-6748-416e-97ae-9c94794b6b5c	t	My math teacher's bulge.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
28053104-01ee-44e7-83ee-fb45ec7d211b	t	My daughter fucking my boyfriend.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9df24707-f853-49a6-a7cc-324f28e8a523	t	My buddy Jeff.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8ce5f648-dfa3-4ca9-ae19-d42069fe895d	t	Murdering our parents.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
24e3b8b7-0954-4032-92b7-651d00fe51c5	t	Melania Trump.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
378f8b4c-f4b6-4685-946e-ed5e8d922c4e	t	Maybe getting a little involved in selling heroin sometimes.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
fd4e8423-961c-4dce-9184-4bdf3de62b17	t	Mark Zuckerberg.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
823c12d4-2934-4833-b075-fdc6e7387808	t	Making direct eye contact with a horse's asshole.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f7402f13-b241-4ab6-b951-851ba6b50128	t	Magic: The Gathering.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
62fedb06-3abb-40c9-b8c9-31ebee7f788c	t	Loving America.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2efdd216-7ce4-4607-9812-b8ffd2799ec3	t	Lotion.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f88f6007-81af-48d1-80e2-4e456a12b127	t	Little Debbie and her mom, Full-Size Deborah.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e05f84c2-0c71-4c91-8e17-b694b3d61b36	t	Life.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
456dcd5b-3552-4792-a895-9cfedc2c02cd	t	Licking the toilet as Mistress commands.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ef283e42-ab59-460d-a5f2-42dbf9a0b1d5	t	Letting this loser eat me out.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3fd4b002-81d3-47da-bf4d-d50d89b76a4a	t	Letting that pussy breathe.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1d0ad459-6196-4f24-aab4-f9b81ede727e	t	Leading children around with a magical flute.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2f9e0504-f14a-4903-b2dc-4501e23959c9	t	Leading a country to war on false pretenses.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
547d7b99-7bb7-422d-b7b7-65ebb8f88404	t	Korean barbecue.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
96e483f0-e7cf-40d2-bfb5-9de5d25c642d	t	Kanye West but if he were an old Japanese farmer.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2f3b9e01-0925-4293-bfe3-fb130b9580f9	t	Just a Luna bar for lunch.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e19abba2-c2f7-44bc-a3e2-5369971f0810	t	Joyless, wooden Soviet toys.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4c824b74-6934-4dde-91ad-141f407b3e25	t	Jormungandr the World Serpent.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8fe9b29d-f2cf-42f4-8c51-3785ed957a85	t	Jeremy and his stupid, annoying, dumb, hard, beautiful body.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f983c135-8ab8-49fd-9ab2-0c0627548d45	t	Interrupting women.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2bafa0c0-0bd3-4685-bab7-b8f09ed14fc1	t	Hush money.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
260a3e93-6c5e-4f84-8300-26806cbee608	t	Hunting white men for sport.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
dcd0ce2b-b4ba-40f2-8a0c-8f12c25dd629	t	Huffing and puffing and blowing my stepdad.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4e7b6825-0da7-483a-8a1c-85d37db8c3bf	t	How quiet the forest is.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
047f0a38-4ba5-429f-b29b-f57d850a6a64	t	How many bagels I can fit on my penis.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a3be71c9-1fab-476a-a687-ecb48b9d5752	t	Hoopnugget, the game where you throw a nugget into a hoop.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
bae60a57-e961-4d65-b27e-cc1d11b243a9	t	Hiking up a hillside covered in bear semen yelling "I'm the queen of the forest!"	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
846f6328-f44b-466d-8efa-24b3f55b71d5	t	Hiding from border patrol.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a61b232f-0b2d-4926-9d25-1a61e7435423	t	Healthcare.gov.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
63fe47bf-ef58-4ce6-a438-dc1f07c57259	t	Having tuna sandwiches with my favorite honkies.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9421bb4e-8e09-4ec6-8a09-87f82d241bf8	t	Having thirty sons named Chad.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4e68a9c7-b3a7-43f1-8e27-1b56aee9b2a5	t	Having no legs, just toes.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
feaf12a4-6a79-4989-ae1f-ff90c0709423	t	Having a wonderful time at the zoo.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
01d0c293-248c-4924-9d02-092f6bcedd45	t	Hard-hitting investigative journalism.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
da738ed3-f4eb-431f-be37-452835e128e8	t	Good, clean Christian comedy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b52683d6-ecff-4d46-a731-73c869a933ec	t	Going "oink oink" like a nasty little pig boy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
273ded15-9275-46df-bc77-8dd58d0a1059	t	Getting tanned, jacked, and juicy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d1db1e6c-e554-4cc4-95a1-38f1ab17067f	t	Getting Mommy another beer.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4ecc0bee-a080-4c17-af21-138cebdd3882	t	Getting herpes from Bruce Willis.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a06ef8c7-bd32-47c4-abab-cf9269d2a53a	t	Getting half-hard and trying to smoosh it in.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
010b676e-ff49-475b-ab46-fe46bfd961ef	t	Getting fisted by a man with no fingers.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
0c4ec738-2e66-4033-913f-32308c44b113	t	Getting depressed and super fat.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b38f105a-a2ec-4ae3-9924-50f446e4aa92	t	Getting banished to the Shadow Realm.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d9e4c2cb-aa36-4542-ae6c-ac98253c89f5	t	Getting #MeToo'd.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b757c04e-f258-4980-ba0a-1bc5d588cbec	t	Funneling money through a series of shell companies.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1d22881e-c803-41de-af6d-8e26fae92540	t	Fresh Air with Terry Gross.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
34c3aa24-2efc-4b4b-adc5-1148c9999b6f	t	Free two-day shipping with Amazon Prime.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3a2a5124-c5ca-4868-b6d1-0fbee9d75d38	t	Foul vegan shits.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
24167429-73a6-472c-8eba-a41d5c76d71c	t	Fingering each other's buttholes.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
506614bd-b746-496b-8e18-3485a87baa5b	t	Enticing a hummingbird to drink nectar out of my urethra.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
87492859-f771-4f95-933c-009a7dc29257	t	Elon Musk.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4cccb7cc-5b26-44f8-9d52-735ef8b46a93	t	Ejaculating a quart of hollandaise sauce.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a21e9bec-644b-479a-9c8f-48ef91816fa5	t	Eating pussy bad.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2ff9e925-09f2-4983-8f1c-acbe0b9e5892	t	Driving to a Walmart parking lot and staring into the distance for eight hours.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6035938f-4184-4306-b9b2-dd2e8342770f	t	Drake.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b7e7782b-456a-45c9-a8eb-0b9f99e3a62b	t	Doing stuff bad.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d2715f87-e5d3-4bb2-8790-b25e3b4323ae	t	Doing it doggy, no kissing.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
22b2483e-788f-467e-9667-962686fb813a	t	Doing ho shit.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
10a4d131-eb28-4a19-9c49-8dd9f4f5c397	t	Denying climate change.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ec86b35c-4d07-4290-98b2-c61a4386a105	t	delayed gratification	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
537dd52f-bd47-40cf-af67-b89581f5e912	t	Deja vu.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e1b97653-4f6a-45ce-9acb-ca313550a331	t	Death.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a764a886-5e4a-4944-aaee-42acb9bbd89b	t	Dating a Republican.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9ac8c164-6a9e-4993-84bd-2833c71a89da	t	Curly fries so good you quit ISIS.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
cb82a39c-9b8e-4301-8307-bb6190297fd0	t	Cultural appropriation.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
72e8be9b-197e-49a7-8183-320b9208f77e	t	Crunchy snacks for big, flappy mouth.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1f27fa44-5d6b-4216-9c60-71f9e4889cc2	t	Country music legend Toby Keith.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
98b6df51-dca4-49a7-b508-a7d97ce0bf0e	t	Corn.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d3d34edc-181d-4443-9441-465f387cbafc	t	Colluding with Russia.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
96365c45-7f75-44a7-8dfc-b2c574e57d79	t	Clippy from Microsoft Office.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
7b4b49e9-5772-4b96-891a-bffdbe91442a	t	Clearly asking for no cucumbers in my salad, and yet here we are.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
3a15c887-5703-4c0f-8855-8d6533f503db	t	Chowder.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
78da4115-34f3-4c57-8cd8-a40df9bd21e3	t	Chinese people.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6763edc1-ec05-44ed-a328-56c8d33ca2ac	t	Certain things, but not others.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
b773f1d3-f440-4c4b-8e8b-faa0fcc630ee	t	Carlos Santana's horrible wailing guitar.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c9618ea4-a7cc-4ecb-bdda-3a76814bde49	t	Carbs.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
bc6e3435-edca-47e2-ac6f-437754681a14	t	Canada's worst mangoes.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
637e7864-fab4-4995-afe5-b8aac08f7efc	t	Blue smoke coming out of my anus.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
21d90b8c-fdce-45cb-9210-57ecf28bd03c	t	Blowing into the penis so that the balls inflate.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f50776e3-7fe2-48b1-8bba-22d2f0fac3a3	t	Bipolar Disorder.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9f40fec8-b4fe-49b3-b647-c8803c003dd7	t	Bimpy, the small styrofoam ball we all jack off into.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
10db8b1d-e79c-457e-b79e-fceb6cada8bb	t	Big Italian women making the spicy sauce.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
69dc58d9-38c3-4e8e-aa3c-f25f23fbcf13	t	Big beefy baseball boys.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
7aa40154-aced-483a-947c-488c53c0c1e0	t	Being shitty to everyone and late for everything.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ddf08610-ff98-44e4-9a5f-b3d2ee117ba9	t	Being seen reading Infinite Jest.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6c585e53-2105-42c7-9103-74509e1655b5	t	Being inside me.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
60608aa7-b60f-453a-bfba-63058362c682	t	Being hunted by giant eagles.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6a23f4d9-5e87-4ef5-84d9-68b93562fa6f	t	Beef.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
52d9f20d-ab54-4abf-aed5-42918ce055ba	t	Assembling IKEA furniture.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c39a39a7-6520-4144-9a53-962a1dd25210	t	As ass like a bag of pool balls.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2b6c2a91-19b6-4ca6-86fb-63222d429de9	t	Anything Asian.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
0318b7f4-2a57-4fd7-b2db-ffec6625c681	t	An elite squad known as the Special Victims Unit.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8efc739d-8bb1-4c8b-968e-060045c13d4e	t	An ambitious woman who wears pants.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4ffa80e7-da8e-48fb-97eb-ab9597049975	t	An 800-foot-long pool noodle.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d0816dfb-3e5f-4401-b6fc-92cf4d42cba0	t	All types of girls, even ugly ones.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c3df0d36-78e0-4bde-9877-7fe6854c7dfb	t	All manners of honors.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e1d59edb-0b56-497e-a8eb-585eacf203ed	t	Acting white.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
24c5082e-1525-4091-a95c-a9bbf999ee29	t	Acquiring a gun very easily.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e45093d0-ea8b-468a-a9c9-d6e7d7b48704	t	Accusing a powerful man of sexual assault.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e67cff59-0067-4152-b03a-6aa8e4fe6ad2	t	A whole different way of talking called Spanish.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
46f296b8-9a1b-4089-b333-e45f476b3f7b	t	A vagina that beatboxes when it's horny.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
33211e39-2ed6-4785-8c74-a61a4b383df4	t	A urinary tract infection.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
acb9f1b9-d35c-415c-a41d-f91e622a205a	t	A toothless woman gumming on a peach.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f431cf0a-1341-46d2-ac33-160c6cdbe5b0	t	A stinky hoo-ha.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c9c2229b-c865-436b-a78e-ffb706bae181	t	A sticky tree hole full of pancake sauce.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a3c9ab8c-2b14-45a7-b7cb-ab19f721ef76	t	A real job with insurance and your taxes taken out and everything.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4dc6c372-b45b-4845-b26c-6af71cfc328e	t	A real cum-dumpster of a saxophonist.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
c24049c6-5a17-4604-a43e-0bb6f81024e5	t	A racist boomerang that only comes back if you're white.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
cbaa099b-4829-4f24-85ad-5003a6a82553	t	A Puerto Rican minotaur from the Bronx.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
51e1b4b4-fd39-45fa-a39f-bfeada553a99	t	A Pringle.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6d12b16f-e971-4014-9f5d-418e44b5b636	t	A powerful philosopher named Brainhead.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
24341f93-a2f1-4d37-9c13-6809bb4eb5ba	t	A piping-hot casserole filled with beans and hair.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f12f9fe5-d061-4565-beb2-7ed2ccdb73bb	t	A penis that gets too hard and explodes blood.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ca17b26a-6b05-45f5-a462-658ac7bca512	t	A magician fucking up over and over again.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
82f2a20c-98a4-4c5e-99c8-0077a0453b98	t	A little taste of penis.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6d362991-cd8a-43e6-b5f4-d92ba47ff1d6	t	A little sewer girl strangling a pigeon.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
7e67de67-8e08-47e4-9073-00785d51be7d	t	A little girl with a knife.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d97bb736-c9cc-481d-8cf4-6dd4191a0523	t	A little boy with big dreams and potatoes for hands.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
fda43f40-eca5-4a9c-a654-b9edfc94d3b2	t	A hateful 30-year marriage.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
9d73ab61-e97f-4846-886a-322b9f3521d1	t	A hamburger on a string that keeps getting pulled away.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
cc94fb27-bbb8-46aa-89bd-5dce169c00de	t	A garbage clown who makes no one laugh and should die.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
464f1005-6b16-46f0-9d79-222aad80d4b9	t	A full-on panic attack.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d33fe908-ce4d-4817-bde4-50acd12ed384	t	A four-hour depression nap.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
a3bf2cad-6e2d-4eef-8775-9af2391a753a	t	A crab rangoon.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
2e212796-d7dc-4e6b-9321-13920c93c5b4	t	A couple of cold ones.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
28182c37-1b34-4f0f-8d08-822be29b2b00	t	A concerning amount of white people.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
d86bf387-a41b-47f8-a695-e79ee58a9904	t	A Christmas feast of goose and jellies.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
14e87ae7-b008-4871-9669-cd865e3f584a	t	A cat with... hands.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
869c3b54-bbf9-4193-9d06-b2fa771a1d0e	t	A button that when you press it, there's jazz.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
14a77253-4f1b-4c3f-804c-46d62e1f0270	t	A bold red lip.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f35bf3dc-ee65-45e8-8222-598117294fb4	t	A bird that dies.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
91f7750a-ceba-418c-a25d-28995850efcc	t	A big, sloppy blowjob from a mean, tired cowboy.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
e9c6b375-2855-4ef5-a34b-3f045defa79a	t	A big, big, big, and I mean BIG big.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
bb5aee6d-c8a0-45bd-8832-93c111724697	t	A big hot fire that's burning everybody.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
1227ca09-d141-4924-8ece-bfa3b3fb4fd0	t	A big hole.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
fc6cbfd5-7757-4541-a064-844b63c81fec	t	A bear.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
4ad6817c-9b67-4d03-b3e1-1cc6940582d2	t	A basketball that screams every time it gets bounced.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
29e40903-20b4-4b72-b1b3-241ae22b440d	t	A 12-foot scepter of bone.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8a9d8a99-3309-4558-985e-b80005d76d20	t	...it is unclear.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
98c85077-88f6-4156-b32c-227f356fcc5d	f	Up next on Nickelodeon: "Clarissa Explains _."	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
0a728ae3-394f-4178-b69b-4c985bce8e1e	f	Tonight on SNICK: "Are You Afriad of _?	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
93b2394a-517a-4762-a758-9544bcf17f2a	f	Siskel and Ebert have panned _ as "poorly conceived" and "sloppily executed."	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
69cfbc6c-8990-4b17-8f97-21972a7a61b2	f	It's Morphin' Time! Mastodon! Pterodactyl! Triceratops! Sabertooth Tiger! _!	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
09aa1cd9-abfd-4708-8194-fb9259a79426	f	I'm a bitch, I'm a lover, I'm a child, I'm _.	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
ba0ee1af-9300-4f94-998c-96cc4ccd1c67	f	How did Stella get her groove back?	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
1a6bff4f-f833-4f40-ac48-7cb565e72787	f	Believe it or not Jim Carrey can do a dead-on impression of _.	1	a3b8f913-9f0e-453e-a2b0-f177146b28c6
c9eafc3c-8d15-40ad-a8d7-b0eee6ced5f9	t	Yelling "girl power!" and doing a high kick.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
4a8e8217-f7ae-4c74-b9b1-ba84cd85a9b1	t	Wearing Nicolas Cage's face.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
6378931e-6295-4e39-ae40-84dbf3f9efdb	t	The Y2K bug.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
caf7095a-c32c-4346-afd3-9456c0ed8616	t	The Great Cornholio.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
2595f5fb-595d-4fed-b134-dc6bd514b97d	t	Sunny D! Alright!	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
1208f89f-41fe-4bc6-bbba-041ffff08d80	t	Sucking the president's dick.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
5f1122db-8720-480a-9ade-cbc37136b7de	t	Stabbing the shit out of a Capri Sun.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
0257b213-901a-4102-a077-bcb9ae04588d	t	Several Michael Keatons	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
fcaa445f-51d8-4e02-80e2-e36c63cbc648	t	Pure Moods, Vol. 1.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
d00d0da0-28b2-42ee-9a4c-dbded4c5ec43	t	Pizza in the morning, pizza in the evening, pizza at supper time.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
f68de759-e5c5-4582-89bf-6b068c470690	t	Patti Mayonnaise.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
64db192d-0c20-4fd2-9da0-6bc8bc7b8e00	t	Pamela Anderson's boobs running in slow motion.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
15bd6f87-6ff1-42af-9946-90ae9208cef5	t	Painting with all the colors of the wind.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
c785c270-e8a4-460d-bbac-af34aa3f01fb	t	Log™.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
b7bbb7e1-b110-4f3b-81eb-c198a4f7967e	t	Liking big butts and not being able to lie about it.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
be65d545-8fb6-497e-8744-ed26e87e79a1	t	Kurt Cobain's death.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
ed670f90-d952-4643-9831-215974243f47	t	Jerking off to a 10-second RealMedia clip.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
49bfd117-9d86-480c-90e0-90364f2c4c9f	t	Getting caught up in the CROSSFIRE™.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
22e16b09-8900-4240-8a8b-0aeb2111ecb8	t	Freeing Willy.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
f3038fdf-24ce-40b7-a0c1-ee21c0c75638	t	Deregulating the mortgage market.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
2498b90e-aa57-4ce5-886e-6f4fd2bd03b4	t	Cool 90s up-in-the-front hair.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
cd16df09-7618-4436-ae21-0cb2fafe6fe3	t	Angels interfering in an otherwise fair baseball game.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
32d72561-5a4d-4cc5-bc05-1f609da39014	t	A threesome with 1996 Denise Richards and 1999 Denise Richards.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
bc8c0768-742f-4d10-b5a0-6beccfe4791a	t	A mulatto, an albino, a mosquito, and my libido.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
1f6b5dff-8d8e-4df0-98bc-a6a731c02bf0	t	A bus that will explode if it goes under 50 miles per hour.	\N	a3b8f913-9f0e-453e-a2b0-f177146b28c6
46e147ee-f42a-4e2b-bdd4-23799042e888	f	Why am I so tired?	1	bdce1192-48f6-44dc-87a6-ccf997cace9b
f5098f54-c19f-4621-82e2-fb70e9c0cc2a	f	Today on Buzzfeed: 10 pictures of _ That look like _!	2	bdce1192-48f6-44dc-87a6-ccf997cace9b
c8b335c4-28a4-4af4-aa58-0625d5be3d1e	f	Honey, Mommy and Daddy love you very much. But apparently Mommy loves _ more than she loves Daddy.	1	bdce1192-48f6-44dc-87a6-ccf997cace9b
e4168e06-f574-4bc9-add3-200440a0b4fc	t	Lads.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4577a5e6-0b61-4d3d-b712-4bfa459340f2	f	Here lies First Last, Year-2015, devoted friend, lover of _.	1	bdce1192-48f6-44dc-87a6-ccf997cace9b
7294ba0d-c2b1-46ee-b9a4-986d7a53e9bc	f	Dear Mom and Dad, Camp is fun. I like capture the flag. Yesterday, one of the older kids taught me about _. I love you, Casey	1	346fd14d-a972-4c0b-b147-bb47965e1730
7825a5cd-d0fb-44f4-9bfe-7b13908f551b	f	Behold the Four Horsemen of the Apocalypse! War, Famine, Death, and _.	1	bdce1192-48f6-44dc-87a6-ccf997cace9b
41db3b00-3d8f-4f2a-8290-808abd813c37	f	A curse upon thee! Many years from now, just when you think you're safe, _ shall turn into _.	2	bdce1192-48f6-44dc-87a6-ccf997cace9b
5acd1a8d-5482-43dd-a0e9-dd885ece0695	t	What remains of my penis.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
3d934ea2-2c7f-4bcd-837e-802700497957	t	Trying to feel something, anything.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
664dfda6-cf8c-4331-ad76-4e5f539b6ef9	t	This groovy new thing called LSD.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
0a41839a-d043-4a6b-a3fc-b6adbc2900e0	t	The transience of all things.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
4a73be28-31a4-4045-96d7-99efdc64f1ac	t	The Great Lizard Uprising of 2352.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
00b538d2-c417-4f95-9210-8f8984e839f5	t	The dying breath of the last human.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
a82db347-99da-46dd-adbd-3fe06f46d7dc	t	The diminishing purity of the white race.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
8f3f0089-8cca-483a-bf57-765e00e99fe1	t	The Bowflex Revolution.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
57262e7c-bb34-42b6-8ee2-6fd126c65694	t	The 9,000 children who starved to death today.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
9c66a5ca-d278-4e35-b746-d29b4e61d0d3	t	Small-town cops with M-4 assault rifles.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
5c38c069-17fb-48a1-a7b6-714146b762b2	t	Rock music and premarital sex.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
74e64ffc-4b69-497e-a02d-bd4ecc06f210	t	Rising sea levels consistent with scientific predictions.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
37951855-88e0-4836-b93f-bb2946f9ecb2	t	Reading an entire book.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
f4940d77-f188-4e62-bbc5-5713a98e3f78	t	Harnessing the miraculous power of the atom to slaughter 200,000 Japanese people.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
2b9e680b-bb0e-4271-920f-570e9cb4a5b0	t	Ebola.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
cc0db60b-9382-4446-8966-ebf1a0700388	t	Building a ladder of hot dogs to the moon.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
15c723aa-8fd4-47f0-ad02-e6135f0db72a	t	Blockbuster late fees up the wazoo.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
0b46a656-eba2-40e4-a004-3a0797e7ad93	t	Being replaced by a robot.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
05b9623f-c17b-4094-a20d-44e6508db687	t	All the poop inside of my body.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
36ecc7cf-4d2a-457c-bbf2-d45d0ca4cbe7	t	A vague fear of something called ISIS.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
4a734f0f-2c73-44e6-9224-c9fa4cc88542	t	A protracted siege.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
34334b69-8ed6-4ef6-ba83-b129f7affe3c	t	A cloud of ash that darkens the Earth for a thousand years.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
39930d60-9004-4bcc-ab6b-0d13621ab975	t	200 years of slavery.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
6615628c-58a6-420a-ba7b-d336d66840b8	f	What's the only thing sexier than confidence?	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
3c59a057-ed43-42a7-a9de-92e215f6e8ae	f	Revealed: Why He Really Resigned! Pope Benedict's Secret Struggle with _.	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
eb45246b-1669-4c24-8ff6-b6a98b367360	f	Kids these days with their iPods and their Internet. In my day, all we needed to pass the time was _.	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
c5c5f417-a707-4bb3-a471-f74af490649a	f	I really hope my grandma doesn't ask me to explain _ again.	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
272a2082-a74c-476a-96f4-6681da564bd4	f	Heroin: a proud supporter of _.	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
a3b78145-86a1-423a-b243-f52d8f312ca8	f	But wait, there's more! If you order _ in the next 15 minutes, we'll throw in _ absolutely free!	2	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
928cb1e9-54a9-48e6-a946-8c2c4353df5c	f	Blessed are you, Lord our God, creator of the universe, who has granted us _.	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
90549a54-f187-4e81-b8d0-9cfdf68dd2d5	f	Because they are forbidden from masturbating, Mormons channel their repressed sexual energy into _.	1	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
315d7e87-2261-45f2-abd3-53c79886c21f	t	These low, low prices!	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
ae6bb1de-7f7c-4fa1-aa20-5548f6149a05	t	The shittier, Jewish version of Christmas.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
3c9e5c1e-4445-4827-857c-f57a9174fa2f	t	The royal afterbirth.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
28e7f692-2eaa-4092-819d-14d91e2eb4d3	t	The Hawaiian goddess Kapo and her flying detachable vagina.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
51caf56d-8124-4124-b82c-adb4e1c84f07	t	The Grinch's musty, cum-stained pelt.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
0bfc49f3-3bf5-4d4f-840f-1e1a457db002	t	Swapping bodies with mom for a day.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
6109ea86-d2ee-4cba-a00f-135ee03d9f07	t	Slicing a ham in icy silence.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
d2577bca-bb18-4a2a-b3d0-c434b389c4b8	t	Rudolph's bright red balls.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
32fcd1d1-af51-495f-899f-427fcaa68707	t	Piece of shit Christmas cards with no money in them.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
89d77ee7-706d-4e92-ad7c-65e899259be9	t	People with cake in their mouths talking about how good cake is.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
ab568589-595c-499d-b19a-413cf2a62eb8	t	Moses gargling Jesus's balls while Shiva and the Buddha penetrate his divine hand holes.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
50714cff-5d4b-4a9b-a5b4-d4d40533879a	t	Making up for 10 years of shitty parenting with a PlayStation.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
7041a7ee-318d-440f-95ea-f25049ae2f0c	t	Jizzing into Santa's beard.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
511c93ee-0425-4a55-9feb-5c1a5ad75eee	t	Having a strong opinion about Obamacare.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
cebdd675-a325-4d57-ba6c-e28b5be67504	t	Giving money and personal information to strangers on the Internet.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
8fcb349c-a3a5-45de-9fb8-608a995e4f59	t	Finding out Santa isn't real.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
1e197820-3da9-42b4-b83c-fe671bbe80b3	t	Congress's flaccid penises withering away beneath their suit pants.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
07c7583a-1c33-48e7-8edc-4f03a77c896a	t	Breeding elves for their priceless semen.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
b605a506-cd2f-421b-905a-04b91b2eecc1	t	Being blind and deaf and having no limbs.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
e2490fa5-3e49-4552-a0cb-61c2e646bb2e	t	A simultaneous nightmare and wet dream starring Sigourney Weaver.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
37fec8b9-cb96-48b0-89d6-cfdefa41b25b	t	A magical tablet containing a world of unlimited pornography.	\N	cb3d0c37-72e1-4c6d-8267-d6a4872834fa
3d37c66f-f603-4a13-97b5-3a0ba6aff105	f	What keeps me warm during the cold, cold winter?	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
9baf4dba-d8d3-474c-8140-d826c3728179	f	Wake up, America. Christmas is under attack by secular liberals and their _.	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
6e9f380b-ed98-49fe-b5c4-d2f3533aba15	f	This is a little embarrassing but I was wondering if you could recommend a doctor who specializes in _.	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
863772f4-734a-44f5-83c2-dc1e84a7e758	f	On the third day of Christmas, my true love gave to me: three French hens, two turtle doves, and _.	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
10410fd8-0d3b-4f9d-8606-dcbfcd719474	f	Jesus is _.	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
f50c3f86-f902-46a3-aebb-d8e992bfcab1	f	Every Christmas, my uncle gets drunk and tells the story about _.	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
94aba857-17a0-4331-8edd-2dd8106604c1	f	After blacking out during New Year's Eve, I was awoken by _.	1	bd97b3c0-5597-443b-81f4-9700b214e6ee
758bb686-46d2-4a9c-991a-23b2f237020d	t	Whatever Kwanzaa is supposed to be about.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
836a353a-e793-4a26-b57d-15e5ed5a525b	t	The tiny, calloused hands of the Chinese children that made this card.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
99b25ac1-c4e8-451d-b1b1-7f4e70f83355	t	The Star Wars Holiday Special.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
9dd28b80-678d-4558-9b0d-32e30c8f3078	t	Taking down Santa with a surface-to-air missile.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
5e8a2745-eed8-48a0-ae0c-1529a2d8476a	t	Space Jam on VHS.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
17dfd72c-7b0c-4f95-a59e-03302bd1efdf	t	Socks.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
368f0442-3970-481e-9bae-425abbab8a3b	t	Several intertwining love stories featuring Hugh Grant.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
dc414bbc-a0f9-4ebd-b2c3-5fbf25b90fb6	t	Santa's heavy sack.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
d61a1af0-55b4-4fe6-9408-52610f5f61e6	t	Pretending to be happy.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
e7543ae2-2a29-4495-bc5b-c7e794add6ca	t	My hot cousin.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
49e49e3b-eca9-4f83-923f-b44194030bcd	t	Mall Santa.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
ed346953-a140-4971-9a3d-1a7b53b86316	t	Krampus, the Austrian Christmas monster.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
ba87f8e4-4def-47fa-bf14-b1b915705252	t	Immaculate conception.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
ac493b56-5705-4cc0-b65f-0c6fa58904b6	t	Gift-wrapping a live hamster.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
c139faad-e7d2-4d61-9ee8-8cdfe6cf3fe0	t	Fucking up "Silent Night" in front of 300 parents.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
a7d0f8f2-d8c5-405f-aa01-6d962d18764c	t	Elf cum.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
58405f9a-dc7c-4224-8399-cb44c8676ae0	t	Eating an entire snowman.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
839a9a68-f042-4355-a59c-d3fdf43391fe	t	Clearing a bloody path through Walmart with a scimitar.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
d89cb578-d443-4b3d-9020-f45b92c687fa	t	Another shitty year.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
cd8bdeda-3116-453c-b289-d3fc19313fe2	t	A visually arresting turtleneck.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
a1d9e569-d311-4452-a5b5-98a191dee6b2	t	A toxic family environment.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
a2e675d8-3d39-46ff-8dd9-d1d7e8c1fe79	t	A Hungry-Man™ Frozen Christmas Dinner for One.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
9b1dc048-3ec4-4284-95c0-67f3d0bb0a74	t	A Christmas stocking full of coleslaw.	\N	bd97b3c0-5597-443b-81f4-9700b214e6ee
dc2e2821-a1e5-4493-afd0-656f99cd053b	f	Your security clearance has been suspended beause of your shameful past involving _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
9f676ff5-8464-4b5e-9e4b-d7385bda0707	f	With enough time and pressure, _ will turn into _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
8528ae2d-c6f5-40f9-a971-f3b1b9a31277	f	Why do I hurt all over?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e11eb6fa-41c8-4130-a05a-98db1723c7f9	f	Why can't I sleep at night?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
85257321-ce44-4891-975f-4aa2113d431f	f	Why am I sticky?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
88df17a3-1ceb-4af0-bc98-9a27cfb0adad	f	Who stole the cookies from the cookie jar?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b41bc622-89cb-46e8-acea-c1a7ca5f4de4	f	White people like _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
89368cb5-afcf-47f1-885f-29ddaefa823e	f	While the United States raced the Soviet Union to the moon, the Mexican government funneled millions of pesos into research on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
fec165d8-1466-4b46-94de-c05bf4811b2b	t	The events depicted in James Cameron's Avatar.	\N	bdce1192-48f6-44dc-87a6-ccf997cace9b
c93955b7-393e-4671-8aa9-a30fcfd0dca6	f	When you get right down to it, _ is just _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
331dba4a-8434-4571-9617-698fa899dc91	f	When Pharaoh remained unmoved, Moses called down a Plague of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7774d4a6-2c19-4bec-bbbe-0605cd2ccfeb	f	When I'm pooping, I like to think about _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
74d57426-6bdf-47f6-8c46-c357e369fccd	f	When I was tripping on acid, _ turned into _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
66036c7d-2f7a-4977-9c67-e37a059a5339	f	When I pooped, what came out of my butt?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a611beb4-a5bf-411d-92ff-9653ce1a4304	f	When I am Prime Minister, I will create the Ministry of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7fa34856-a9af-4428-989a-6a0f6f236627	f	When I am Prime Minister, I will create the Department of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
13827dd2-5aa8-48c3-9bea-d2134bcecece	f	When I am Prime Minister, I will create the Department of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ca564758-ffb2-4baa-b9b5-588159fbbac7	f	When I am Prime Minister of Canada, I will create the Ministry of _.	1	133a3c5a-af03-4708-af98-8ff154ff76f4
4fc64ab1-7f4b-4a5d-aa33-e6e0ec72b117	f	When I am Prime Minister of Canada, I will create the Department of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b0d47fd5-ff27-4b5f-9355-7b61ef98ab8e	f	When I am President, I will create the Department of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
82960dff-bced-4ac8-b480-3922a7fbdcef	f	When I am President of the United States, I will create the Department of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
08c1a1f7-4e0b-422d-99ed-269039d381c4	f	When I am a billionare, I shall erect a 50-foot statue to commemorate _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7f250a3b-ae5d-4a87-8033-f48ddabd7500	f	When I am a billionare, I shall erect a 20-metre statue to commemorate _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b8c634a3-7bb5-40d7-a05e-7a88d1155303	f	When I am a billionare, I shall erect a 20-meter statue to commemorate _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b5b3520b-6735-4401-abcf-48c2a8ae6bbb	f	When all else fails, I can always masturbate to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
31061caf-efc9-46b8-80d3-9dee62245ba8	f	What's there a tonne of in heaven?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
9717efc4-9760-4578-8b1e-a65822a3b3ab	f	What's there a ton of in heaven?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8bd2b031-b2ee-4ed3-b870-a8a1a454ddd4	f	What's the next superhero/sidekick duo?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2759a1ab-ac65-4624-9f01-896d65e29762	f	What's the next Happy Meal® toy?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8923c42f-e967-40f5-a8ff-0d6a963a1c57	f	What's the most emo?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
28db88e5-d87d-4ad5-8b53-25ac549f7b66	f	What's the crustiest?	1	133a3c5a-af03-4708-af98-8ff154ff76f4
4742e167-b1f3-4f1c-80d3-f4ff4c84bfb8	f	What's the Canadian government using to inspire rural students to succeed?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
94f942a0-bbbe-41a0-9791-aec30a81b7b6	f	What's that sound?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c52e9daa-3b12-4181-936b-4f1c497550b6	f	What's that smell?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
07f25cfd-a248-4903-9397-997a593454f6	f	What's Teach for America using to inspire inner city students to succeed?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8275eee6-1494-4080-a660-46e7333d78ab	f	What's my secret power?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2a6b968-255b-447f-8b79-ff27afaf007b	f	What's my anti-drug?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
30fc77c0-2182-47fa-a0ea-50ac9df6b8e9	f	What's a girl's best friend?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
02cfaa09-2397-40d0-872e-b8a54b6d7d96	f	What would grandma find disturbing, yet oddly charming?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f76c708b-30d5-446d-8776-abd6456ad38d	f	What will I bring back in time to convince people that I am a powerful wizard?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
6d0e0bbc-aba3-4a63-8c47-039230c28f6f	f	What will always get you laid?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4dd9c397-824d-4c0a-a825-eef996c65714	f	What never fails to liven up the party?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ddaa7088-1234-4b25-afb1-944310d907c2	f	What makes me a true blue Aussie?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8a949f4d-6e9d-456b-88d6-56f4fa3323f3	f	What makes life worth living?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0af4e58b-ad87-4139-908f-5a2cfc633ed6	f	What made my first kiss so awkward?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
95f2f400-e032-4edd-bde0-3291432187bb	f	What left this stain on my couch?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d0913ad4-c588-49c7-87fc-3d69566092ee	f	What kept Margaret Thatcher busy in her waning years?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
272ff41b-ee14-48a6-ae70-cbdfbe189d82	f	What is George W. Bush thinking about right now?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
84cdf73c-2e8a-444e-bf0d-59da3c4874a3	f	What is Batman's guilty pleasure?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
287e97de-d163-4cb9-9409-719c1b2ebd83	f	What helps Obama unwind?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0497a80d-6872-4c5b-bbac-86bcc376932e	f	What helps Barack Obama unwind?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8ec7bbe6-8557-409b-8bab-3cec9ef0ab36	f	What has been making life difficult at the nudist colony?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
1be3a33a-94bb-4a64-9645-9fa5d34c998a	f	What gives me uncontrollable gas?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
603bd763-ec66-40ee-b15c-7eb8b2fcf63c	f	What gets better with age?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
41cd0ceb-c4ee-4c73-bef8-3403354e40a4	f	What ended my last relationship?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d17cd766-ebba-4e1a-bc78-0fe316f62012	f	What don't you want to find in your Mongolian beef?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a2570c69-948a-48ff-82c4-cc690f14566f	f	What don't you want to find in your Kung Pao chicken?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
dbd08080-0a51-43ed-8fcb-2e6ef4ecd113	f	What don't you want to find in your doner kebab?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d8c99c28-ccfd-4a9b-8dbb-589e69f45931	f	What don't you want to find in your Chinese food?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7141a0b7-4918-46a0-a93d-1ea721b1a2b0	f	What does Dick Cheney prefer?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
965e1e44-2460-4def-a237-49e45842be8c	f	What do old people smell like?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
cb105449-89fd-4a6e-8e5e-a1bc19331e47	f	What did Vin Diesel eat for dinner?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8ef6cfc7-8741-4ce3-8cb5-678c4609d638	f	What did the US airdrop to the children of Afghanistan?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ee02ba07-f89f-4482-b7d0-2c356cb4bc16	f	What did I bring back from Mexico?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d4b832cd-98c0-43a2-9de9-a4d36139da4f	f	What did I bring back from Bali?	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
c8fbe4b4-a567-4741-9ab4-553e7ad8f7d9	f	What did I bring back from Amsterdam?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
28d27578-d7ba-4359-8f14-6508b0d8af1d	f	What brought the orgy to a grinding halt?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
3f136e12-87fa-4a23-97bf-6d2cb1df145e	f	What broke up the original Wiggles?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
15e59b1d-42f1-4f15-acde-9fc2665a75fa	f	What are school administrators using to curb rampant teenage pregnancy?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
54a92a39-a5ee-44d3-8447-917458390c75	f	What are my parents hiding from me?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d7a8d46-63a0-4fd7-90d0-00284d17f741	f	What am I giving up for Lent?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b456c4b5-9999-4ad0-a620-cb70e1226187	f	Well if you'll excuse me, gentlemen, I have a date with _.	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
08bb3d56-e663-407f-b1fb-ddcc2795991b	f	War! What is it good for?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
33857142-dc2f-4c95-bca4-a8584b108872	f	UKIP: Putting _ First!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bcc1049f-dc6d-4f40-b8b1-4b32aa6ed328	f	Uh, hey guys, I know this was my idea, but I'm having serious doubts about _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
dcc8a01f-0d5d-4b0c-8dfc-0442f55bfb6c	f	Turns out that _-Man was neither the hero we needed nor wanted.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
95cca7b6-40a7-443a-b57a-c082c9e96d12	f	TSA guidelines now prohibit _ on airplanes.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d4871a8-2049-4250-a3a9-cd40260a9412	f	Tonight's top story: What you don't know about _ could kill you.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
29e0c476-a3be-4d7d-90eb-48f02fce18f6	f	Today on The Jeremy Kyle Show: "Help! My son is _!"	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8762c0dd-cc47-4ce3-98eb-c53c38d95082	f	Today on Maury: "Help! My son is _!"	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
1f658b72-1066-444b-82aa-1ecb9d450c0a	f	Today on Jerry Springer: "Help! My son is _!"	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4f2f3b92-9bd5-465e-88d3-d0290c46c52f	f	This season at the Sydney Opera House, Samuel Beckett's classic existential play: Waiting for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
de57895c-0159-4cce-961b-c05871dc837e	f	This season at the Princess of Wales Theatre, Samuel Beckett's classic existential play: Waiting for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
440c7e9d-5191-4c2d-a2b7-04a3f7f5c32c	f	This season at the old Vic, Samuel Beckett's classic existential play: Waitng for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8bbd5095-f3c2-490b-a07f-e8816a46b335	f	This season at Steppenwolf, Samuel Beckett's classic existential play: Waitng for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4c9202b7-acfa-4bb7-94b1-4817c8729cd0	f	This is your pilot speaking. Please prepare for _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
d7fe1f97-4774-4c0c-9a96-65e0d3f8543b	f	They said we were crazy. They said we couldn't put _ inside of _. They were wrong.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
481c05be-38b7-4683-a187-104511224e89	f	The U.S. has begun airdropping _ to the children of Afghanistan.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f6fb081e-9fa4-4b13-b43a-01441eb1359b	f	The theme for next year's Eurovision Song Contest is "We are _."	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
6a18cf02-5583-44bd-b8be-a416eed06e82	f	The TFL apologizes for the delay in train service due to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
82947877-8ea9-4902-ae20-e582e86b7d36	f	The Smithsonian Museum of Natural History has just opened an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e88d286e-078e-43b1-ad22-00234660fd4d	f	The secret to a lasting marriage is communication, communication, and _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
5ebb45ca-a301-4ab6-8503-ee951f216aac	f	The school trip was completely ruined by _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bc96e414-bf02-41b1-acde-101757f08914	f	The school field trip was completely ruined by _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
52e8291d-f7e6-46c5-96b5-2c5de20d1ed7	f	The school excursion was completely ruined by _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f0fbb637-d13c-45b5-84e7-58447c9a5b06	f	The new Chevy Tahoe. With the power and space to take _ everywhere you go.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bd59f5fa-6342-432b-b159-ac850463721a	f	The neighborhood kid didn't use snow for their snowman, they used _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a55019c8-cc6b-453d-8dd9-5beef7995e2c	f	The hills are alive with the sound of _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
26bd25f2-172f-4418-a986-bbf565466a4d	f	The Four Horsemen of the Apocalypse: Pestilence, War, Famine, and _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
c1173885-66da-4bb3-affa-4dc5a23c4cd5	f	The class field trip was completely ruined by _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
39aee7d5-2547-4e8b-91ab-a2dd587b18aa	f	The blind date was going horribly until we discovered our shared interest in _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e846e2df-e48d-48b2-b0b5-4fd972019b4f	f	That's right, I killed _. How, you ask? _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
c58d4a49-a734-4b7f-847e-a8aea5613ac9	f	Thank God for alcohol and _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
929bb646-a0a9-4304-94c9-86d59c417c07	f	Studies show that lab rats navigate mazes 50% faster after being exposed to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
09bc963b-ff01-4e9c-9e7a-522178890fb1	f	Sorry everyone, I just _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
83d98913-440d-444f-a8c6-8111ffbe692c	f	Skidamarink a dink a dink, skidamarink a doo, I love _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
3d62790b-28ae-4781-8dc9-75ec0650aded	f	Science will never explain _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a508d189-7130-4d55-b201-7c7d12bd3311	f	Rumor has it that Vladimir Putin's favorite dish is _ stuffed with _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
5f503591-dbfb-4c19-8399-49677622a17b	f	Qantas now prohibits _ on airplanes.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
cd184bc6-6dec-401f-bc1d-3a8dbc2ad515	f	Penalty! _: that's 5 minutes in the box!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e7929d43-695b-41d7-8e5f-e7db5c162c78	f	Only you can prevent _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
407b86c8-74da-42c2-bd34-c643d117db8a	f	Old MacDonald had _. E-I-E-I-O.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
1c7a227c-44f3-41e5-80ba-f90348b96bbb	f	Oi! Show us _!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0f99954e-c4d9-41bd-a625-180c9f30e3f9	f	O Canada, we stand on guard for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d779ef89-e0a0-4aa1-81a0-434fdd085cb6	f	Now at the Smithsonian: an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c61ccf9f-2db0-4e9c-aafe-68ed07083146	f	Now at the Royal Ontario Museum: an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
59ac530f-f4a0-4d8f-94ea-15606c3a3bf9	f	Now at the Natural History Museum: an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
73efe455-19c5-46c1-b0f6-53c68c38c4f8	f	Now at the National Museum of Australia: an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bb01ca88-6773-4236-b8ea-1da1910ca60a	f	Nobody expects the Spanish Inquisition. Our chief weapons are fear, surprise, and _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
528b93b1-0447-46a3-bf13-a3a71270bd01	f	Next up on Channel 4: Ramsay's _ Nightmares.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c510b3e7-d1fb-457a-be64-d4ec521f6c52	f	Next on TSN: The World Series of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2c949c03-e0c6-448e-a2f6-18a9ec42a49f	f	Next on Sky Sports: The World Champsion of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0aefcd42-5ac1-4203-a9b7-b9eb062c6ce2	f	Next on Sky Sports: The World Champsion of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b89acffe-1cb2-4549-83c9-35211567969e	f	Next on Nine's Wide World of Sports: The World Championship of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
56701d35-fb85-4665-ac26-d20f1167aea6	f	Next on Eurosport: The World Championship of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4eef542b-308f-4f73-b731-bc31f00cecae	f	Next on ESPN2: The World Series of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
6ecf7995-e927-47c6-b091-e131931f5320	f	Next from J.K. Rowling: Harry Potter and the chamber of _.	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
9c39fc9d-b0fa-4dd6-802d-ca6fa93b5551	f	Next from J.K. Rowling: Harry Potter and the Chamber of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
eec84071-7d8a-4a96-84e3-797dca54ae88	f	My plan for world domination begins with _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d07934bb-ae93-4a91-a206-7bb2721153ed	f	My mom is so happy when I visit, but I'm only there to be _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
de6702e2-8e11-4af8-abdd-e6d4d849fcf8	f	My fellow Americans: Before this decade is out, we will have _ on the moon!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2e178aab-6d3a-40fe-a6a7-4e31eaf2a348	f	MTV's new reality show features eight washed-up celebrities living with _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
19e20dcf-07fd-4bd5-8102-e047a4a714d1	f	Mr. and Mrs. Diaz, we called you in because we're concerned about Cynthia. Are you aware that your daughter is _?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b9e98b09-39d7-4e57-a764-694d208b8e19	f	Money can't buy me love, but it can buy me _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a17b6337-5699-4b75-9af0-deffaafe2414	f	Military historians remember Alexander the Great for his brilliant use of _ against the Persians.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
75f92e38-9e12-4137-9a38-848336e33528	f	Men's Wearhouse: You're gonna like _. I guarantee it.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
571ac1ba-fb0c-4ea6-aa77-84d77096fe23	f	Maybe she's born with it. Maybe it's _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
096c17ea-55ab-4d7c-b6a5-87d2d62d0ac5	f	Mate, do not go in that toilet. There's _ in there.	1	c61906cb-334e-4781-91a0-29f62d5b0fa8
ce0d3df6-26fd-4a2a-9fd8-6a8f6985a584	f	Mate, do not go in that bathroom. There's _ in there.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2f5851b4-e4c8-45ba-9eac-b8e293c21f77	f	Make a haiku.	3	00ced41c-e229-42f7-8b93-46b19aeb43cf
a76effb2-f64c-44fd-93f3-0eca044caeb3	f	Major League Baseball has banned _ for giving players an unfair advantage.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2df331af-2ede-4b94-85da-09542fd9c080	f	Lovin' you is easy 'cause you're _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f0249554-3d95-4776-8988-2c95f475eb9c	f	Lifetime® presents "_: the Story of _."	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
1be379ea-021b-44fe-8387-1da97876453d	f	Lifetime® presents _: the Story of _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
6281b2ee-73da-4469-8807-6919344dd6bb	f	Life was difficult for cavemen before _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
1ee478cf-8d99-41c2-9a1d-5b843d5b4c5a	f	Life for American Indians was forever changed when the White Man introduced them to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4fc44df1-1051-4354-b48b-75357acd7084	f	Life for Aboriginal people was forever changed when the white man introduced them to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a5014a6b-d777-4a3f-9dc5-e16273c04736	f	Kids, I don't need drugs to get high. I'm high on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
459c30ff-060f-4048-b074-b11be7cbd85b	f	Just saw this upsetting video! Please retweet!! #stop_	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
179446ac-ebb1-4b4d-b82e-31c59c2f1342	f	Just once, I'd like to hear you say "Thanks, Mum. Thanks for _."	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
eb25933f-f9f2-41f0-8cf1-7888ff01fc2e	f	Just once, I'd like to hear you say "Thanks, Mom. Thanks for _."	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e2c14411-b4e8-4910-a831-59e0361f775a	f	It's not _ that puts strain on a relationship, it's _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
e142842f-6123-493b-b078-90a10b8759c0	f	Introducing X-Treme Baseball! It's like baseball, but with _!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4665943d-065e-4acc-a78e-4ccee7d2831d	f	Introducing the amazing superhero/sidekick duo! It's _ and _!	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
614aabc1-8adc-4f33-b3bb-917b80bb9a62	f	Instead of coal, Santa now gives the bad children _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
77eed05c-2c9d-42d4-a9bd-e93e4ddcf194	f	Instead of coal, Father Christmas now gives the bad children _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f79ad75d-904a-4bb9-b498-2342e42c5325	f	In your Best-Man speech, I'd talk about when we found ourselves _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
eb9629dd-0ee8-4531-b7c4-e02173a7267e	f	In the seventh circle of Hell, sinners must endure _ for all eternity.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
63b04ae6-afee-46c8-9101-c3c797ce6492	f	In the new Disney Channel Original Movie, Hannah Montana struggles with _ for the first time.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7ef3caa0-2b32-478b-bc81-33c2e7873339	f	In Rome, there are whisperings that the Vatican has a secret room devoted to _.	1	346fd14d-a972-4c0b-b147-bb47965e1730
de92a4bc-74cc-494c-a037-0c7d81b9caf7	f	In Michael Jackson's final moments, he thought about _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
3f0e9d35-0af9-4184-be3d-574d429ef0f9	f	In M. Night Shyamalan's new movie, Bruce Willis discovers that _ had really been _ all along.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
dc8f0864-0959-4a16-a40b-b03ed664efda	t	My annoying brother.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
6132a3e9-0609-472b-a7e2-7e62a3b843e0	f	In L.A. County Jail, word is you can trade 200 cigarettes for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e8459f2a-e3f3-41fb-9482-7f74349abc1b	f	In his new summer comedy, Rob Schneider is _ trapped in the body of _.	2	cf526624-d9a0-4f89-84ad-88c963536dd4
8360e4df-156a-493d-9e7a-8608e44065b3	f	In his new self-produced album, Kanye West raps over the sounds of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d591dab8-395f-494d-88be-d973e3cbb9d8	f	In her latest feature-length film, Tracy Beaker struggles with _ for the first time.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
6ea28b82-4922-42d7-8753-aea79e825fdb	f	In Belmarsh Prison, word is you can trade 200 cigarettes for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea48b423-91bc-47f6-8d6b-bdada8c89d39	f	In Australia, _ is twice as big and twice as deadly.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
188df359-45e0-4cbc-8990-128e8bd1cd09	f	In an attempt to reach a wider audience, the Smithsonian Museum of Natural History has opened an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
49d3d624-fc70-481b-a763-bf28c15b48f9	f	In an attempt to reach a wider audience, the National Museum of Australia has opened an interactive exhibit on _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b741021d-58b7-493a-a4ba-2271321d7643	f	In a world ravaged by _, our only solace is _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5663fa2-8213-4d5f-8fa8-924eb0c64e4a	f	In a world ravaged by _ our only solace is _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
bf6b1a15-6f3d-451a-bcbc-e895cbdc67dc	f	In 1,000 years, when paper money is but a distant memory, _ will be our currency.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2b1768b2-fdab-4c8c-8676-9b169f8b5bee	f	In 1,000 years, when paper money is a distant memory, how will we pay for goods and services?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0699ba8f-99d2-409f-b27a-87aab6d80307	f	IF you like _, YOU MIGHT BE A REDNECK.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
52a69131-9a8c-47d2-8c87-c7ca6ec41be3	f	If you can't be with the one you love, love _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
cdb1dfb5-e045-49f5-a7fb-020c6c00ef8b	f	I'm not like the rest of you. I'm too rich and busy for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
849fc6b3-85f7-4219-97a2-a8b7a0326daf	f	I'm sorry, Sir, but I couldn't complete my homework because of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
61d83aa2-b0ee-49ff-89da-7840b9eed1a3	f	I'm sorry, Professor, but I couldn't complete my homework because of _.	1	9af9e957-2534-4e56-a1ab-bc885448c05d
eeea2e8e-f0c1-4954-8633-452ff08a66e6	f	I'm no doctor, but I'm pretty sure what you're suffering from is called "_."	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
de563856-fefb-476d-bce3-17f87a3a4d12	f	I'm Lebron James, and when I'm not slamming dunks, I love _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
463a77df-761c-4a3a-bd03-2a69ddded372	f	I'm going on a cleanse this week. Nothing but kale juice and _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f30ba707-697c-4ba6-b93e-234067b5f799	f	I wish I hadn't lost the instruction manual for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
eede3698-7284-4366-921d-d7735e3a351d	f	I spy with my little eye _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
4ebb85e5-5803-478a-a216-79585a4de410	f	I never truly understood _ until I encountered _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
c1362477-05d8-4a50-b809-a331a32e364c	f	I learned the hard way that you can't cheer up a grieving friend with _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c85c7696-ce61-4522-b178-a4c7b2e151ba	f	I know when that hotline bling, that can only mean one thing: _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f65af6d3-82a4-487d-b924-2e2a0ef6dcb1	f	I got 99 problems, but _ ain't one.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
6486da8e-2ddf-473d-b4fd-3fc4133a9eb4	f	I get by with a little help from _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
0c00e920-d32d-4f59-a672-e4afea8b1544	f	I drink to forget _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bf03c3a7-3612-4378-ab29-b05405150c29	f	I do not know with what weapons World War III will be fought, but World War IV will be fought with _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec1d61b3-dfcb-41f0-868a-11a634e27446	f	How did I lose my virginity?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
3af79e83-ed0a-42a3-8903-dad4f7980c3d	f	How am I maintaining my relationship status?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
43643517-5640-4b3a-95dd-63d77caba5e0	f	Hey Reddit! I'm _. Ask me anything.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c89dad5f-0403-4e02-a2a8-82d7f7df796d	f	Hey guys, welcome to TGIF! Would you like to start the night off right with _?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
203be4ff-bb0f-4485-94a9-815385b36dd3	f	Hey guys, welcome to Sizzler! Would you like to start the night off right with _?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
6ad18eb3-58f2-4267-b3ff-ca8449996cc5	f	Hey guys, welcome to Chili's! Would you like to start the night off right with _?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8c39366e-fce5-42f1-9389-ebb73828876c	f	Hey guys, welcome to Boston Pizza! Would you like to start the night off right with _?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
9264cbbc-acfd-46b1-8ec8-efc2c9c67ddf	f	Having problems with _? Try _!	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
9bce787a-885b-4478-9afa-54c0807173f8	f	Future historians will agree that _ marked the beginning of America's decline.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
5628d002-2f43-4bb6-9670-7fca45141fba	f	Fun tip! When your man asks you to go down on him, try surprising him with _ instead.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d94be036-2b63-421a-ac2c-29efa3ee89e1	f	For my turn, I will spend four gold and allocate all three workers to _.	1	4d845a2e-d6e7-4110-a862-4363efde011e
1520eb3a-42d1-4a3f-9fe1-2d96be1a30bf	f	Finally! A service that delivers _ right to your door.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
489bbe95-c1fa-4033-8ee6-655610863717	f	During sex, I like to think about _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
9edf689c-dcc4-4537-9ff8-8f9a666f5774	f	During Picasso's often-overlooked Brown Period, he produced hundreds of paintings of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ca117ef2-eb51-407e-ad52-4df5fabd05d9	f	During his short-lived boxing career, the Messiah fought under the name Jesus "_" Christ.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
9610783f-50ba-4cb5-824f-ab1f880bb59b	f	During his childhood, Salvador Dali produced hundreds of paintings of _.	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
fb5f4bc3-2a45-4ca7-82a2-bb3495dfb9a7	f	Due to a PR fiasco, Walmart no longer offers _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
39dcc8a5-1531-4185-ad6f-fe540be92999	f	Dude, do not go in that washroom. There's _ in there.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d90f674b-d1c6-4045-8818-15932dd1ddb0	f	Dude, do not go in that bathroom. There's _ in there.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
504a4d73-da37-4744-b8b5-37d0e3ae9c80	f	Doctor, you've gone too far! The human body wasn't meant to withstand that amount of _!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bf681def-915d-48f3-9235-66b50386d3a2	f	Dear Sir or Madam, We regret to inform you that the Office of _ has denied your request for _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
36b32dc3-daf5-4231-a9cd-187588b202ac	f	Dear Agony Aunt, I'm having some trouble with _ and I need your advice.	1	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
d87f9f7a-d6cc-4b80-815f-c7d63f2b70c7	f	Dear Abby, I'm having some trouble with _ and would like your advice.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
829eaf06-36b8-406d-9061-302c0394cca3	f	Daddy, why is mummy crying?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
ebcceef6-74bd-4c38-aa66-28fbe78331ab	f	Daddy, why is mommy crying?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4989818f-0cca-4365-94c7-0a3546306beb	f	CTV presents "_: the Story of _."	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
2de9bc53-8ab6-4cba-a02e-0bbb1e76253f	f	Crikey! I've never seen _ like this before! Let's get a bit closer.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b9ca368d-f9bd-46c3-a3e4-48b881043957	f	Coming to theaters this holiday season, "Star Wars: The Rise of _."	1	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
ce1290b8-9d28-4890-8309-2490fae57925	f	Coming to Broadway this season, _: The Musical.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
5d9d3917-5a3d-4210-a743-e87f5e54a18c	f	Coming this season, Samuel Beckett's classic existential play: Waiting for _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
11c29332-6e63-4114-92eb-f76c5d0c1ef6	f	Click Here for _!!!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
5148216c-e875-4669-a4da-ceab34523687	f	Check me out, yo! I call this dance move "_."	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
48491271-1b97-4fc0-80e8-a5e4e843845c	f	Charlie and the chocolate _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
3dd2d5c8-f403-48b3-8e6f-173f894b1616	f	Channel 9 is pleased to present its new variety show, "Hey Hey It's _."	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
5cb408a3-d85d-4ed4-9428-2237c392d80f	f	Channel 5's new reality show features eight washed-up celebrities living with _.	1	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
90c647db-00cd-4bbd-84ec-29f14faf7e87	f	Channel 4 presents _, the story of _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
49eeab2f-ceb2-4cda-ad15-e8ae35670e3b	f	CBC presents "_: the Story of _."	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
f2502d5d-6094-49ee-a5f1-a84ace9dd929	f	But before I kill you, Mr. Bond, I must show you _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
676c343b-987b-4379-aafe-a121aa8f53a0	f	Brought to you by XXXX Gold, the Official Beer of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
32e69199-0904-476f-8107-96781e19b1ba	f	Brought to you by Molson Canadian, the Official Beer of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
012b30f0-33bf-4d30-9aa7-bb4d04d4f451	f	Brought to you by Bud Light®, the Official Beer of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
5f2d81d1-6bf9-4448-8fa5-a0e56847a4a2	f	Bravo's new reality show features eight washed-up celebrities living with _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
43491fbc-b1a2-4c19-b372-fe237931edc2	f	BILLY MAYS HERE FOR _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
04d83932-363f-4f24-a89b-4a42524f310e	f	Betcha can't have just one!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7fc7da9f-c9dd-4c3b-bc44-ed739ceaf978	f	As the mum of five rambunctious boys, I'm no stranger to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7991b60e-1d61-467f-b67d-7589733822b7	f	As the mom of five rambunctious boys, I'm no stranger to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
7b911122-846c-4c25-97c5-b5745166e7d9	f	As my New Year's resolution, I vow to give up _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e7e999ee-e8f2-45e4-9dcc-8abd3a3e8e7a	f	Arby's: We Have _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
45ca1a69-a9c4-4a89-8204-0a4da3cde051	f	Anthropologists have recently discovered a primitive tribe that worships _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f8ad645f-ee5d-40c2-a58d-4e8390dfcc4e	f	And what did you bring for show and tell?	1	df299c12-e25e-4774-8e4e-5c01b4ae80e8
f18d8b8a-8413-488f-b25b-4779ff0d4a59	f	And the BAFTA for _ goes to _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
ee8103be-b2da-40ce-a513-b5225b4401f9	f	And the Academy Award for _ goes to _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
021c1a3e-9d41-4964-9958-59da5088b802	f	Alternative medicine is now embracing the curative powers of _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c19a8177-7b3f-42ce-877b-6bb48e8063f3	f	Airport security guidelines now prohibit _ on airplanes.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
fea3eebe-4d9f-48f7-a1c3-b6780f32e9dd	f	Air Canada guidelines now prohibit _ on airplanes.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
4f246b50-77cd-4569-a1ae-755551b6b4aa	f	After the earthquake, Sean Penn brought _ to the people of Haiti.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c22dea9f-cf34-4d24-b646-6903efe6e6a1	f	After months of practice with _, I think I'm finally ready for _.	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
96a21cb4-f83d-482a-8541-b40fe32595c9	f	After Hurricane Katrina, Sean Penn brought _ to the people of New Orleans.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
f456e6d5-c9a7-4f33-8237-4e79f15ce408	f	After Hurricane Katrina, Sean Penn brought _ to all the people of New Orleans.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bed2c90e-2bf8-4a2f-8987-634659af7678	f	After four platinum albums and three Grammys, it's time to get back to my roots, to what inspired me to make music in the first place: _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
bc5d1df4-c84d-4a28-834b-1f9c0d375510	f	After eight years in the White House, how is Obama finally letting loose?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8267e9a7-5502-4cc0-9c5e-f74436d7ff77	f	ABC presents: "_: The Story of _."	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
d199a053-63e4-44dc-821b-c8f879981e00	f	A successful job interview begins with a firm handshake and ends with _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
3f34e4ef-c4b2-4bf8-8138-cedac708527c	f	A romantic, candlelit dinner would be incomplete without _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
89a36933-56b1-4712-9ead-bbec58793592	f	A romantic candlelit dinner would be incomplete without _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
0b013279-038e-4de3-b034-7671693e6b82	f	A romantic candlelit dinner would be incomplete without _.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
c748bda8-aef6-4b56-908b-ab46820a127f	f	A recent laboratory study shows that undergraduates have 50% less sex after being exposed to _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
98996f63-aaa0-4e2e-a2e4-2d24f9857b08	f	50% of all marriages end in _.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
99fe0be7-c886-4bc2-9681-2a78fb75100f	f	★✰✰✰✰ Do NOT go here! Found _ in my Kung Pao chicken!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
c7e2ff37-e80f-49bf-8cc2-4ad596be611b	f	_. The best way to spice up your sex life.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
10c8eea0-6cc3-42fb-9551-6effbc4be79d	f	_. That's how I want to die.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
2eb27d2c-723e-4aaf-b80e-ee77b796c96e	f	_. That was so metal.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
104df178-e9ef-486d-93d2-c77125e08798	f	_. It's a trap!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
39858efc-3f2d-4ea0-a1c7-3903413688a7	f	_. High five, bro.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f1103cc-039f-4ec8-b2c6-71f7c2c2e517	f	_. Betcha can't have just one!	1	b6be5972-5680-4e7d-8142-dc1ab0b462f7
e16890f0-5900-4e74-9208-1c237c68c926	f	_. Awesome in theory, kind of a mess in practice.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
36f5db57-efa0-41d8-985e-a6ca8649643b	f	_? Yeah, nah.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
e8af8ac3-6b0d-4fec-b282-f0eb278897fd	f	_? There's an app for that.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
a59636aa-e555-4c5e-8ab2-fffd9ad17a30	f	_? Oh yeah. There's porn about that.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
b725d9bb-9fd8-4afe-be32-873d4eadf633	f	_: Once you pop, the fun don't stop!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
dbaf5493-3f1d-4ee2-a4aa-25aa4d3de753	f	_: kid-tested, mother-approved.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
d8337e98-ab3e-480f-9e71-e106854863d7	f	_: kid tested, mother approved.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
8d428619-6322-4807-8ded-0be677550e35	f	_: good to the last drop.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
03b8952a-ec3f-405d-803b-98b08b8fbdbb	f	_ would only happen in my worst nightmares.	1	cf526624-d9a0-4f89-84ad-88c963536dd4
aef751d8-c8e8-406b-a29c-c8208438817f	f	_ is a sure sign of mankind's decline.	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
03cb0ee8-5e94-41b5-8e27-22a685e8bbd7	f	_ + _ = Hipsters	2	00ced41c-e229-42f7-8b93-46b19aeb43cf
877001d1-8121-4f80-8706-255c22318584	t	Your weird brother.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
88a64446-87e8-44d8-99f9-61bccf342d6b	t	Your mum.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
36d19b7f-e5a7-410a-b9c8-288e3c871147	t	YOU MUST CONSTRUCT ADDITIONAL PYLONS.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d933c848-5cfe-4204-8ce7-fdc953fddcd6	t	Yelling "BABY KILLERS" at boots in an airport terminal.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec913520-3914-4090-a0e0-ce7cc1690f32	t	Xenophobia.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dcaa5940-5e5e-457b-befe-4bb6dac6fc12	t	Worshipping that pussy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5aebfd44-4ba6-42bf-88d5-5f3954e7585a	t	World peace.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
af28d941-9718-4b0e-b6ae-b1c7ee8c682a	t	Words.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7b14b52e-4c5a-4066-bc81-8eb016b7f7f6	t	Wondering if it's possible to get some of that salsa to go.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
faa28b29-3fdd-40c5-aec8-4e310467b467	t	Women's undies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e5c233c9-4501-4beb-83e0-50d9274d8c2c	t	Women's undies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c5cd5446-1e6d-45f7-838b-0160d323dd70	t	Women voting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ad386b85-15a1-4f6e-87e2-9fe8ff58511a	t	Women of colour.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e32fee2d-96f7-4e9b-8356-afa298141000	t	Women of color.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b99c5992-f86d-4148-8467-250811ca6d91	t	Women in yogurt commercials.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cb861b7b-f1db-42eb-9a85-592f65974c97	t	Women in yoghurt commercials.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cbb92266-425c-45b8-a371-4602afda4387	t	Women in yoghurt adverts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d161857f-01b5-4c28-aa38-df0791b2b6e0	t	Wizard music.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
63f29dc2-feb5-4f4e-b798-5c1970410aa1	t	Wiping her butt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
63a41ca0-ca9f-4d62-97e5-c2d67b161e8f	t	Wiping her bum.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f03218ad-edc3-4125-903e-f5ad787be09e	t	Winking at old people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4c197d01-1b09-4746-8ca3-115337c30e79	t	William Shatner.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
34eafb7f-b77e-4f63-90f3-9c01cd89d2fe	t	Will Smith.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0c79e473-0ef2-4244-a468-730c12fbb50f	t	Wifely duties.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
817189f1-3ee8-4e74-8dfb-f1ba5f7b8ebd	t	Whoever the Prime Minister is these days.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e9a6e5bb-f0aa-45f6-887e-de37aff9cae6	t	White-man scalps.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6b754c4-21fc-4c0d-97a3-ba745b2c4c33	t	White privilege.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
753907ae-92fd-4fb6-b07d-185648a6c20c	t	White privilege.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
331d7fe9-2cc1-432d-8cea-22e72a248657	t	White power.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3bf68797-b704-4bfa-a214-02a7fa5c0900	t	White people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1f744181-d01a-4560-b311-129b98ac1d20	t	Whiskas® Catmilk.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3b2810ae-46d1-4952-9c08-dc45e52fa96c	t	Whipping it out.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b03f769c-be75-420a-86b5-f1dbb64593a7	t	Whining until you get your way.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7c115ba6-f79c-4adf-b3f8-1e637f7122e3	t	When you fart and a little bit comes out.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
85640ad7-3d3f-46ea-8752-f386f3cc4d26	t	What's left of the Great Barrier Reef.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
01cd5015-5144-4081-9c86-0868712089c6	t	What that mouth do.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
63578b00-9505-43de-9f95-0c9dd05bd12e	t	Wet dreams.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
03cc513d-9a68-47f2-8da5-97be3c452a66	t	Wearing underwear inside-out to avoid doing laundry.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
69c1b300-78c5-498b-a8b4-7156fb60a554	t	Wearing underwear inside out to avoid doing laundry.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
392ad523-6fe8-4ba1-8760-8f71dcf17e49	t	Wearing Blues under your Klan robe.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
769e5e4c-9f94-436b-95b7-2d02f4977d21	t	Wear lip gloss on my anus.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d72611ca-72f4-4f58-8b22-1ec7fea11494	t	Waterboarding.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
659516a2-a241-407f-a84b-3c3019558ebf	t	Wanking into a pool of children's tears.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4c3158d8-22e3-4398-9d95-a5636268125a	t	Walking in on Dad peeing into Mom's mouth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f0a5ca7a-d659-4e66-83d5-34b07148c4a3	t	Waking up in Idris Elba's arms.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a5bcfda3-a759-43ea-8fe4-e03dd2bf2509	t	Waking up half-naked in a Macca's car park.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f368a111-101c-41af-8282-9c05de8d4596	t	Waking up half-naked in a Little Chef car park.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
59602a7c-2a59-442e-ada2-9192a906340f	t	Waking up half-naked in a Denny's parking lot.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
29e8f4e3-6ae7-4f1f-b027-13690064c493	t	Waiting till marriage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f5d05d1-3cb1-41e4-a4fb-491c6c0bf1ef	t	Waiting 'til marriage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0efffad0-bf5c-4185-b004-a5fbab8cdfd9	t	Vomiting seafood and bleeding anally.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7a608a62-bbeb-44cc-9bed-80cdcaebaf59	t	Vomiting seafood and bleeding anally.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ac365530-7f16-445b-b552-425a23b05019	t	Vomiting into a kangaroo's pouch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9146ae3c-0249-49e1-b95d-c9e86c8c20e5	t	Vladimir Putin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fb436fd4-498a-49a3-ad45-f2992ddb51ab	t	Vikings.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a304ba4b-67e5-4a0e-9ba7-8d5f4587a75e	t	Vigorous jazz hands.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec271901-589a-4a4b-acce-5a8459db80ea	t	Vigilante justice.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
18f562ee-6eb7-4d9f-a07e-310a1e14f67a	t	Viagra®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cffc72f1-530c-46de-9cf6-ab9804b1e970	t	Vehicular manslaughter.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4565a879-dd61-4308-a8f0-7c319911a619	t	Vehicular homicide.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
32e159be-14d0-4c14-bdd7-50c8a5e790d0	t	Vegemite™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6128eef-8af3-4ac1-9cdb-0d531fe2141d	t	Used panties.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
de242039-7ff5-42d4-9747-97a328bf27bd	t	Used knickers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7deb92cf-22a3-4bb0-9129-b4cdc2b18aab	t	Uppercuts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d6f3515c-2914-47ce-8741-38fbdb81e312	t	Unfathomable stupidity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9b97ba27-3494-48cf-a232-71d2739e619a	t	Two midgets shitting into a bucket.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
072afc39-0f39-4732-bfb9-f43bb5ae29f2	t	Twinkies®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
04176fdf-02c0-4cd9-9f72-5ddf0b907424	t	Twenty tonnes of bat shit.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
43865e0b-658e-42dd-bb3c-070ba748d459	t	Tweeting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7a89416f-1161-45a5-b224-536af433e180	t	Tripping balls.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5bf3f3d6-9489-4c01-9f5d-c8421ced52c7	t	Trench foot.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
36aa4fbf-5be7-494f-af37-4e57495bb17b	t	Touching a pug right on his penis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4899f0ed-7b71-4c87-a9df-7a9232c34381	t	Total control of the media.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d07edbcf-be49-496e-aaef-63fa21afcbf4	t	Tories.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1ece91be-bfac-4fcf-83c1-31e02b3e0c27	t	Too much hair gel.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
28aa232c-36ae-43f6-9b1f-257fc1ab8547	t	Tony Abbott in budgie smugglers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
62b77c61-e1e9-43ce-94db-dc3415ad0a5c	t	Toni Morrison's vagina.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bb5ad794-8d26-4a22-bade-5bd9163245b9	t	Tongueing a balloon knot arsehole	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
187ce85f-1ed5-4603-b0ce-9d98554313dc	t	Tom Cruise.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b463c6d6-ab80-4389-9eef-e8954843ce0c	t	Tiny terrorists	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d79b4b32-7178-44a3-894e-e8feeb4e9001	t	Tiger Woods.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea9ee80c-75f9-421e-abac-4462d47ffd30	t	Tickling Sean Hannity, even after he tells you to stop.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8da017b8-6607-436d-b6e0-42d2fc80ea29	t	Tickle Me Elmo™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
265598fc-a90a-4355-968b-91837ed558f8	t	Tickle Me Elmo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0c53961f-c3b8-4c48-9211-ae175827383f	t	Throwing grapes at a man until he loses touch with reality.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7a0f91bb-f7a9-40ed-bcd2-bbbb60da22a8	t	Throwing a virgin into a volcano.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4d93ef16-e0cc-4856-99f2-0acd4d9099c3	t	Three dicks at the same time.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f61df463-f772-45a0-8508-3c8152c7411e	t	Those times when you get sand in your vagina.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a0c136b4-37d9-4d54-b84a-9e74aacf5151	t	This year's mass shooting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a2ffb038-d29b-4e54-beeb-99d8b07b9ac2	t	This month's mass shooting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e65cf1d5-25cc-49cc-b8a4-0af3cc095d47	t	This answer is postmodern.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
92e8a43b-1349-46ef-ba3f-7f40ff0a79d6	t	Third base.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3279b3e4-54d2-4d3e-8ce5-2cbb19384298	t	These hoes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6aabad67-e59b-4328-9f8b-9acff250245a	t	Theresa May.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
15ce5312-dd21-4474-b6fa-277b2f9b0ee0	t	Therapy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c9b241a5-2103-4ee4-9dca-81a9116788c2	t	The wrath of Vladimir Putin.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
10ba954f-ab18-45bd-a7f4-cacb5c83ad2b	t	The World of Warcraft.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a84d59e0-4cfa-42bc-a98a-1743091671b5	t	The wonders of the Orient.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6f6b6d3-547e-427b-9c50-fbd26f710306	t	The wifi password.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
486b3811-0393-49ad-88c5-e3751d26345a	t	The White Australia Policy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
92d353f9-2add-44e8-bd0f-383813b37216	t	The way James Bond treats women.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1f413e0d-adca-4b35-b192-a00e58b31377	t	The Virginia Tech Massacre.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2b2808f9-848d-42bd-bbbd-a672022ab216	t	The violation of our most basic human rights.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bec6741b-8922-401e-ac23-bc04f23278b8	t	The unstoppable tide of Islam.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
be7945fa-a0b2-4c1b-b2de-01dba399fc0d	t	The Underground Railroad.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
69d9fb4e-a650-42d8-9672-6b64738f034b	t	The Ubermensch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
13c3ea99-d185-4d39-b69f-59249cf05402	t	The true meaning of Christmas.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
259027cb-bc46-4da5-8482-093984b19ddf	t	The Trail of Tears.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
93cc08bd-541e-4168-ab68-08d38845193e	t	The total collapse of the global financial system.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e04abc73-1bf8-4360-a0ee-1a2c7faa6876	t	The token minority.	\N	f70880d6-c22c-47d9-b076-fd9176eb4e0b
0ed91974-013c-4d46-93a5-b8217f1076bc	t	The Three-Fifths Compromise.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5d45b9d-aa54-4770-8554-c779b2663374	t	The Three-Fifths compromise.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
075ec57c-4612-43f5-858a-08f009e14a59	t	The Thong Song.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
71a225e9-a6d6-45d7-aba9-481e38e1b707	t	The terrorists.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b3524a9d-4956-4803-bbec-d9f8e1164ed6	t	The Tempur-Pedic® Swedish Sleep System™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4c7d6293-cc49-4757-bdb4-dc9c91b3118a	t	The taint; the grundle; the fleshy fun-bridge.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e8f973c1-dccf-4ffb-87f4-30f1086ebdf7	t	The Superdome.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
89aeacd6-602e-46e2-90c9-f039ad74f809	t	The sudden appearance of the Go Compare man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9a0f1f03-7f80-40e2-ab0b-a264613d8774	t	The Strictly Come Dancing season finale.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ffbb621d-d89d-4264-a60a-b112a3c1517c	t	The Stig.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7871907a-32b3-4067-966e-380735a51da8	t	The South.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8a580b7e-5353-4e02-9145-5032925d3b1f	t	The Smell of Primark.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
23237536-2c8d-4982-a67f-c157affb3461	t	The screams...the terrible screams.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
24e677e4-9aa9-4127-a82b-1fc416b82c00	t	The Scouts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0756dbe7-cc6d-445e-af25-3e4cad2b3660	t	The Russians.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9466dff8-1085-478c-97af-067ca78951bb	t	The Royal Canadian Mounted Police.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cad86bf5-910b-4f03-8dc1-e4dc1354c466	t	The rhythms of Africa.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9a24179b-a1f5-490e-8564-95f1b2fe4138	t	The Rev. Dr. Martin Luther King, Jr.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d729350-9217-4f3f-8788-16974e53f5a9	t	The Red Menace.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
93c78ab3-f95f-4bdc-97c6-badba4e85cdc	t	The Red Hot Chili Peppers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
79d6c64e-7a77-4337-b576-2c3c983f15c8	t	The Rapture.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ce555657-d380-4985-9910-bb0b34c04fc5	t	The prunes I've been saving for you in my armpits.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2189de5-3a48-433d-9a37-62e90ded8f59	t	The profoundly handicapped.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ebc840fa-ec1d-453f-b0c6-6d2f14fc8e7a	t	The Pope.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1dd8b3f7-4d57-462b-9a37-a1b4c4f73595	t	The plot of a Michael Bay movie.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
13faa2dc-e403-4938-9caa-ecd54d5cb688	t	The placenta.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9dbbce91-75c8-4965-a380-387f35767a3d	t	The pirate's life.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f1e3dd45-c1a9-491a-aad5-3eb7758918ed	t	The petty troubles of the landed gentry.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
02cf95cb-4466-45fe-9e9b-21b7a8689763	t	The People's Elbow.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a5e6240e-149f-4a1b-aa55-887a29b762f5	t	The penny whistle solo from "My Heart Will Go On."	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
33d1a97d-43e7-4453-9111-0b29897722bd	t	The Patriarchy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
082e8c8e-afbf-4eb8-84f0-16c455f8b712	t	The past.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
edec492b-f865-4c9d-8df6-d2a2be4412a9	t	The opioid epidemic.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
3cfdc699-b48e-4f50-831e-8ba60a300ecf	t	The only gay person in a hundred miles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
451644b1-bdb8-4c39-900a-7e56a1f9c0ba	t	The only gay person in a hundred kilometers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
83b3707d-7009-4658-9368-e307324023b7	t	The Official Languages Act. La Loi sur les langues officielles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e3defcb6-1bdf-45e3-8c39-c08dfe42cb27	t	The North.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fb221f6c-88e8-4e78-a527-1c9be791424d	t	The morbidly obese.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f25a86ab-941f-4a98-bc76-08025bde1e11	t	The miracle of childbirth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
10352eca-5b2a-41d2-9af2-cb24321b6fe4	t	The milkman.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b36bd75b-c8eb-4e81-94a7-57d9f75ff43d	t	The milk man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
437f1fc5-226d-4d2b-a751-fbf0c2c3af8c	t	The Make-A-Wish® Foundation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5df2834a-da3d-421a-810c-1529e056b8e5	t	The Make-A-Wish Foundation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
83d1b46e-dc64-4f35-9b6f-810f1b126f37	t	The magic of live theatre.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
85337bb8-c4a6-4135-bdae-f715dc11d42d	t	The Little Engine That Could.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d7852d9b-2ff8-4c67-84d3-c65b4f76b6f7	t	The light of a billion suns.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5a988ddd-1900-479f-95eb-1eff45913068	t	The land of chocolate.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f4c73f8a-773c-4876-8130-1bbcf579ef54	t	The Kool-Aid Man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6ffb8aa5-ef8e-4f7f-b4c9-91a4024e1973	t	The KKK.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d7d30a20-93db-44ea-b1ac-f49a889c0525	t	The invisible hand.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ff85de13-22a5-486c-aba2-c4c90bb1858b	t	The inevitable heat death of the universe.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fe002df8-b054-42c8-8896-0d0553274a4c	t	The illusion of choice in a late-stage capitalist society.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cc7b99ec-950d-4942-9600-b5c7956ee584	t	The Hustle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c9b36906-971d-4a45-8a49-0faf04bc9b04	t	The Human Centipede: infinity edition.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c6b6867d-1469-4b2c-b4c9-1037704565e6	t	The Honey Monster.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2889033a-135f-417b-90d8-826c8f8f6370	t	The homosexual lifestyle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7bcf4f6e-9c42-4e48-aaa9-c59aa8256f10	t	The homosexual agenda.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fb08eb4f-c155-4480-9669-da17e0c48b4d	t	The Holy Bible.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3299325e-a358-4a49-bab4-05e869554052	t	The Hillsborough Disaster.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fa710910-9a64-4a9b-a54c-225eae3be433	t	The Hemsworth brothers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
833b13c3-a0a7-4450-bd3a-e3aadaec349e	t	the heat of a luxurious bed	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
adb11fc6-1e9d-4978-8297-d9c9d9dc84c9	t	The hardworking Mexican.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
847e648a-16e6-4ea4-921b-a611177d040b	t	The Hamburglar.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f6c2bd0b-bf7c-4a0e-a07a-4f041316a87e	t	The guys from Queer Eye.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
45cd4851-7e49-4202-b3f2-7feac1bbb519	t	The Gulags.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
08dbd77a-ce82-40bd-8a02-e63991a88599	t	The Great Emu War.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e74b92e7-8d37-4b75-8ec9-1b9709677c1b	t	The Great Depression.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
eb2aa212-442e-4a62-b94d-2c942a36104a	t	The glass ceiling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c2f56c0f-c1be-4df9-937e-6a0666c89786	t	The gays.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2b696fc-c57a-4237-9fcc-8417b9c772a5	t	The French.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ed950769-b782-430c-8900-95a67ccf5c2c	t	The Force.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
59d3f280-5ffc-4123-bff2-9d71e17e83e7	t	The forbidden fruit.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
26eda672-a42d-410f-886b-960809172dce	t	The folly of man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3c02e43a-d971-44bc-8d0c-3c3218f00ab0	t	The flute.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c022d936-8e5b-4607-985c-6953bbb677bb	t	The FLQ.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f2c485e2-c52c-4066-97e9-dac7ef46af0a	t	The female orgasm.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c3c766e7-cafb-4355-9ff6-fc6c7db291d2	t	The entire Mormon Tabernacle Choir.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d9f5723b-6c9c-48f2-ac3c-57b51ff383e1	t	The entire Mormon Tabernacle Chior.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
6cb6eea3-3e4b-4d72-8352-7b9ed267a76d	t	The entire cast of Downton Abbey.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e21d2418-56d6-4cb3-b01f-3f3a8d56f7a3	t	The end of days.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1b2b0ca9-7f6c-4440-b290-bb8f212b2319	t	The EDL.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4700c111-526c-4960-a1be-8b62a88a4807	t	The economy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
71a4d9fd-87ae-46ce-907f-5d05cdf7b139	t	The drama club.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
51b40b56-17be-42d8-8e42-3b4098af51e3	t	The Donald Trump Seal of Approval.™	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0e46ebed-89f8-4790-90d4-15d083ea94e1	t	The Devil Himself.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e85c03a5-bcc2-406d-a854-78e10be7d806	t	The deformed.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dab49a53-6d47-44b6-bf24-61b650bf0ca3	t	The Dance of the Sugar Plum Fairy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4b085165-cf9e-4f28-9c50-c8e64c9302bf	t	The Dalai Lama.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
38e1a7f2-e760-4670-8f7b-05352b7b6be0	t	The Daily Mail.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
728638d8-fd7b-4f75-a15b-0161a9c34fb4	t	The crazy, ball-slapping sex your parents are having right now.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c9a934eb-f621-4c8e-8ed0-e29c93c641c3	t	The cool, refreshing taste of Pepsi®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
840dc2c7-a0cd-4406-bf32-3339d7cef0a2	t	The cool, refreshing taste of Pepsi.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7d70f088-9321-42b4-923b-9cc00495de7b	t	The cool, refreshing taste of Coca-Cola®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
178a8aa0-2236-4288-a126-3faf73373c97	t	The clitoris.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
da43ad2e-f27e-4a3b-af96-b7254e535576	t	The chronic.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
76d62e5e-58e2-4d31-858e-0e6b9d4c0b2f	t	The Chinese gymnastics team.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3ff20627-8234-4d18-beb5-aed9d7f262e3	t	The Care Bear Stare.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d92e4585-69cc-44dd-8aa1-d2541f05bb93	t	The bush.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5c082079-a5bf-4c60-8fb6-a506a3d75d56	t	The Boy Scouts of America.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d3e65eea-424e-4ab0-9d65-eba02083cfbd	t	The boners of the elderly.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9f2f94d8-1d08-40d5-a08f-5dc1d4e3ef8b	t	The bombing of Nagasaki.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
43829e6d-b71a-4e9f-8de7-4d6cddc6172a	t	The BNP.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4374b49e-a982-4239-a166-1d1605df22cc	t	The bloody Welsh.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4d39886e-13df-4555-b896-09ce086fb075	t	The Blood of Christ.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
958f8bb7-c4bf-4c38-90c6-18003b568bb7	t	The Black Death.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bcd6e021-eb3e-40f0-89c1-c98e98d56f3a	t	The big fucking hole in the ozone layer.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5a8dff31-2686-48ca-8061-0ec55f1184b6	t	The Big Bang.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a7ca46ce-d385-48d5-a02a-99df8e6b6409	t	The Bachelorette season finale.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e935e69c-da63-463a-9619-3f6584b01417	t	The baby that ruined my pussy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d7429860-de32-4b7e-9322-622dbac7b6e3	t	The art of seduction.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f1140772-5c92-4955-8a80-8523c51d88a8	t	The arrival of the pizza.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a454dbe4-1cbc-4bc9-a370-9a682dd7df0e	t	The Amish.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1e84417b-54d8-460e-b3b2-8fc8279636b2	t	The American Dream.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
97670a62-329d-4c76-8f36-1acba6b085b8	t	That thing that electrocutes your abs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
13f68ea6-b3b1-4374-9fa8-c67fb4eebaae	t	That one gay Teletubby.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4180eb50-4165-4168-8b59-61400269801a	t	That awkward family who thinks it's "cybersex Monday."	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
96c14b84-f672-44e7-bbea-3dfbf981a37a	t	Testicular torsion.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9d3c8c87-ced3-40b7-a7d3-dc9eae40c6a0	t	Terry Fox's prosthetic leg.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
279b96f2-b444-4229-a719-a3e2b1905aa2	t	Terrorists.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
174e664e-273e-4c77-8a6d-e811f3983147	t	Tentacle porn.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
056be258-ce57-4d91-bbdb-c9761d229e78	t	Telling a shitty story that goes nowhere.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cb1182e6-e373-4615-9d61-18154f561ae1	t	Teenage pregnancy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c08b4ff4-ae62-49b8-9a51-d8453f2b1daf	t	Tearing that ass up like wrapping paper on Christmas morning.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
10e02947-89be-4d45-97f3-303f68d5becc	t	Team-building exercises.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20d17bdd-0436-4911-9a7f-86b904ae4e53	t	Team building exercises.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
85a81bce-546d-4364-af0c-740365d216f7	t	Teaching a robot to love.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4b7a68b7-e165-41a8-ab3b-69550352498f	t	Tasteful sideboob.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a362d799-2679-484c-af35-3ae5c74dad62	t	Tap dancing like there's no tomorrow.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6644fd01-c3bd-48da-a498-761ad4b23686	t	Tangled Slinkys.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9b943439-7c23-4795-8764-2779aa3c8a91	t	Taking off your shirt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4fa9df00-11da-4a0e-808f-49c8122ff745	t	Taking a sheep-wife.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9944e5a9-fc70-43ba-8d7c-7af91dda4f87	t	Taking a minute to really unpack what Shakespeare is getting at in this scene.	\N	e5ac7bce-beb2-4fc9-bdd6-e6b93052205f
1487851c-82e9-422a-b92b-3005126adc95	t	Take-backsies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ae11443b-ea5a-4616-9d1c-18f7eaa17bf1	t	Syrupy sex with a maple tree.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
08c6d4ad-5f38-4a9b-8328-c18587da8e0c	t	Synergistic management solutions.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4e90d6e4-c458-45d7-b454-8d3cfdbaf118	t	Swooping.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b75daf4f-0e79-4e39-ad63-97de289ef4bd	t	Switching to Geico®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
54f8bca7-a7d2-4379-b840-55f5bc21e78f	t	Sweet, sweet vengeance.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d38850da-d4ae-456e-b14f-5d5ba03c4e8a	t	Swag.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6a135217-253b-4a57-b6b1-d2c1f170859e	t	Surprise sex!	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b8968d91-6b0c-410f-84a8-2b8f7b95268b	t	Sunshine and rainbows.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
430085e4-b94d-468d-b672-907af6dfed2e	t	Summoning Harold Holt from the sea in a time of great need.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6444356a-9159-45ca-ba0c-61908fbecb6f	t	Suicidal thoughts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
270e7bf8-9c60-4e90-8a94-33da1bb3c344	t	Sudden Poop Explosion Disease.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
1b5593de-8c2c-4dce-9a6e-79cd30b6287a	t	Sucking some dicks to not get drafted.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d93d856a-218a-4a30-837e-50d1c8a05f67	t	Substitute teachers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5f56c736-fdba-4467-a99f-8347b9ded68b	t	Stunt doubles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fa83a7f7-2d15-40dd-a3c1-c7e1b9386e8f	t	Strong female characters.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ce2f8c9f-310f-4010-b6c9-8268f0051206	t	Stranger Danger.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fda8c2ca-d437-43ad-abe2-71ce55a114b6	t	Stormtroopers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a6c463c9-d025-4206-8781-76f2b2acf943	t	Stockholm Syndrome.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20b3528b-aa06-44a6-ad54-ab2a4c16439f	t	Still being a virgin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8e04ce71-887b-460c-a84b-985be7d7ff35	t	Stifling a giggle at the mention of Hutus and Tutsis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d707e8f5-9d9b-4c26-975e-6347f0f241d3	t	Steve Irwin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
38ede663-ad46-414d-98c6-1c298fa07236	t	Steve Bannon.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ae3c4160-bb16-4be3-88a4-8473ed04ee39	t	Stephen Hawking talking dirty.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a37d99aa-d0b7-4a75-a73b-a67975c79ca6	t	Stephen Hawking	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
c2edde77-5b73-4386-a271-fe33b5a2c836	t	Stephen Harper.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9839d1c3-9789-4590-b5c7-f89ea11484ba	t	Staring at a painting and going "hmmmmmmm..."	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a74bcefa-893f-4ad6-8a18-55d9883b6d06	t	Stalin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7818cefa-792f-4133-9f30-0a465c3f7218	t	Spontaneous human combustion.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e130e8bb-d49b-41a0-b314-1169094ce99f	t	Spirit Airlines.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cb6e88e8-375a-43e2-84ae-613c545e67ea	t	Sperm whales.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
916eb52a-07c8-4e24-b060-3850409cb53b	t	Spending my parent's hard-earned money.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
20319f86-b55b-48f7-bdb3-b3a32df67ab6	t	Spectacular abs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
909c2f15-60e0-45e3-a612-3d0ecb958c25	t	Spaniards.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
892a5cb7-013d-4891-96b2-00c47fe5a8b7	t	Spaghetti? Again?	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
68833f75-b85b-46cd-a476-591ade06999f	t	Soup that is too hot.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0a443798-8963-4f7d-9e78-7538692c7c6f	t	Sorry, this content cannot be viewed in your region.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
64482058-a38b-4d07-9399-964a61faa1cc	t	Some really sticky Kentucky Durban.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f2de3197-c568-415d-b7cd-d4fe99452c81	t	Some punk kid who stole my turkey sandwich.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d1b9fae-2ae1-48a0-84f9-1fe2b5a93907	t	Some of the best rappers in the game.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2b2a1f6c-6405-44b5-af72-9f29c66f0506	t	Some kind of bird man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4da77d3e-a942-4e8b-bb18-abe1dd2fc30e	t	Some guy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
79b6f15d-5b59-4d0a-8ab8-daa7438cf360	t	Some god damn peace and quiet.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2799f55-8716-4483-a6cb-972950cfdcbe	t	Some foundation, mascara, and a touch of blush.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
61d0cf30-a7b6-4544-96ba-39cefceb47d9	t	Some douchebag yelling "More Cowbell."	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8f206bec-38eb-47a6-a8ac-163f1d36f10e	t	Some bloody peace and quiet.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ae08a02f-d130-4cad-ac78-7d3331bd19c1	t	Somali pirates.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9aec47fd-e7bb-418a-a7bb-b05b9ddd106f	t	Solving problems with violence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
af8eb78d-48f3-4b76-91c4-8163019fdcac	t	Soiling oneself.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7bece08e-7a79-4318-b17a-62004ffcea9b	t	Soft, kissy missionary sex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6915e4d8-90e2-4312-9fe3-f033ee2cb3cd	t	Sobbing into a Hungry-Man™ Frozen Dinner.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fcd887d6-760b-4f8e-a09d-a73dcf81d815	t	Snotsicles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
70947b6e-2ed0-40a0-beb1-6f1adc786b96	t	Sniffing glue.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f65b8157-f032-48ba-8763-0d78798e155f	t	Sniffing and kissing my feet.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
81bfb2b0-0154-4674-a60d-913ef0bbffb7	t	SNES cartridge cleaning fluid.	\N	64720050-2c9e-40ab-8510-6b57681cc5be
cc84e175-bb98-47bc-bcdc-f90edce04183	t	Smegma.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a7fcf14d-5cea-40b0-9c82-ce7e852e6b70	t	Smallpox blankets.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
da28967f-e2cc-4c5a-99f9-6b99640070a9	t	Slavs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
62dbf1f7-5beb-4762-8fca-71eec8265ac9	t	Slaughtering innocent civilians.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ee734a04-070b-4ad1-abcf-317c2958e715	t	Slapping Nigel Farage over and over.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e07da6fa-beb8-4510-954f-ecc96ffb7394	t	Slapping Nigel Farage over and over.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b351afaa-e25b-48e6-9cde-f7c6b36e213c	t	Slapping a biscuit out of an orphan's mouth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7fa65d55-c921-48ed-a424-c4a4c5cc34b3	t	Skippy the Bush Kangaroo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a61ae4f0-e583-47a8-a3e4-9f85ec13ae7e	t	Skeletor.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b7e8e0af-c123-4568-9ce1-6d450aa22db7	t	Sitting on someone's face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9e64affa-71cf-488c-9c24-866f638de8e7	t	Sitting on my face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
850d635b-b2d2-4124-a686-b8fbf4bce746	t	Sitting on my face and telling me I'm garbage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e4359574-26c8-4d49-8487-60ec7469992d	t	Sipping artificial popcorn butter.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7984fd60-0edb-41f2-8a09-05cc57468ad6	t	Silence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
45641f26-2d43-42f7-852c-dfea934f175a	t	Sideboob.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
28da58e8-2633-4230-a28a-aa22981894ee	t	Shutting up so I can watch the match.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5c8df831-61f2-48ef-b3ca-1c78b27f5d9c	t	Shutting up so I can watch the game.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e8c22af7-c7b7-40d7-981b-6ded0525d5d7	t	Shutting up so I can watch the game.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1dfacc8d-28a5-460e-ad30-15e4813f8c81	t	Showing up to an orgy for the food.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1b0d788b-8d03-4c02-9138-56cdfe63eae6	t	Shorties and blunts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
28d1e979-81e8-4a64-aa13-9a56b73c1588	t	Shitting out a screaming face.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
4e141c72-5ed7-406d-bb4e-8f91d0ece7ca	t	Shitting out a perfect Cumberland sausage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ac5145e2-9cb8-4147-bc55-f1275bf56927	t	Shipping convicts to Australia.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6b913340-2425-441d-a89a-26cc94f52e86	t	Shiny objects.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9e5dd997-10e0-4328-b3fd-04452e4e9814	t	Sharing needles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
11720d3d-970d-4928-8a0a-fa33928e8123	t	Shaquille O'Neal's acting career.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d845d941-a5b4-4266-8d38-08c185a2db68	t	Shapeshifters.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
1a8477ca-0ed9-43ff-a741-ee0c762cc6da	t	Shaking a baby until it stops crying.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a1908556-9b82-491e-8e1d-79cee2b63ce8	t	Sexy pillow fights.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
29662f71-a3d1-49a4-b7b3-6f16bcb59cbb	t	Sexual tension.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dd9e082a-1c55-4278-aef3-f1adb3955fec	t	Sexual peeing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
44fefd5f-5d6a-4ccb-ac81-6394b29bd3bf	t	Sexual humiliation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
25d1f9cf-0e73-4cc9-ad95-52dd21025e35	t	Sexting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
228f85ea-5ee6-4894-bb19-45fff1b8f6d6	t	Sex with Patrick Stewart.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8ad0600c-314a-4b76-b6ee-9e32428674f8	t	Sex with animals.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
595c685a-2e05-484b-be6c-b3e792b4cab9	t	Seven dead and three in critical condition.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5b20ed9-b9f4-43d3-9523-071dd5999a8d	t	Serfdom.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
91a7d63e-60d6-47b5-891d-524721ad9730	t	Seppuku.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4f05e53c-5c60-4222-bf02-3d4d6943cb39	t	Selling ice to children.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
352e0dcb-7cf4-4f5c-bc98-3291e7fc1fff	t	Selling crack to children.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cdfdc83a-b355-4ab5-9df8-c44e45dcc674	t	Self-loathing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
209ba755-c371-4c7d-b88d-722c61ff14e5	t	Self-folding lundry.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0eb760f5-8bce-42d3-86eb-5d8d667e3314	t	Seething with quiet resentment.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
db57f19c-d9d7-43df-a104-322182069c00	t	Seeing what happens when you lock people in a room with hungry seagulls.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
2eff156c-22a1-4e21-806b-55d3e65fd618	t	Seeing my father cry.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
909eb2ae-bc4b-4d33-94ab-9ef6537e3b96	t	Seeing Granny naked.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
12af2fb7-c745-453a-b524-ffdad9c3e6d5	t	Seeing Grandma naked.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a8126f88-eabc-4459-92a6-6aef8637946a	t	Seduction.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a8fc0e26-5646-4bd3-98c8-6cdbc946b92b	t	Sean Penn.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
229c8dac-20d0-4878-9599-eb8d335d438b	t	Sean Connery.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a6b724f2-c21d-4882-b575-f1ca3b7fc2fc	t	Scrubbing under the folds.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
384cce0e-29a5-4fd0-9fa2-a3c92784ccae	t	Scrotum tickling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9d191ff4-9d0c-4852-b8b9-925ad473e64f	t	Screaming Orgasm	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4f9a38ed-8b16-477f-8336-f670584016ef	t	Scousers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e68763fe-1a7b-46ea-a113-58abe95fb3ed	t	Scientology.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
eb763edd-f5ee-44e4-9b02-86cb827d513d	t	Science.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5dfb2c85-f60e-4707-89c8-6f3908c4ed57	t	Schmirler the Curler.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e973004b-4496-4120-b534-ba57c5a4f645	t	Scalping.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
9f2d84c8-5d40-4d7d-9566-32743880896c	t	Scalping the Milkybar Kid.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e8c521db-87d6-4e5f-bc85-3ac15b5b24ca	t	Saying "I love you."	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e74a75e5-373e-47e1-a8b4-ba8b6aed4ca5	t	Saxophone solos.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8a780463-f82e-472d-bd55-c3b3ac46c0db	t	Sarah Palin's crazy pills.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f99cabf2-d372-41f5-8838-41018d49318d	t	Santa Claus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
91740745-9cee-4ab2-85ab-e725a7a0aded	t	Sanctimommies	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d205414b-854a-4cb6-bd28-edcf64bd5c15	t	Same-sex ice dancing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
40264690-529e-4fcc-89e0-180ef220fb68	t	Ryan Gosling riding in on a white horse.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a3d72e5b-f807-4ca4-92ee-52028dcb8579	t	Ruth Bader Ginsburg brutally gaveling your penis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3c211523-c5d2-49aa-a9ce-62b507d01f5d	t	Rush Limbaugh's soft, shitty body.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
88a0f39b-3fcc-40bb-bcf7-05ec12acc7c3	t	Rupert Murdoch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f6eece0c-6eb7-4235-b70a-a77cd0499966	t	Running out of semen.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5c40313-3be3-44cc-b132-29c9e34f331e	t	Running naked through sprinklers.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d94bef5f-a0e1-40b8-9a80-94bd9dfead31	t	Rubbing Boris Johnson's belly until he falls asleep.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
266f3e36-f275-47ad-bfbf-d08e63a5ec32	t	Roofies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bcb467b4-af76-4603-89f6-ff7a26177d08	t	Roofied Punch	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1a2a0c10-5ee0-4335-9d44-01d0e15a30ce	t	Rohypnol.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4a7dd14d-d65c-4955-b712-279fe656db46	t	RoboCop.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2c29ead1-96ed-4892-9193-f74862b3ca6d	t	Robert Downey, Jr.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2719d35-7c42-4ccc-a583-660de4ee5da7	t	Robert Downey Jr.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5fdffa90-06ea-41cd-ab61-f20f547f9191	t	Robbing a sperm bank.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
02efed13-726e-4353-9e35-b429fbcf3d11	t	Rob Ford.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
69e02c06-3277-438f-b6b6-f7c9c76fdfba	t	Road head.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
144cdc46-dbe0-45fd-a715-5e504a964a0d	t	Rising sea levels consistent with scientific predictions.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d4af8751-2db2-4482-9959-c2e334e1682f	t	Ripping open a man's chest and pulling out his still-beating heart.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
2f381082-da20-4f7c-8dfc-e8db033c396b	t	The Jews.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6da6bc56-c054-4363-8fb1-b3d70f343448	t	Ripping off the Beatles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
33e48148-8c5e-49a5-a4fe-a5ca17b46cda	t	Rip Torn dropkicking anti-Semitic lesbians.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2effeacf-cdbb-4ea0-8e61-ed4c88f94d8b	t	Ring Pops™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dc9648fb-edf6-447b-b6fe-cc2ca9a1496d	t	Ring Pops.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bfb543b4-6f41-4a72-aaf6-818270e46caa	t	Riding off into the sunset.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fe47847b-0da6-4152-b4b2-5ffec71eadf3	t	Rich people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
28e88252-53cd-4709-8820-ba082a0377d0	t	Reverse gentrification.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
fd5c8ba5-caf1-458d-b633-bfcccae8fa3d	t	Repression.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e15d6ebd-eb7a-436c-a35a-4888373cd111	t	Rehab.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
69cf8412-8755-4d22-8908-c39c9312ef67	t	Rectangles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
eb63bae5-233d-412c-808c-8a77e2734b76	t	Re-gifting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7bc2f52a-2364-44db-ab7c-bdcbb510868b	t	Raptor attacks.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8fa87e05-8656-40a0-825f-68821ec2abe7	t	Raping and pillaging.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
af137244-05fc-47c8-aaa1-e9b2bad82259	t	Rap music.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c29ca42c-dfb1-40eb-816c-0ab2d743d5a5	t	Radical Islamic terrorism.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
31cbfa05-9502-477a-a317-c3c9cebed887	t	Racist Christmas Present	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5126a9a0-7b4f-4b5b-86ac-7b56f0ce1505	t	Racially-biased SAT questions.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
64462042-4a65-432b-8ed2-b7da3f783258	t	Queuing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5cb8dfd3-1f23-45af-8f86-ba7a885ded75	t	Queen Elizabeth's immaculate anus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c131fbb2-ab7e-4d4d-a4b4-ae1d6cc5d07c	t	Queefing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1bc48648-3970-40d8-a9d0-432ff95fc7ee	t	Putting things where they go.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2f2eee66-c012-46dd-89d0-4725d9e71cdb	t	Pussy Galore.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
23a00a1c-a908-4265-a338-4bd491115018	t	Puppies!	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d0a599ba-2ed8-465f-a401-5fcc23097cd3	t	Punching an MP in the face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8a48a506-ac71-41fa-ae23-e626658e035a	t	Punching a congressman in the face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
820431c8-c6ef-4e74-a24c-fddf73201e1c	t	Pumpkin spice flavored condoms.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
33f02683-a183-40ad-b946-0893bd20ff70	t	Pulling pits.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
73458683-1c82-482f-885e-baa64d8487de	t	Public ridicule.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
86c34c8b-86a0-43b2-9288-46b6e75ec8c0	t	Puberty.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0245a4da-2b77-4715-98a1-484f0ce534d2	t	PTSD.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2552cccb-64ca-4277-a188-d65d9933d092	t	Pterodactyl eggs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
77481563-e589-461f-89e4-012b02d5968e	t	Prosti-tots.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4d46844f-3d09-41dc-87df-8493b41733bd	t	Pronouncing the names of northern Welsh towns.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
42ea2873-b2bc-4850-bddb-0eb9ce60cbcb	t	Profound respect and appreciation for indigenous culture.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3d32d957-4690-405c-9742-80b8203545a7	t	Pretending to care.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e6dd7c3c-7811-4767-9fca-7becad46e5a0	t	Preteens.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ef51b000-42a4-447b-8b6b-7363ed1c5f6c	t	Prescription pain killers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8de6aab2-6a83-4e43-96fc-4482bee2f16e	t	Praying the gay away.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea8848cd-fafe-4bb4-8bb9-c541708085da	t	Prancing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
98cfc6d3-392f-4cce-9e43-adef6a8708a1	t	Powerful thighs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
46585832-bd11-4e1e-af0b-7751e9c23719	t	Powerful allergies	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
985678c2-e2c3-4406-bc0c-519c572a57bd	t	Poverty.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bbdda26e-af59-4e64-adea-8291bf2302ff	t	Poutine.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
afdb0d41-582f-4cd5-b74e-a8c04ff653a4	t	Porn stars.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a716dac4-944b-4a9f-b614-a5fe174a8c57	t	Popped collars.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
173a5368-14c8-4f7d-b39d-d2d9d927646a	t	Poorly-timed Holocaust jokes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f3aebbc4-a756-49d5-b651-8779ea02ac35	t	Poor personal hygiene	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7291aa25-4334-4701-b023-96782f0b8f05	t	Poor life choices.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6affe3fe-f5e8-4eb6-9060-b46ff7436cd4	t	Poopy diapers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2772dfe-e55f-40b6-88bc-b674fcd2bea5	t	Pooping in the soup.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9ae4b99f-8f0f-48a6-a0e7-dcbfc3c38d93	t	Pooping in a laptop and closing it.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e3f09faa-c256-4571-98ab-570f8a2ffa3e	t	Pooping back and forth. Forever.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec433620-3706-4d03-ae56-8dae47658200	t	Polish People.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1dba40ec-4354-4cba-8c7c-09b9d5a48a44	t	Police brutality.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
88a5f40c-54d9-4501-9d11-075ad95ca64e	t	Playing silly buggers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
097ef500-79de-4dad-8329-4dd2dacdaf8e	t	Pixelated bukkake.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2148c300-34c1-4c8d-9446-04d25006365d	t	Pingers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
74a68d2d-1fa7-4f94-9798-bcef846dc090	t	Pikies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cb43d0e3-bf65-46e6-8456-2ceae6824789	t	Pictures of boobs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3008a414-e4f2-4d66-b0e4-4a16adad3af3	t	Picking up girls at the abortion clinic.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
87b5d6d0-739c-44e1-9be4-e9154842005a	t	Permanent Orgasm-Face Disorder.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
578c49c9-e5f5-4d18-829f-c47964628ac5	t	Perfunctory foreplay.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3c65e4d0-72ee-4cd9-a64e-3a31ac5fcb39	t	People who smell their own socks.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5d22f83d-1df2-4103-af53-24aa826b21f2	t	Penis envy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7ee9b224-3a78-4efe-bb20-dbb36acbdaff	t	Penis breath.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
72011f41-2f60-4052-bcad-600e2eb6e139	t	Peeing a little bit.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
eb2d5a87-3af5-4084-a75a-8b26059d645f	t	Pedophiles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea5b7c5f-01bf-4f5d-a054-8437507ed7f7	t	Peanut Butter Jelly Time.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
394bf221-92a9-4e3f-927d-5b193d86ec44	t	PCP.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
406ae6b2-4c97-4cb9-a961-edec6a07d19e	t	Pauline Hanson.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ce13561a-91af-40ab-b123-73200a5edd9b	t	Passive-aggressive Post-it notes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b40e7e70-bdfa-435e-be22-bd51f9495798	t	Passive-aggression.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ae60192b-d902-4ad4-8a3c-3818127be480	t	Passing a kidney stone.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e980dae4-8dec-4908-9e8b-0860e14298a3	t	Passable transvestites.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4d0a99f5-e21b-49ea-9b46-5a73a42d8633	t	Party poopers.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
39c9c528-e858-4094-ab73-871c1741edb1	t	Parting the Red Sea.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
27d3dfc6-bee5-46f8-bb3d-c053a486e79b	t	Paris Hilton.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b5abab58-4eb9-442e-bdb5-0655e34382dc	t	Panda sex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
819cca65-2e1a-412e-bfd2-28e560b039b7	t	Paedophiles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9b4ea20b-48a6-422b-8ca0-4b7dc44ab303	t	Pac-Man uncontrollably guzzling cum.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d9177827-975a-4651-afb1-42534e8d8c8a	t	Pabst Blue Ribbon.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3213eaef-8985-4cb9-9996-8d115ecfa151	t	Owning and operating a Chili's franchise.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
eefc7d56-8af8-4999-bcc8-f11a87de931c	t	Oversized lollipops.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d6432d99-e933-4265-a2f2-3cc078391f1c	t	Overpowering your father.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6f4aa242-c0c2-4ffd-ba2d-ecad891ca5a5	t	Overcompensation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
da57ae7d-6093-4778-b8f2-b2d490cc4ad3	t	Our first chimpanzee Prime Minister.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b883f222-3ef2-4001-bf44-440124e734f1	t	Our first chimpanzee President.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d6abb15-9137-48f0-87be-5a44609b2e39	t	Optimus Prime having sex with a dishwasher.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
07b28766-5fc8-455b-8cd1-d2dc863aeb57	t	Opposable thumbs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f9af149e-ffc0-43dd-aaa1-23cab18c48c7	t	Oompa-Loompas.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2ca79d32-1496-4c52-9abd-d2111d68ccb6	t	Only dating Asian women.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0a4a39ee-e041-4d77-bf03-5498a07e11d9	t	One trillion dollars.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6d2e043c-53e4-4630-9955-6b16a9d420e8	t	One titty hanging out.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e33efedb-f96a-49a6-b1cf-6e6b4efea029	t	One rude motherfucker	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
027335e2-3854-45de-a483-bde06ce671d5	t	One Direction's supple, hairless bodies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7b559e42-0c25-4276-8a2e-772426753260	t	Ominous background music.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ce5b3de6-8662-470c-999b-4d024e6b4bce	t	Old-people smell.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
db567914-f611-448b-83bd-06a254f5e525	t	Oestrogen.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9baa59c6-4d9e-459f-aea1-3019e473a4e2	t	Object permanence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4e7d92bc-4d48-4a0a-bcb4-a767b1516979	t	Obesity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0a71298e-8cc9-42e6-a687-0899886a677d	t	Nunchucks.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2544e6d1-63c9-488d-9c75-b4556c92d8b3	t	Nothing. Absolutely nothing.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
49c96266-e970-458a-b2a3-ef3552410eaf	t	Nothing but sand.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bb6b3085-0b4b-4cbc-86a9-36a437cf5dc3	t	Not wearing trousers.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
f0cb3583-2d58-4396-a1b2-09ec97e12133	t	Not wearing pants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6afb0fa3-217e-4dc5-b409-5655d51a51f6	t	Not vaccinating my children because I am stupid.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bf29681a-d5ca-4918-8ca6-a58d7c479268	t	Not reciprocating oral sex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
127bf1dd-556e-44da-bdb6-9a646f152fbb	t	Not having silly talk.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
663ccd80-3382-4031-897a-72943a7d8ec0	t	Not giving a shit about the Third World.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
742fbc7f-f1b2-4a7d-8bf6-735d0501c418	t	Not covering your mouth when you sneeze	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2a5cdf53-c7be-4640-9ffe-8492ce8b416a	t	Nocturnal emissions.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
11309d72-057f-40f7-a6d0-278137c99e40	t	Nipple blades.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
14474574-5361-4b1b-914e-574b2e9c4ef7	t	Nippers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
65c6d8b2-199c-4ad0-af27-356070f2aa24	t	Nip slips.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f0b5db9f-cec5-404e-a1f1-8bbe17b2a9d3	t	Nicolas Cage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cdf87041-5d0e-4199-96d8-c20f154ac88b	t	Nickelback.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e1be69d0-7019-4a78-9a58-5551d0182dab	t	Newly incorporated kamikaze tactics.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
967a3d10-b911-45ec-9d03-d07ae67902bb	t	Newfies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c6ba64fc-4923-406a-af85-114e152f422d	t	New Age music.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b0eecc9c-15e2-4a56-915e-deb29b4590bb	t	Necrophilia.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bb21aaae-a89e-4831-9af0-995641122d70	t	NBA superstar LeBron James.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dad40aef-1251-4ca4-b9e3-9950c576deba	t	Nazis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3f72bf27-360b-4a06-85bf-fe3e67127ee4	t	Natural selection.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ee389868-fcf8-4d00-98f9-62e17f308c5f	t	Natural male enhancement.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7723832f-277f-4ef7-ab77-eba2ef539a3a	t	Natalie Portman.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0aff3737-2e2b-4f91-a422-9c5bb055eeef	t	Naked News.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a45b3991-6668-48bd-aede-02c973dd92cf	t	Nachos for the table.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0753b03a-361f-4622-9c62-d79e90f5f797	t	my vintage trucker hat collection	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c29345ca-a93e-47fc-810a-25e570d43779	t	My ugly face and bad personality.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
eef95c75-53db-4ffb-a677-65853c2af132	t	My Uber driver, Pavel.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
282d0849-9e58-4a16-9e53-823b9329330f	t	My soul.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0f3d86f5-8f29-4035-b411-957a68d52252	t	My sex life.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
b1f900ba-5fec-4a48-806b-9c87dfffc5e1	t	My relationship status.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
922af9ef-0519-44cf-90bf-6edc91677fc0	t	My neck, my back, my pussy, and my crack.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
06e81868-011c-4bf8-965a-ec303cc4080e	t	My mate Dave.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bef53326-1abc-409d-b79d-baea080331de	t	My machete.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4e7ed0bf-3873-4ae5-b34e-b0fca2fed573	t	My little boner.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
58725dc7-215f-4720-be11-c4d1df062c4c	t	My inner demons.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
11d843bf-730c-44d4-9959-248ab83d9045	t	My humps.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6425cb18-8c3d-4c30-91fd-51e7c6ad7c49	t	My good bra.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
78210eef-0c3f-416d-9289-ce298d5ec7ac	t	My genitals.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1de479bb-eacb-44be-85a2-7ff9316f5e43	t	My first kiss.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
576da46c-4cd1-47cc-a6a7-9fd73b7412f1	t	My father, who died when I was seven.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e7c6f7bc-8f84-44b4-adf2-5af3976fc9b5	t	My fat daughter.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1a817d2b-37fe-4dfe-9a68-b275be813975	t	My ex-wife.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
661f4f1c-7e50-4894-9cf6-b01fd15b09b9	t	My collection of Japanese sex toys.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
347f07ca-904a-4d01-a9e3-f7230251975c	t	My collection of high-tech sex toys.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9ed8f25a-5013-408a-86e1-3c17d04b6429	t	My cheating son-of-a-bitch husband.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5511974a-b9c0-4b71-b9fb-b5a181255f96	t	My cheating prick of a husband.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b062a727-5860-40d3-8b1e-c6b68eb63cfc	t	My bright pink fuckhole.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
16a347c9-e92b-491c-b6fa-457ab362d24a	t	My black ass.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c2d9365e-8db4-48f8-b8ae-283b56c82e9e	t	My balls on your face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
42fe8b35-a88e-41c7-90a1-14fbefbf2b2b	t	My abusive boyfriend who really isn't so bad once you get to know him.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
aa7928c9-6759-4c5e-aed0-9110611ff505	t	Muzzy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0429fe08-4da9-4904-bd92-80a0cb4a133f	t	Mutually-assured destruction.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
749b2d6c-d412-4c7d-81ba-c6206855d32e	t	Mutually assured destruction.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
60f89a2b-7f85-461c-9f37-61413b6dded2	t	Murdering our parents.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
f49c0f61-e33d-4d3b-8c1b-ea76a3c80685	t	Multiple stab wounds.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ff6781d0-893f-4307-9ba7-6e8f96befe3d	t	multiple personality disorder	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e9cb4ac2-ac8c-4968-9f36-8bb440089f95	t	Muhammad (Praise Be Unto Him).	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
07418cb1-56d9-457a-956a-5240da4a8617	t	Muhammad (Peace Be Upon Him).	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e378ca60-f3e0-4a10-aa0d-2ff97e18cbe5	t	Mr. Squiggle, the Man from the Moon.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d1fed1ce-489b-4972-88c6-bb346d974722	t	Mr. Snuffleupagus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
507cbbda-d97d-4d93-b3f2-ada5a6051f25	t	Mr. Froto's ring	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
d13ae0de-e67c-47bc-b0a0-106e4d113967	t	Mr. Dressup.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8388164b-ef42-4db0-be31-2af2985f4268	t	Mr. Clean, right behind you.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9a6750f7-04e8-4c5d-b670-7eefeb468acf	t	Mouth herpes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
603815b5-4484-468c-8108-30e03a030b12	t	Mountain Dew Code Red.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ff217e6d-9836-47c1-80ac-cd8456d9aa85	t	Morgan Freeman's voice.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20056112-83f0-485f-b2a7-23e54758a32e	t	More elephant cock than I bargained for.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ccd66cf6-c245-4f56-9954-0d0841e9aa96	t	Moral ambiguity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bdb9d018-796c-4deb-a6c2-e97ee98b04f0	t	Moon a Prime Minister.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
f9587df6-bb7e-4bce-ad71-b28359ce2c22	t	Mom.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9e7624ee-4b3e-4351-85be-2dbcb60cceb8	t	Mistaking a retarded person for someone who's merely deaf.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0c2e7fab-2ea2-469a-9e3d-f2fe33c1ce4e	t	Mining accidents.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
615e06c3-8a7f-4a05-b0f4-f41324c80671	t	Millwall fans.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f904644a-8ac3-43df-9c25-aaa017a12f4b	t	Millions of cane toads.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9a9b1b0d-7fa8-4541-8948-90a823c7743f	t	Miley Cyrus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
415967ca-0b82-4726-9d8a-a69eeaf13e5e	t	Miley Cyrus at 55.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
63b45b07-b058-4714-8e0c-dd70203b68e3	t	Mild racism and extreme homophobia	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
42a2758e-5422-423f-ad35-3d54be507f50	t	Mike Pence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
59d2657f-c3a9-4d48-a7c4-127f869f4c9c	t	Michelle Obama's arms.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
caf8616d-8360-4afc-a308-34654347f6c7	t	Michael Jackson.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8c1255ed-7dcd-45c4-b107-e8ff6e150df7	t	Meth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5d8b0123-dfd0-4a36-be74-ba1c9268fe75	t	Mensturation porn	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a4b18f5a-85e7-4be2-a93c-989f93367941	t	Menstrual rage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f93daef9-f239-4690-9a65-c78cde873cf8	t	Men.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
feca7963-7342-4bce-9fda-7c68fe03ba50	t	Men discussing their feelings in an emotionally healthy way.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c139feb9-2965-4678-9c9a-aafdefac0a98	t	Memes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0949b027-2cdd-4367-9cd5-b20ce9af292e	t	MechaHitler.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8c1840ab-ebfb-408a-adb5-cfed69f534fb	t	Mean people	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a856ecb1-d752-49b8-9505-10cf0a10d11c	t	Me time.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2e558b72-a951-4dac-b067-5f37d87bd7bd	t	Maureen of Blackpool, Reader's Wife of the Year 1988.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
68cc35a2-3c50-439a-b8e8-422e3e32a865	t	Mathletes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7299abab-b55b-4171-bd6f-1fd4b8e00ef9	t	Masturbation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a7197c2b-07e4-43af-b440-de8d3780d6ce	t	Masturbating.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1058e5fd-ffa0-480b-a50f-2c93411a0be8	t	Massive, widespread drought.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e1f29edb-c004-4e95-8286-61a2be69bb05	t	Martha Stewart's gold plated vagina.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1dfe89b4-7d6e-4914-80a3-d3fe0deb7cd6	t	Marky Mark and the Funky Bunch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e0f62fa7-c192-4b26-87a6-28529efda7a4	t	Many bats.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d5ff1110-7454-4cf8-839f-7e808a0b5fc1	t	Mansplaining.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
914efaaf-e271-49db-947f-ba6bf51a9372	t	Man meat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2b7598df-04d5-4786-b166-5fdd37f8c199	t	Making up for centuries of oppression with one day of apologising.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b00ec0db-b94f-4785-ac8b-272840fd3f7f	t	Making the penises kiss.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9374f550-c57d-4c95-b406-e3d4b70aac58	t	Making sex at her.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b066bc77-6cf2-4762-859f-084d401d6668	t	Making a pouty face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec9e0908-8ae6-40fe-85f0-ad247a65388c	t	Making a list of people to kill.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8db4ac1e-d063-4162-9cf6-26ba64798f1c	t	Magnets.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
427a4cf6-b677-47ca-93f0-44e2339fe658	t	Madeleine McCann.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
47dc9cf6-142d-4fe8-a40f-ab831b8c21d5	t	Mad cow disease.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
540165e2-b895-4928-8ed0-fc4c6df6c4af	t	LYNX® Body Spray.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
479f9b33-752d-4c33-8938-84177e631eef	t	Lunchables™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
15e6b6c2-1fa6-4abc-99a5-5c545605add4	t	Lumberjack fantasies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec4a61cf-9e8f-4b27-b9df-e61cba52135d	t	Loose lips.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
df9b0295-98eb-4e3e-b20c-9ce1af98b1cc	t	Looking in the mirror, applying lipstick, and whispering "tonight, you will have sex with Tom Cruise."	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
67abf402-767d-4d73-ba7e-676d50b69abc	t	Lokking for your Dad's porn stash	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1b254412-4bd4-4b8e-8757-788af5810266	t	Lockjaw.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5b50b8c1-2371-4603-8d1f-1c53ab46ea33	t	Living in Yellowknife.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e26ccc6a-115d-4171-b5bf-da162eddda69	t	Living in a trash can.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c12d16bc-01ab-4214-a27e-8d6054ea56c8	t	Little boy penises.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
101b3951-bc2d-4b4e-a1e5-4f7bbcee2478	t	Literally eating shit.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
670337dc-654f-4d6a-bf2c-730d3bf8cf72	t	Listening to her problems without trying to solve them.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
09758d00-b2ee-42da-bdc8-a6e917e1f424	t	Licking things to claim them as your own.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5a3b6de3-a0f9-4bbd-8020-33cbd6cd12be	t	Liberals.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0f2a814f-c963-4ea7-9ce7-b1efdf2a02dc	t	Leveling up.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f545e76-a8c2-4a64-89c5-7581909a25d7	t	Letting yourself go.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b569d106-8821-4f46-968c-8a1a6b5fc3de	t	Letting Gemma collins squirt on your face	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
a59bb358-558f-4770-bffe-ad0db10e113b	t	Leprosy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ce892731-01d7-4501-bbd8-cf564aa75cee	t	Lena Dunham.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
81fdbc8c-2c97-4618-be54-549c715fb451	t	Leaving an awkward voicemail.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fa6a52d6-b0a7-4cda-b1af-3d7b50e09400	t	Leaked footage of Kate Middleton's colonoscopy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b831c1fb-6429-4d98-9f8b-53731536be15	t	Laying an egg.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d4c0fffd-78c1-4b63-aa41-f62d8413f728	t	Land mines.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b13d72eb-b596-45b3-80cb-091074fa24c1	t	Lance Armstrong's missing testicle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
44223100-086d-49a4-a8c8-756155b7b754	t	Lady Gaga.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
65626264-1dd9-4656-9d4c-6269766db87e	t	Ladies, gentlemen, and the undecided.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
511985c9-96cc-47c0-ad17-98c942bfcb58	t	Kourtney, Kim, Khloe, Kendall, and Kylie.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b9e885c1-873a-4c5e-8a05-c8b5a7904ab5	t	Knife crime.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
df8a20de-7e78-4900-bfd1-95477bb9a0a0	t	Kissing nan on the forehead and turning off her life support.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
21c204b0-a7e7-4fb9-8ac3-3493e430209a	t	Kissing grandma on the forehead and turning off her life support.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b7fbeb99-3ba3-45a5-9145-0f58c9807133	t	Kim Jong-un.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dba28554-a699-4b82-bf54-e605771e20e4	t	Kim Jong-il.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
caf305f4-06d6-4f08-9b6d-827015d71b7a	t	Kids with bum cancer.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
75a58149-dacb-4ffe-a48a-c38c4f797e02	t	Kids with ass cancer.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c621d6bb-262f-4ea7-9991-6ece6cebe2c6	t	Kibbles n' Bits.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
85170abc-4a91-4805-b53d-42105bf0c1dd	t	Kibbles 'n Bits™.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
11dc8ce3-5381-42b7-bd40-aa80ddb943b4	t	Kegel Balls	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f1b0da62-5737-455a-8849-e7fcab06a7b5	t	Keeping Christ in Christmas.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8156a229-bff2-42c3-8c3d-de602abf7ae8	t	Keanu Reeves.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a9805bb5-8653-4b30-85de-198ab51692ea	t	Kanye West.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bbec3a24-3bc4-4e03-95a2-d0d3aacb120e	t	Kamikaze pilots.	\N	9af9e957-2534-4e56-a1ab-bc885448c05d
ed61f244-5e14-4da6-8627-6e0991eb313c	t	Juuling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
adda6f35-fd16-4583-abb6-572ccabec922	t	Justin Trudeau.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9fd6e97d-4697-4560-a18b-7ef255adb6ca	t	Justin Bieber's favorite burger joint.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20556b1d-a44e-42cc-b5b7-11a75f137846	t	Just touching David Beckham's hair.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
985f750a-d8d2-43a3-809f-e6ecbac0fce1	t	Judging everyone.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
83ffaa43-9714-4745-9c09-55b9c30526f2	t	Judge Judy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d9e6bbf7-3094-4853-b835-4ce342d09059	t	John Wilkes Booth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5e60c58-f848-48dc-b53e-84bc5dd3f5cb	t	John Howard's eyebrows.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3a0bdffb-48f2-4cc4-9b2f-07bd832d7ab4	t	Joe Biden.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
45fbac3a-8ecf-4e98-98f5-78e61cb8c010	t	Jobs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
43e3edc5-624b-4178-bb6f-fc81724be48d	t	Jimmy Savile.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5802e8c0-a9a3-445f-9aec-254e78d83038	t	Jibber-jabber.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
aab42983-9b37-4df4-85e4-f9ef1f324fef	t	Jews, gypsies, and homosexuals.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
04c93d31-4fa7-4f68-8269-dc81fc32c67e	t	Jewish fraternities.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9d29f9c9-c0d9-43a6-bdf6-0fd126a0c052	t	Jew-fros.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
073d99f8-3dc3-40c2-9c0a-bc57e795b99c	t	Jesus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
28457687-98a9-46c9-8afd-a39a7e96f7de	t	Jerking off into a pool of children's tears.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
055f89fe-1720-4e45-8bca-b791fbe81b71	t	Jennifer Lawrence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
43acd87c-cfd8-4f0c-8c56-759ca7eae20f	t	Jehovah's Witnesses.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5549e94e-329e-49a0-a7f4-7fd2546a65d6	t	Jedward.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f2954354-a74f-4592-bc78-c611113dec3a	t	Jade Goody's cancerous remains.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9073b615-f868-4f76-906c-cbe39c574879	t	J.D. Power and his associates.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d4785349-d1a9-4f16-b2c0-359774d4141c	t	Itchy pussy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f21fa608-a31a-457f-8499-ff2292236a66	t	Italians.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
39798c06-997b-4e47-b71d-2475790f483d	t	Irritable Bowel Syndrome.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3ac13da6-e377-4d80-b1b6-9c1dd92e5c08	t	Invading Poland.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7b030a17-6158-44be-a02b-23ceb45fcb77	t	intolerably vivid dreams	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b22813c5-c0dd-42e7-b1da-53da9d05fa12	t	Intelligent design.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
39a3c295-d990-43d8-b5a6-b99ebc8857bd	t	Inserting a Mason jar into my anus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a999fb08-7697-4185-80f8-3ea0f06a94b0	t	Inserting a jam jar into my anus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
10358061-76c9-4dde-a08e-06e0806650ff	t	Indian burns.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
ecf4e911-9afd-4607-a46a-5ef2a708583c	t	Incest.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
79915ff0-a76b-4ba6-8283-d18fa9b787e6	t	Inappropriate yodeling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5a96ef34-9f56-4d09-934c-785eb14d54ca	t	Improvised explosive devices.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a2f173a0-baec-4901-a3af-8fbd126d1f1c	t	Impotence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e1d8c440-28a9-4b5b-9bb4-1a1759b31550	t	Illegal immigrants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e5226324-7aec-4609-9deb-b9c479163660	t	Ice.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
82c3a273-f11f-48a8-9e87-ec957540edc9	t	I'm friends with your dad on Facebook.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9eeb44fc-91b2-499d-a8d9-93e80f0ec4bc	t	Hurting those closest to me.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
395096ad-d342-49a7-9746-715ed4e29a36	t	Hurricane Katrina.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9150f800-287d-4b18-ad59-7054fa50adac	t	Hurling one's body down a hill in pursuit of a wheel of cheese.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5a050398-70bb-41d1-97cb-8551549cc24b	t	Hunting accidents.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
de9c848b-2503-4f7b-8973-708828d21de1	t	Hunting "accidents".	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d80378e5-bf42-4b14-bfbc-82223fc61fd0	t	Hulk Hogan.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a95b37e4-d88f-43b1-8cab-b64e362daffe	t	Huge biceps.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
69cbc473-4cfe-4c75-980c-c06a0bb0be00	t	Huffing spray paint.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
66576600-602f-43db-b36e-de037c6e3530	t	However much weed £20 can buy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4e16535f-d9f9-4b0d-92a9-238eadee61df	t	However much weed $20 can buy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
45c19216-0b5b-4ff3-bf8b-4d44a3a43f26	t	How wet my pussy is.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
49784678-f177-4fac-bc1d-0a843f4e9e3e	t	How far I can get my own penis up my butt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b06ed2f4-334d-46d0-817d-1a59d94a30c6	t	How bad my daughter fucked up her dance recital.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5b9c7864-3676-4492-b7a6-68c63fe1b87d	t	How awesome it is to be white.	\N	346fd14d-a972-4c0b-b147-bb47965e1730
9c4abb7d-1f99-4ff7-bdfb-65bf614f8547	t	How amazing it is to be on mushrooms.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e5424e71-c6f3-4359-93cb-c2431a43f3b0	t	Hot Pockets®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bca2ba51-54dc-4c05-b03f-5813d69d9cee	t	Hot people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
db5d93a5-c1de-46c3-8ccb-d83039808259	t	Hot cheese.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cf7953ca-00b0-4d8d-8080-4ec4c90e2fc5	t	Hospice care.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec527157-01f2-48d4-978e-cfe0b01c78e8	t	Horse meat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9311d07f-4ace-4cd3-babd-b475bbfaf26b	t	Horrifying laser hair removal accidents.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3abac569-43f5-4e5a-8494-25b38cc8ae48	t	Hormone injections.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1d96959a-3428-4bea-baf2-4d7c96dc4658	t	Hope.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
214d2c13-b9ae-4d0e-965f-9cabcc95a26d	t	Hooning.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a26d2440-0591-4a87-82a3-19212e70c3fb	t	Homo milk.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c3660a85-2dfc-4eb2-a563-c549a410951a	t	Homeless people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f69b3b65-629d-4df4-b1b0-5d5a0a5152b6	t	Home video of Oprah sobbing into a Lean Cuisine®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
079a74e1-2782-4e8f-9ad2-1865d5f8fd2f	t	Holding down a child and farting all over him.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d4a5f399-d5dd-4a9e-8925-66cddcf4b217	t	Hobos.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
19903af6-4a01-4c44-ae07-0777c19eb098	t	Historically black colleges.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
295f5ec1-136d-4c6f-8867-f46ad2a48686	t	Hipsters.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bc5a4e44-79ee-4b6f-94a5-cfd118bdcb94	t	Hip hop jewels.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c2d2a945-a747-4275-bb2f-46d4484d7530	t	Hillary Clinton's favorite nipple clamps	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cfada549-1cde-4db2-9b6c-b581163de8ff	t	Heteronormativity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cf54d679-48e4-43fc-902b-906bee762e68	t	Heroin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
42454127-774d-4b47-a8f3-14afeb7f206d	t	hermaphroditical Italian pictures	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
8166b7a1-52b7-40b2-824b-8bfc84bccb09	t	Heritage minutes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b12d03f4-1b8b-4321-a2b1-e3348e64cb0a	t	Her Royal Highness, Queen Elizabeth II.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f9e5c302-d323-4e8a-bfc7-71229d3f023f	t	Her Majesty, Queen Elizabeth II.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5404d992-7c2c-4127-a408-b286d5ac418c	t	Helplessly giggling at the mention of Hutus and Tutsis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9d65452e-383e-4e23-a9eb-a58316fac1af	t	Heath Ledger.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
037cec87-351e-4a63-9827-9ed3aaa931d8	t	Heartwarming orphans.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f0b1c7ed-9a70-43c6-ac3d-818664ba6156	t	Having sloppy sex as your dog watches.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
23123193-d3f7-4e25-b419-5131cd13c720	t	Having sex with every man in Winnipeg.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
35210a70-c318-42f6-960c-dc0a03d601d5	t	Having sex too soon after giving birth.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
139ee87d-ffbd-4391-aacb-73e0a4d7aa89	t	Having sex for the first time.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a0268b20-2c22-4c1c-815b-83322fc427ea	t	Having big dreams but no realistic way to achieve them.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
6143da22-32db-4812-98d2-bbf6a3420d29	t	Having anuses for eyes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e2f187a2-c9a3-4357-a822-91229acbb3c5	t	Having a shag in the back of a ute.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
15194ae5-cd29-4eda-8c74-e9b8ada914fc	t	Having a penis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9dd0bb7e-7c0d-4faa-9570-f582d58948ee	t	Having a Golden Gaytime.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
458e7466-ea83-4aa1-9d84-6389868b2bf6	t	Have some more kugel.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
03184f95-4bb6-4b62-9292-5ca9dbf59a1d	t	Harry Potter erotica.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9d5882c9-b60c-4218-afa6-f06cdf3c7edb	t	Half-assed foreplay.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d17f204d-4932-49ee-a5f9-1375a4a6b30c	t	Half a kilo of pure China White heroin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cd30f0dc-599d-46eb-8393-702b5076fb49	t	Haggis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d6f52baa-4add-40dd-bb76-84cb1c85808f	t	Guys who don't call.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bfbc73be-f6a1-4cc9-9273-6cfe00b3da20	t	Growing a pair.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8ea1916c-b77d-446b-bdde-0923609869b2	t	Grave robbing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7477d1e6-2ec8-4ecb-91cf-2828574d08a7	t	Grassroots support	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
facff5d9-34da-4e51-b803-9ef5fea1867a	t	Grandpa's bald spot.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
811a096f-22a0-47fb-9c06-5e07dd01d206	t	Grandma.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
77d8d15b-9dc3-49e5-88b3-e966ae6a4587	t	Good-natured, fun-loving Aussie racism.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fce0f80b-1912-402d-a346-0b8c5dd57068	t	Golden showers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6338ca5c-632b-4df3-afaf-b25fed78fb63	t	Going around sniffing people's armpits.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
52fab28a-9a0f-4dfa-9f47-d88e7fb07dc4	t	Going an entire day without masturbating.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ab6dcdc7-8236-41a1-aa0a-46c9e2398c82	t	GoGurt®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9af19a32-4c1b-4fe7-af25-7796a1d61399	t	God.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9fd380ff-0fe4-4ded-9b17-5befb364896b	t	Goblins.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
132fdb07-1572-48a5-82a0-ed8a09564726	t	Goats eating cans.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9f2797c9-3b9c-40cb-89eb-473579eeb4d1	t	Gloryholes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20c91e4d-a3bd-42b4-99ef-9858a637f293	t	Global warming.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f12a499-52be-4e6b-805d-8946de47d6c8	t	Glenn Beck.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
520bd510-aaab-467a-a51a-1be25c7a32d0	t	Glenn Beck convulsively vomiting as a brood of crab spiders hatches in his brain and erupts from his tear ducts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3d916723-813d-45b3-bab5-67b107418ebf	t	Glenn Beck catching his scrotum on a curtain hook.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
455766aa-a134-46fa-9ac8-86452e23c702	t	Glenn Beck being harried by a swarm of buzzards.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9d7b9ecd-3abe-4c7e-9980-8320b684d6c9	t	Glassing a wanker.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6050ac27-a949-42db-9970-f5cb0a4efc8e	t	Gladiatorial combat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
aa636975-9e9e-49cc-984a-a2351814bc7b	t	Giving birth to the Antichrist.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
838dcbe4-3919-4615-88c0-18c62452f8ec	t	Giving 110%.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
97de8dbf-79df-4ef6-8f95-4d551ead4a3f	t	Girls.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a6fbdef2-ee7c-43e3-bf57-c87cb9f2a8cd	t	Girls who shouldn't go wild.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bbe7490c-28d9-43c8-bd93-ce720edd3750	t	Ghosts.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e347959c-53ad-4469-aacc-ebc64240970a	t	Getting wed, having a few kids, taking some pictures, retiring to the south of France, and dying.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
41ae5786-28fe-4ae1-a688-768322e790cc	t	Getting so angry that you pop a stiffy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
07fe589d-4636-402c-a650-e0816e6713af	t	Getting so angry that you pop a boner.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
073e7fb2-a369-4d1c-aa64-91c3cf161461	t	Getting really high.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fedad320-ef58-408b-9e78-9610e43b5b04	t	Getting pregnant again.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
39a5ace2-9dd4-41db-aea9-9cdc3aa9722d	t	Getting naked and watching Play School.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
97258970-61db-43b1-a526-92d00d5419a5	t	Getting naked and watching Nickelodeon.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
ba32a4f5-b64e-46e1-b19d-762cefa435a2	t	Getting naked and watching CBeebies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2d97d772-8bda-4e05-b935-9198ae351e3f	t	Getting married, having a few kids, buying some stuff, retiring to the south of France, and dying.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5115a4ab-acc0-4da7-af7b-3400b4010e62	t	Getting married, having a few kids, buying some stuff, retiring to Queensland, and dying.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fc9b989c-a2fe-488e-8153-52db52df5485	t	Getting married, having a few kids, buying some stuff, retiring to Florida, and dying.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e916c9f8-1869-4fa9-a43c-e4b053e29d47	t	Getting into a pretty bad car accident.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6d8f2a9-248e-4427-901e-3326f814c1ce	t	Getting fingered.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
661416ae-914d-418d-89e8-11cdb7f341d5	t	Getting drunk on mouthwash.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ae77b30e-262c-4836-ba5f-34a775f1ce67	t	Getting drugs off the street and into my body.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
43627655-3ad8-4a91-b2aa-73e0c134a3d4	t	Getting cummed on.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bb2ca467-5bf8-48d4-af1c-3c5b998ab022	t	Getting crushed by a vending machine.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
097693ab-712c-4b2c-8df4-779b92251c6e	t	Getting a DUI on a Zamboni.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e0607080-fad0-4244-ab59-bb9a14d171e4	t	Germans on holiday.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
97c3a8ca-142f-49b7-ac16-7ae90ad9fa06	t	German dungeon porn.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
53420dd1-f79d-4f2b-97bf-14775f524f82	t	German Chancellor Angela Merkel.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d3752ef0-484d-409b-8d3a-9275e3961b1b	t	Genuine human connection.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5cf23dac-8c12-4721-8673-ff5b623b9fd4	t	Gentleman's Relish®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7c62e7da-79eb-4dcb-85f9-39b70df84c1b	t	Genital piercings.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1f1ee908-ca02-485c-9f45-802f9bdeb958	t	Genghis Khan.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5eebc4e3-be6d-46bd-868e-a4d084f6cd9c	t	Genetically engineered super-soldiers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
11587dc4-6797-4ca2-b975-597a88b3156c	t	Geese.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ac9d7575-86f6-4cd7-a54f-bc0a8832e43a	t	Gay conversion therapy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a3bcca3b-2aec-43e5-8eea-2c4d7d193ad7	t	Gay animals.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
490919e8-9131-4d76-8425-5bfd40d07c2e	t	Gary Glitter.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b2995c87-6d7c-4cf6-8d3e-3ea10fc31c72	t	Gary Coleman.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
476f3c2c-8144-40bb-89fe-edc6da5b6750	t	Garth Brooks.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b10ea23b-24c5-4d52-8ad4-4f276a1163d5	t	Gandhi.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a523a209-3454-486e-938e-53aacd5c5977	t	Gandalf.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fb7f7b4a-80e2-4e62-8cf8-b463f3f26c69	t	Funky fresh rhymes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8a2dc60b-f3d8-476f-a9f2-ed74fb2ce9aa	t	Full frontal nudity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
00f6c7a2-696e-49bb-bba2-9c513ede6bac	t	Fucking the weatherman on live television.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9881bff7-6a57-4c88-a83d-eb39ee231d70	t	Fucking my sister.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1a24b1c6-5cc1-48ea-8eab-735615bb3ac3	t	Front butt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1322b12e-ecc9-4393-8dbf-15d0816723bb	t	Frolicking.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1861fce6-2ca0-4711-8932-4405390a10db	t	Friends with benefits.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2de67bcb-86d0-43cd-ad9f-ab02efb247db	t	Friends who eat all your snacks.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b79814f9-6e9d-437d-87ef-1b635952c7c8	t	Friends who eat all the snacks.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
701580bd-c5c0-4d91-b8b0-d582afb87803	t	Friendly fire.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
757bd41a-a838-4560-8c87-c1cce9499271	t	Friction.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dea9a927-44b6-4497-a6b3-f701f6f77d7c	t	Free samples.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
28c5fc55-fb32-494c-b373-d9b913408df7	t	Fragile masculinity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0bc1319c-5607-4a15-9b5b-51d49f42b365	t	Fox News.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fcb036cb-1dd6-4b5c-b330-bb98d80e8e8f	t	Four Loko.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea65184d-95d0-4fec-a86f-1c2e20bf497c	t	Former President George W. Bush.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9db730dc-86b0-4289-b071-418d6ce67a3c	t	Forgetting the Alamo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
591d585d-8ccf-43d3-ba35-3994e009b2d7	t	Foreskin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5de2ec14-eabc-4d24-bced-9961bd70d000	t	Forced sterilization.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4c2f6955-5e6c-47b2-b767-892068b5138c	t	Forced sterilisation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3335c3a1-9a7f-4e14-be02-6e0b09a7193b	t	Flying sex snakes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d1ebc12-d09a-4137-863b-f3ce06cfc7e8	t	Flying saucers	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
2422a326-44f2-418b-9a04-56dacc93f0f6	t	Flightless birds.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2f966591-af35-456e-9e53-7a91d62f67d0	t	Flesh-eating bacteria.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0861a91d-ad29-4a3c-a764-c7ad0b3790ea	t	Flavored condoms.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f94b3f5a-aee6-4f05-ba6f-9e0d56c9b4d3	t	Flash flooding.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ac921ad5-0bfe-406e-a393-bc6c66c12703	t	Five-Dollar Footlongs™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0cc482b8-a9c8-41d3-b0af-9ac3016e8d32	t	Five litres of Special Brew.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
784648ee-161f-46e9-a5cf-ea1ee89c4b4e	t	Fitting all your blongings into a seabag.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
6923d800-8924-49f6-ba35-3a117cc1b2dc	t	Firing a rifle into the air while balls deep in a squealing hog.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
07933d97-3d85-4393-a6c5-9447892c0dfa	t	Fingering.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c484fb16-9b10-429c-9519-4ee018359a31	t	Finger painting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
57d4ba2f-d838-4b01-a3d7-fc9cac57a4d2	t	Filling Sean Hannity with helium and watching him float away.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d89472af-2cfc-4cc9-9383-12dbda8512f7	t	Filling my son with spaghetti.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c1609731-f281-46eb-886c-050c20baf69d	t	Filling my briefcase with business stuff.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fd01849e-8e7a-4d86-b869-a2218e641be5	t	Figgy pudding.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5f226829-8ee1-4e36-8f27-6c447a71bb49	t	Fiery poos.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e07c92bd-5fb5-4bdd-83ea-dcb6f2e97c3b	t	Fiery poops.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e7fe3c96-675b-4020-bfd4-c88dbde8bf99	t	Fellowship in Christ.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bd13ba87-8650-49e2-8655-658583491c47	t	Feeding Rosie O'Donnell.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
496f8445-60c5-4114-8b93-0f296ea0382b	t	Fear itself.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea184eb9-faad-4b9e-b252-f5d5c8c685b8	t	Farting into your petticoats and wafting it at Lord Gregory.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
33b767e7-bc49-47eb-b665-896abe65ced9	t	Farting and walking away.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
77d5565c-d944-45e2-87d6-88041a343b0c	t	Fancy Feast®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
15965fc0-d980-4f5b-a9a8-3181a7552116	t	Famine.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d047ca1-d69d-4976-92c2-35f0c6499278	t	FALCON PUNCH!!!	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d0d4d704-e1bf-4be0-889a-363b1d923fd5	t	Fake tits.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
873527c6-090c-4fd2-8ca9-3e7159230823	t	Faith healing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
217f611f-2001-4fed-8ec5-e090260f2c51	t	Faffing about.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d0b242b-ea2c-49cf-af10-0758e15a6127	t	Fading away into nothingness.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
36015bc4-feec-41da-9e8e-a8202d72c594	t	Facebook.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
05e23c68-453c-4e33-b5f3-c85166dead85	t	Extremely tight trousers.	\N	d0d08092-fc5c-4d72-aff1-3d4cc7ac4a48
78eac28c-ae22-4611-898f-039c1081e905	t	Extremely tight pants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bce4dc67-5d77-4f0b-8373-bcfe161b76b4	t	Extremely tight jeans.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6a1abdf6-5ab2-447c-afa2-af5f0d4f4693	t	Explosions.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
467a76e2-7bae-4cb7-b11b-f218b13ae8df	t	Explaining how vaginas work.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f044547a-e733-4f48-b071-6a1f7ddcf030	t	Expecting a burp and vomiting on the floor.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fe3997a6-d687-4ca6-8b5d-b06a8c6dfea4	t	Exorcism.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bb24cd59-f01b-4a49-bdc1-3f8bded0ae44	t	Existentialists.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0e6ae340-3576-45e9-a976-00ce7c9f3a8d	t	Executing a hostage every hour.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6058ba4e-6b9b-4689-bdae-52b56e56c851	t	Exchanging pleasantries.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
67cf3a77-266b-41bb-aece-68d61c2baafd	t	Excalibur.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d9df43cb-afc4-4a26-9014-df5c09358f36	t	Exactly what you'd expect.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7e8e187c-4d5d-4495-85ae-679592eb030a	t	Euphoria™ by Calvin Klein.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7ddd5599-91a2-4ebc-a8d7-ac8095d2fb90	t	Eugenics.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
89258b2b-430b-4a60-b7be-263172412b23	t	Ethnic cleansing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bbff5f33-b301-4369-8365-c4a7d0ebc7b4	t	Eternal awesomeness.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
954967b1-ba9e-4ca2-b8f2-bc9838ea788d	t	Establishing dominance.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a0e58cf9-130e-46e0-940d-c6ec7b8294b6	t	Erectile dysfunction.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
84f3bc81-949a-4bd4-91b6-9565983c3145	t	England.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c86928df-9960-4777-9fca-7b0811493db4	t	Emotions.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bf35617b-917c-4261-b5e6-aa9e81fbccdc	t	Emma Watson.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3200a32f-c2ce-4fb8-90e6-9c5a5b1054c5	t	Emerging from the sea and rampaging through Tokyo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
06660e5c-f646-4f37-b93d-1efe4d8aca81	t	Embryonic stem cells.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cf4ae0c2-a83a-4177-b455-8dce6561fe0b	t	Electricity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d48499dc-9942-4994-8a45-be39d103dd4e	t	Elderly Japanese men.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c606d91a-af47-4eea-953f-b4e8d4bf33fb	t	Egging an MP.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
861f3770-ecf5-4b6e-90eb-08eab1014659	t	Edible underwear.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20269c7f-8197-4e53-a84f-5c49b1c3c01f	t	Edible underpants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9062fe47-d27a-4fd8-a37b-e517aef0128e	t	Ed Balls.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
84a59506-3dcd-4013-88fe-01eed6b20e08	t	Ecstasy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2161b881-6fe0-4a73-87bc-ac6110c37954	t	Eating too much of a lamp.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8a3d9b4a-17fd-4e80-b0a8-4941dfd1363a	t	Eating the last known bison.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d8eb475e-e624-4397-9098-c8a3fefc7e59	t	Eating an albino.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1459a787-c231-42c7-a90d-19eaac82af9e	t	Eating all of the cookies before the AIDS bake-sale.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
25515c5e-fc8c-4378-a45a-d548ccc499f1	t	Eating a hard boiled egg out of my husband's asshole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
de3a2c54-68b6-404a-89c0-0b892fc477e2	t	Eating a hard boiled egg out of my husband's arsehole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
87308a36-aef9-4bf2-a0bf-5cc8786eec67	t	Eastern European Turbo-Folk music.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f379795a-9f5d-49e2-93c8-4396c6cc57b2	t	Dying.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f8a3a58a-7f82-4e15-9904-c16cdebff067	t	Dying of dysentery.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
58cb5748-2a9e-4dde-b7c5-4ee2da7174f3	t	Dying but miraculously getting brought back to life.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
df5cb5c2-9578-4155-84f2-c3779289e45a	t	Dwayne "The Rock" Johnson.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ce242e80-e989-406e-9dea-9e2d2501c20b	t	Dwarf tossing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fca8e51d-d2d7-42f3-9957-2d54ac5ef402	t	Dry heaving.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
683802b9-de7f-4c1d-8796-3a908750526c	t	Drum circles.	\N	598cd576-2f6d-45ad-a65e-f35c2ceff4c3
61381b9e-2560-4e27-89f7-e661e79223e7	t	Druids.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9e382aa9-8b55-435c-8f17-cbe5936ab9c2	t	Drowning the kids in the bathtub.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2f141e8a-0f80-4fd6-b4f6-7bfdf51b763a	t	Dropping a chandelier on your enemies and riding the rope up.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
15bd9d4e-10e9-44e7-9149-a81730a430fd	t	Dropping a baby down the dunny.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6efc63bc-2f47-4d09-9063-c1d76b400c13	t	Drinking out of the toilet and eating rubbish.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
e0f5e73b-a6b0-4902-a0dd-cdaab2c14db7	t	Drinking out of the toilet and eating garbage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
062b98f9-c1cd-44bf-84ea-a485c43e9d17	t	Drinking alone.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6980c8b-bc22-44d1-b5e2-cd72a5b1044d	t	Dr. Martin Luther King, Jr.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f85d2add-a560-4f48-a005-cea41f2661bd	t	Douchebags on their iPhones.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ee97d485-697e-48d4-918d-058d38135c83	t	Double rainbows.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e87b775f-80b3-403d-a9ef-cf0d14a36eb9	t	Donald Trump's deleted tweets.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f4a7b434-bd24-4090-82c8-5c2c9cb8c9dc	t	Donald J. Trump.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
98e5c080-8c5b-45dc-9100-79be55e1a4a0	t	Don Cherry's wardrobe.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5ed037f-3625-4872-84b1-b9449b5bd936	t	Domino's™ Oreo™ Dessert Pizza.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b8b9d81a-d56f-424a-9081-6b4a002159ca	t	Doing the right thing.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1bc87d8f-a103-48bf-8cdb-6e34417f9b67	t	Doing it in the butt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c156d1f9-5313-4a3e-be5f-9c62adf46be6	t	Doing crimes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6fbcba9-7dcc-4f93-b450-8d1521586793	t	Doing a shit in Pudsey Bear's eyehole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ef9bf8f7-b924-45fe-b783-747b7edd8849	t	Doin' it up the bum.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
76b06bcc-2897-463f-9b8b-d70563307732	t	Doin' it in the butt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0447ff3d-22b4-4623-a3ad-a1c63d38f1b5	t	Dogging.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1182806f-2be6-43a4-9236-e689708e7d99	t	Diversity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
21948610-f1aa-41ca-b12d-31986f3fb54c	t	Disco Inferno.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
34778aa0-ec85-4507-8da3-84b7225a2777	t	Dirty nappies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c09989f3-0f5c-43dd-973b-4d84cbcc65fe	t	Dining with cardboard cutouts of the cast of Friends.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b2b8eeb9-15d4-44ed-b2f6-e0b85ab82bb8	t	Dick pics.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
94c4dcec-c653-476b-934e-a1cd1fc29ba5	t	Dick Cheney.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dddc9ae6-1068-419d-bd64-ac1c453b0ce7	t	Destroying the evidence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4edb7f68-9286-4b39-878c-c493a8fbb3c1	t	Denying sex to play video games.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cf245b0b-34e7-409e-8f8c-a81eeda2d71a	t	Dental dams.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e09cb27d-9b2a-4b9f-a88d-7f970ca04a49	t	Deflowering the princess.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
db6caa60-fa11-42ca-9761-c8d3e9ba4be0	t	Dead parents.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c426c8f5-4007-402e-8fac-8a69bedb4c10	t	Dead birds everywhere.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1f0b63f5-108b-4a26-9b6e-05c4f67860d7	t	Dead babies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
11409727-91ab-4e2c-a18d-be67eabef851	t	David Cameron.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ad60db83-e251-4e91-861d-bee33613d3e2	t	David Bowie flying in on a tiger made of lightning.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
04d78e18-e372-492e-9fa6-fb0ac535a054	t	Dave Matthews Band.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
255c87d4-3a07-4c47-9c9e-0caf99e106c5	t	Date rape.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b04946de-8e8a-4f91-9c7f-3016d7b04598	t	Darth Vader.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
59fb7d22-ad40-42fc-96f6-8b2e3faaeef1	t	Dark and mysterious forces beyond our control.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4638e02e-6f18-499c-b06f-7fccffe51a09	t	Danny DeVito.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0685e70d-4ac1-44ac-b0b8-bf430742492d	t	Daniel Radcliffe's delicious asshole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6c09555-e7d1-438d-87bc-43f28a4e42f3	t	Daniel Radcliffe's delicious arsehole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
05a16acb-df46-485b-8c13-6a30fffb9efd	t	Daddy's credit card.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
366b7f93-93f1-4958-8d55-8181eb18ff48	t	Daddy issues.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e62b48a3-716d-4550-862c-b0f1ce861a02	t	Daddies® Brown Sauce.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7700071c-2f81-4522-822b-7431949ea131	t	Daddies Brown Sauce	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6d3c7a51-ce3e-4fc2-a1d8-2fd349ba829c	t	Dad's funny balls.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
818d9221-96db-4d90-961f-96a5301b8ae2	t	Cybernetic enhancements.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
73df5582-7693-41c3-8759-fc6942521662	t	Customer service representatives.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
df887bb1-1b92-473a-bba0-ab3af05c09af	t	Cumming deep inside my best bro.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
aff8eff7-edf9-41de-9dab-578d78b466a9	t	Cuddling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
61f30bf4-2b5e-4af7-9112-9fa165d5e87d	t	Crystal meth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f6ae1f17-ac6b-4a56-b878-eb0f4777bfa4	t	Crumpets with the Queen.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f5a8169b-e868-4184-95cd-223a9f1a2205	t	Crumbs all over the god damn carpet.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d0a8f589-95fd-47fa-bbed-d253b0253357	t	Crumbs all over the bloody carpet.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
46eee8ba-76c4-4fef-b177-9a3d67d77b5d	t	Crucifixion.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ec46ecfd-1578-437f-ac35-16a031eb28fc	t	Crippling debt.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a37557ae-cdf2-4176-9d6d-d1eacd540a5b	t	Creed.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e14ed3a4-58ab-482d-bc78-34ce9c8d7f7b	t	Crazy hot cousin sex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7f890186-f7e3-4977-b233-ae5905fe81d6	t	Covering myself with Parmesan cheese and chili flakes because I am pizza.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b82832f6-938b-42cc-930e-9c8fd5fc136c	t	Court-ordered rehab.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
59db18e7-d5db-4b67-8182-7fe6124e25f3	t	Count Chocula.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
20dd2ac3-ba59-4206-80cf-4c711509432e	t	Cottaging.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3355fdce-1aae-4e73-92af-a148459fe784	t	Copping a feel.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e4b4265c-584c-4a57-9f4e-3ef14458c3ee	t	Cookie Monster devouring the Eucharist wafers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
70e44514-ae62-4e9a-88d7-7d2999a9d703	t	Converting to Islam.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b1b1f839-9406-4ad0-a9f3-a5c4f80f4656	t	Contagious face cancer.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ab8da51d-8ae6-4d2c-ae81-d0307d123323	t	Consultants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
21754c0e-b3f7-4b9c-89e8-0a0af1f06c39	t	Consensual sex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
462b3c89-9ba1-414c-bd2b-8c2b7bb3f8df	t	Concealing an erection.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
748b46a0-59bd-4793-be0c-a97ec864aeef	t	Concealing a boner.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5af3fb2d-bf6f-47a8-b512-b5b766e9be40	t	Completely unwarranted confidence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b46e979b-fbd8-4b42-89a7-435cc75d4085	t	Committing suicide.	\N	fc1172ed-b8ef-4a8f-9243-f80d4af766fb
f76b6d8f-13e4-4183-a606-429672755a55	t	College.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e0098d7a-6507-4a92-9eea-89fae67224f0	t	Cockfights.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1d1d53d7-fe8e-45e7-ab52-1c51a16d9af3	t	Cockasaurus rex: the horniest dinosaur of them all.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c6147e23-db27-41d1-9305-51d414f0beb0	t	Coat hanger abortions.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2ee0e04b-a1c6-470d-974e-6c6aacc9bfbf	t	Clubbing baby seals.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1e8b6c5f-cb1e-4aa1-a3d2-7842e65615c4	t	Clive Palmer's soft, shitty body.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
501ff4d9-bd16-4747-9954-1d585ab5adda	t	Classist undertones.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4bd25222-4984-426f-92ec-0d3c068f0530	t	Civilian casualties.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a2e01eed-740e-49df-b45f-c20c286cb370	t	Chutzpah.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2ae31234-5c22-41e8-bb40-a96900d70d61	t	Chunks of dead prostitute.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
412d7617-c08f-45f8-b71b-255f6a0152dc	t	Chunks of dead hitchhiker.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
76405f32-26b2-4afe-9ab5-af77c8b9ba20	t	Chunks of dead backpacker.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
36410f9b-472d-401b-9aab-3c9b1a714b7e	t	Chundering into a kangaroo's pouch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9b3c60a2-b5f2-437d-b7f3-ab67b417bf10	t	Christopher Walken.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
95344c7f-3aec-4347-972d-051ad9955527	t	Chivalry.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
702d8c9c-b855-48c2-9e7f-a1fa371da758	t	Children on leashes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
49dd3e6c-87d8-42f4-845f-ed32fbcbc1a3	t	Child beauty pageants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7069821e-1052-4836-ac65-e4d96527322c	t	Child abuse.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
17b17548-ef9e-4a92-af22-64e267e1fb54	t	Chemical weapons.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1b7acc99-74c3-4c71-94ca-b368f3db3187	t	Cheeky bum sex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0e83d80d-59df-40b7-ab49-660e6b3a4508	t	Cheating in the Special Olympics.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f45d668-0369-4ca2-b71d-10f3348efe8f	t	Cheating in the Paralympics.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f476e90-d6b4-462c-8c78-30bac36f7f2c	t	Charisma.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5bb8aa9e-74d4-4c52-8dc8-69f6171dea6e	t	Chainsaws for hands.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9263bca7-0863-42e7-bdec-e671ac41e8d3	t	Centaurs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
248cf720-5cd1-41b3-b70f-4cf14011a4d3	t	Catapults.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
627d3c99-346a-4ce0-b859-cb10617c6e09	t	Casually suggesting a threesome.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5f36a4e6-f460-4933-9e21-ea4c15a154c3	t	Cashed-up bogans.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a11459d4-25aa-41c2-94cc-24dc62f47dc8	t	Cards Against Humanity.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c24186df-6777-424a-95a2-e45cb9ecf914	t	Cardi B.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e8c72f05-6f99-4434-89c3-77438ad9ad54	t	Capturing Newt Gingrich and forcing him to dance in a monkey suit.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a9bc0dc8-2371-48f1-9708-2efb1814e936	t	Canned tuna with extra dolphin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
35d2fbc5-1a76-4ee5-ae25-dd17f9804120	t	Canadian Netflix.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6eae0ae6-b419-4dee-9f10-7ca3b025d662	t	Canada: America's Hat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7f025f62-73b1-4d8e-b298-2bad75456353	t	Buying the right toothbrush cup for my lifestyle.	\N	36714eaa-f6df-486b-813b-982cdf714895
60066eda-c12c-48ef-b682-b43b439d66b5	t	Burning down the White House.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
503b99c7-b08a-447b-8e26-35a163712353	t	Bullshitting my ass off.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
bd5af58e-7147-47fc-b958-1cd19991250e	t	Buckfast Tonic Wine.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
86f5f9a2-2853-410a-8196-3a2c802b60bc	t	Bubble butt bottom boys.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
00427eec-129d-4028-a822-ff9aa6f2739c	t	Brown people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
67aafacc-a6a8-40f5-8640-cb9ebef63676	t	Britney Spears at 55.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9e4167a2-b299-4786-bdfd-87df03897727	t	Brexit.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e8c681d2-dd6b-4fa2-a545-4f05b4d402f6	t	Breaking out into song and dance.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2e8e4820-efe2-444b-8307-5d61d562e00b	t	Braiding three penises into a Twizzler.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7140905a-e2c6-4813-8d0f-47b0e50a21c0	t	Braiding three penises into a licorice twist.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e0c562f2-015c-4fa8-b1fe-95c73228d790	t	Braiding three penises into a Curly Wurly.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
03e759ed-4a36-4d90-ab99-2be615a20be7	t	Bosnian chicken farmers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b3cb499e-a5fe-41b9-86eb-061195a5194d	t	Boogers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
33ea1979-56f8-4977-ba1a-13b28828ea85	t	Booby-trapping the house to foil burglars.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
77615ad0-fd87-4b29-8821-81b03b2c51e0	t	Bond, James Bond.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fc26ffc0-fa95-4fba-a9c0-460c25a95862	t	Bogies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b66e949c-3238-4c79-86a1-a164f4f7b955	t	Boat people; half boat, half human.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
91cf0b89-dfb2-4445-afd7-16a82272729f	t	Blowing up Parliament.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6b064d3e-4eec-47e8-9706-a354ebc26af6	t	Blowing my boyfriend so hard he shits.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
679511d6-287d-4792-a0bc-aa462fea1bb3	t	Blood, toil, tears, and sweat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d926b6e7-6bbb-4e4d-b7ad-279ee222b3bd	t	Blood fisting	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
5557e041-5d19-4eaf-b31e-5af05160cefd	t	Bling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6da415df-e364-40ca-8823-3cbddcd5f047	t	Black people.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e513d328-a6e9-4216-8e71-279a6bbdfe4f	t	Bitches.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3ed08c46-6fe1-4121-97e7-bcdb9379b232	t	Bisexuality.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c32e6350-53f1-4a9c-9b4c-e1d41de0dc23	t	Bio-engineered assault turtles with acid breath.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
160039e9-d3d7-4476-895e-ca4634d49cc5	t	Bingeing and purging.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7545f89c-8c79-43f5-afc5-91be8d99f003	t	Bill Nye the Science Guy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5aeb5cec-891e-4c69-949f-daa59ba75491	t	Bestiality.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
be11e34f-9ffb-463a-8bac-b48d869352b5	t	Benedict Cumberbatch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
39b072ea-aabe-4004-8740-7d012d083344	t	Being white.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
de5b226c-964b-4fd7-b7d6-cf90979ccb0b	t	Being rich.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9539d66b-6fe9-473a-a3ef-bf7b31308e72	t	Being on fire.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c9e70f7c-b807-438b-a1e3-b8b15dbc04e4	t	Being marginalized.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9f6f87d9-1eed-4690-ad86-4401d3018b39	t	Being marginalised.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ed10dc6a-f7a5-4bd8-9f60-359f3f135c2b	t	Being hunted like a fox.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
47e6ed5e-50f8-4371-a26d-a3a7a5e2dfe5	t	Being fat and stupid.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
65752fce-fce8-49f4-a2ec-560d6b53b450	t	Being fabulous.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e9ff6230-7743-47b4-b491-cc7849a4905d	t	Being Canadian.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
71534fc6-ba8a-45ce-a2ae-d2dde49f2ff1	t	Being black.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e0f6c3ef-9d5e-4b56-83e6-905afe793e13	t	Being back-to-back World War Champions!	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0781bdf5-d2c8-469c-8cc5-d58182515faf	t	Being able to talk to elephants.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d70b8761-e778-4bdb-aaeb-0846e823c505	t	Being a woman.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
38c573ff-0581-4142-beaf-13dac52a3148	t	Being a motherfucking sorcerer.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
84c3a3c7-fbb8-4b87-89ac-5043a5e577c6	t	Being a hideous beast that no one could love.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c05433e2-802e-43a5-b9e1-e24a01b47958	t	Being a dinosaur.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
58bffb47-9363-4f04-b8f6-7b1fa35508d3	t	Being a dick to children.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
57f7c3f6-607f-4f17-be05-dbc4da75f8ea	t	Being a busy adult with many important things to do.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1655d960-1cf5-4d41-afac-ec1c8513cf4a	t	Bees?	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
54f38e76-a474-49da-8bfc-13cd6937a392	t	Becoming a blueberry.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
da41f51c-be0b-46c5-b54d-ba0ecdc0f7ba	t	Battlefield amputations.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7977d4b8-1e21-4007-a4fe-a4ae4845ff6a	t	BATMAN!!!	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0d8dc762-f0b8-4877-a1ea-d4e358b401fa	t	BATMAN!	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5d477bf9-529d-40fa-b05a-1e9b8f3a923b	t	Basic trainees.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0bb5dc48-26b8-40c5-978e-b84586156bee	t	Barely making $25,000 a year.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
97984826-e23c-4433-91e6-bdd15bb3b1cc	t	Barack Obama.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
df445650-7c33-4f44-95e0-b32905a0aad5	t	Bananas.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
12b6c65b-c771-46db-a7e3-93abafffe38b	t	Bananas in Pajamas.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d8cf7c60-b0ab-4a25-a01e-67d1e395319f	t	Balls. Big balls. Really big balls.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
399753a9-54da-40fb-be51-3f8105a0fe80	t	Ball-by-ball commentary from Richie Benaud.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
37786b23-5837-4d94-9aea-ce8aaf114148	t	Badger culling.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0224a4f5-4fc9-4f82-be3c-83917689db73	t	AXE Body Spray.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4affdb8f-7059-4edf-9b23-cf3a3e9325da	t	Autocannibalism.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b52b1493-7951-4bfa-bdf3-24062bc85a85	t	Authentic Mexican cuisine.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2476a76-fa15-4612-b9d4-f577700d7ac1	t	Australia.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f8af1b97-83c0-4841-96bf-0519c6c0effb	t	Auschwitz.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
914ff7a9-a7e4-4442-8aa6-0185a873c837	t	Attitude.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f50e717c-8924-4786-a80c-1095d494fc30	t	Assless chaps.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
22f5da51-cf0b-4895-988f-b3c1866ccf09	t	Asians who aren't good at math.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
91aa53e7-4f37-41c9-b954-8ee8a208d60d	t	Arnold Vosloo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a7f80d4c-6cf2-48d8-85f7-5cd39e1354ef	t	Apologizing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7677894e-4016-4e08-b743-7d23b95f3ec5	t	Anything that comes out of Prince Philip's mouth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a2d52f85-e5be-45b1-8860-f1d904085731	t	Another surprising Osprey crash.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
c522572e-c566-4156-a737-d90e4203e210	t	Another goddamn vampire movie.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b129ecce-02f8-4543-9975-0cc989d98b6f	t	Announcing that I am about to cum.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ad667cba-8a3e-45d5-a3ba-80168ead3361	t	Anal beads.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
724308bf-0e33-49f6-98bd-c567924aeca3	t	An uppercut.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
79ffeec4-e280-463c-88c5-26c2e553f287	t	An unwanted pregnancy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cb453665-3351-4912-9a00-d74a22e35358	t	An unsurprising rash.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1decbf13-109b-4b5a-985b-93dc74e72527	t	"Tweeting."	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1fb61238-bc2b-4700-b329-82a82aaeec78	t	(I am doing Kegels right now.)	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e9dbe754-77cf-4ddc-850f-f1e2c194450f	t	10,000 Syrian refugees.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cbbbe2c9-6620-4ab5-bd5a-de1007797b4a	t	100% Pure New Zealand.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
95ad6225-058c-4c74-9761-e4ec919926e2	t	2 Girls 1 Cup.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f59bc4dc-25e5-4f42-9ae9-3a73818797b4	t	400 years of colonial atrocities.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1ed2e9e0-e97d-45f1-a532-c5bea91626c1	t	50 mg of Zoloft daily.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
adf8aaee-a3fc-4d88-a2e1-725fc293ef4c	t	50,000 volts straight to the nipples.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6e5cb0a3-9a6e-4537-93fb-3c073ffb1db7	t	72 virgins.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d56a301e-a0a9-48fa-82d6-e51507102587	t	8 oz. of sweet Mexican black-tar heroin.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
98579938-5bf1-4ac9-b20f-bab783622bf6	t	A bag of magic beans.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e03e9af8-f72e-4cc1-b53b-2ef6254dd89b	t	A balanced breakfast.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
13ca0e4a-c7ad-4172-b394-13fd6507079e	t	A ball of earwax, semen, and toenail clippings.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0e5b7c65-b99b-4c5e-a238-b556a6acdc74	t	A big black dick.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c0ab2adb-39f9-4ef1-bd03-a3dc620ee063	t	A big hoopla about nothing.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
12c2bab5-9f89-4e3c-af0e-9fcc14c12bfc	t	A bird that shits human turds.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
74c6280c-1a6c-4ecb-bf9c-3f10e5ea0f1d	t	A bit of slap and tickle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
42e8c129-af58-4d92-bb0b-8c978490b32e	t	A bitch slap.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
aa75031e-6661-4347-b03d-5fc86681ab44	t	A bleached arsehole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
17e034d1-3ecf-4169-8364-4c84ab0d460d	t	A bleached asshole.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fd2220d3-709e-4741-b019-392b81c0ab7b	t	A Bop It™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
93a88160-3da0-4033-b9cb-53327ea14468	t	A bowl of mayonnaise and human teeth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fcea6b49-4474-4bc5-af91-10604a4f5df0	t	A brain tumor.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
003236c1-380b-4ec2-8492-1125c8dd0b22	t	A brain tumour.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cd323aec-3460-4f62-80be-da0d7fe1804e	t	A bucket of fish heads.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2b263e3d-f4f0-47fc-8db3-ea64c0342839	t	A can of whoop-ass.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
62d5103e-523c-431e-b58f-7cc6bd34bfc2	t	A caress of the inner thigh.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
71fd009c-5a00-4e95-b830-3683b1fb1681	t	A cartoon camel enjoying the smooth, refreshing taste of a cigarette.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6f714771-ec98-4a5e-9fc6-ffb039cfcf31	t	A cat with... hands.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
d7fe46e7-2c5b-4881-8467-ad238ec47d19	t	A cherry-wood spanking bench.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8e3e84d4-c6e7-4e3c-9060-0649c44669f7	t	A Chinese tourist who wants something very badly but cannot communicate it.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9c51f04b-2c2a-4e75-a13b-666b8814daea	t	A clandestine butt scratch.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
acbb385b-cb49-4eb9-a6d4-04fedbf3cd98	t	A cooler full of organs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
530616da-3a2e-4686-a06a-2cd525d221ce	t	A copy of Bedside Hitler.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
835ad933-d1b0-480a-bfdc-3d267baf4eab	t	A crucifixion.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6aa86215-df59-498a-af05-4062292fc130	t	A cute, fuzzy koala, but it has chlamydia.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
47a935c8-999d-4ddf-bb5a-4be0418de01e	t	A death ray.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5f074572-2b40-4572-8461-ae6486a77a00	t	A decent fucking Internet connection.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1f045b96-1571-4792-beb7-e66d4f418819	t	A defective condom.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
44134c75-91a0-456b-b91a-c26ddb129524	t	A despondent Maple Leafs fan sitting all alone.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e7fc7370-5461-4877-bc44-4b02416168a0	t	A didgeridildo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2ce73b88-9935-4ac1-a266-b644531b34d7	t	A disappointing birthday party.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
92d281da-0887-4e13-b2d6-6951fb191e0a	t	A drive-by shooting.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea465e83-d2e2-4223-bfaf-4589123e9664	t	A fair go.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8cd1223e-3127-4b62-91df-4f943147dd81	t	A falcon with a cap on its head.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5c4a01cc-261c-4a3e-ae39-fbddc7dc464c	t	A fanny fart.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2ee95353-4811-4064-a855-91b6be28022c	t	A fart so powerful that it wakes the giants from their thousand-year slumber.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
40712296-c6da-444e-b855-fe5fa8a34cc7	t	A fat bald man from the internet.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d2803720-7cef-4c9f-a5e1-f536fe83e5e3	t	A fetus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
666bde51-3a6f-4d0b-8fa5-48a1f2982a25	t	A five-litre goon bag.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1794332b-d0e7-4ce2-82ed-af7740e86912	t	A Fleshlight.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bbfd7535-717e-4864-9aff-645e26826c67	t	A Fleshlight®.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
916ce1d6-e5fa-4dd6-849f-f52a8205df62	t	A foetus.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
fb81fbbf-b319-4d1e-bb36-fd7c6210e5aa	t	A foul mouth.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
953af195-019b-4405-a355-25878cd61e50	t	A fuck-ton of almonds.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
66e3985b-b913-475b-80e3-46d79c6781b5	t	A fuck-tonne of almonds.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ed1435d6-6915-4256-aaf5-e39beb63e02d	t	A gassy antelope.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
96ffafd3-8a22-47ab-950b-05f963652689	t	A gentle caress of the inner thigh.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7ff93f75-078c-460a-a9b8-62b5dc872aa4	t	A ginger's freckled ballsack.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2ede7abb-360c-4adb-9b68-f1c7cd4ca8c4	t	A good sniff.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
219a9595-1b7a-44c4-9b71-a0c5e740aee0	t	A good, strong gorilla.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0ea5626f-5438-4b77-a10b-5f26ca2efc0e	t	A gossamer stream of jizz that catches the light as it arcs through the morning air.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8da91f9b-97f4-404c-bf57-3f2a01444491	t	A grande sugar-free iced soy caramel macchiato.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
13cf743e-18d8-4586-b476-4c4563304898	t	A Gypsy curse.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8e788d33-ed09-4cf4-bc31-bf13fe73f57a	t	A hairless little shitstain named Callou.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
59195090-fd92-4d08-a4f6-d8be960cccff	t	A Halal Snack Pack.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bd953e8c-dd1e-42a2-88f5-b7c30619e7e5	t	A hen night in Slough.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
135c6684-1295-45de-b2af-3ea8f61ec46f	t	A homoerotic volleyball montage.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3182b659-be1e-43ac-85f1-75b3fab9ba3a	t	A horde of Vikings.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c839a88f-1cef-4d86-8df7-dad6a1347a94	t	A hot mess.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
abab3a19-4572-42ef-a51d-830bc1f82615	t	A Japanese tourist who wants something very badly but cannot communicate it.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
7b6c65cc-d554-435d-b59f-6159a9be4bc6	t	A Japanese whaling operation.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e240a0ed-3743-46c4-9f48-0226abaf1b4e	t	A LAN party.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
34c07f7f-5bde-49b2-b17a-e95ccea1832d	t	A lifetime of sadness.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d1f9c8c8-148a-477c-b488-ca246d529449	t	A literal tornado of fire.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
701e6bf3-c608-4f38-aa04-5e0f1aacdac5	t	A little boy who won't shut the fuck up about dinosaurs.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
18d10b79-d580-4851-a7e4-af575d4b63a1	t	A live studio audience.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
38b9cb31-a839-4382-998c-00a3ca6ae694	t	A look-see.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5d8c06b4-d084-4f81-8a03-c3faff3fc79f	t	A low standard of living.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
71bd2cb3-ebcb-461b-95d6-8e9747863851	t	A mad cow.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8e3ab595-ea63-4e1c-a86f-a64c3a4b6679	t	A madman who lives in a police box and kidnaps women.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3df891a3-e1ca-4ca9-9cee-2c04fdb4f9a2	t	A man of means by no means.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
59de9dc9-ac0d-420a-add4-104380e31908	t	A man on the brink of orgasm.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e75075ba-f1b3-496e-b595-b99789654fc4	t	A mating display.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
41a6428e-83c0-4e1a-b4c1-3ac2fdfc7612	t	A Mexican.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
581ef14b-8282-49e1-9f4e-24648e1fdc85	t	A micropenis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3d33565c-e710-4700-9363-a524c1ba783a	t	A micropig wearing a tiny raincoat and booties.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a4bea5f4-4792-470b-af7f-6e50ffe6c5bf	t	A middle-aged man on roller skates.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6c2ba319-b6a4-4b57-a949-fee637ffd334	t	A mime having a stroke.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6fbb8a67-65f0-4684-8c5a-7d00e625dbb2	t	A moment of silence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a259a934-7c25-4a7b-a430-2f4d1410beaf	t	A monkey smoking a cigar.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a4f1b666-3efb-4dae-8955-a71d37ddc569	t	A mopey zoo lion.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6b020f0-68da-4eb1-920c-0669ff681e45	t	A much younger woman.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e1d612c2-9749-43ca-aeba-1dc04dac4d25	t	A murder most foul.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7456de30-435b-4746-9aca-b98c2256ce34	t	A neglected Tamagotchi™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
58e3dee6-6bf1-4d4a-b664-d4ff6cb3f2bd	t	A nice cup of tea.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4977d4b0-5e6d-41ec-8a5c-0607e5816fc5	t	A pangender octopus who roams the cosmos in search of love.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2795dc60-4850-44d8-91ac-4893b5e98947	t	A pineapple with chlamydia.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0945ecf8-f1ae-4d05-a966-accfb33f0fb5	t	A posh wank.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9b801778-35ac-471d-917c-8087a2c22868	t	A prayer bouquet.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1040ab27-5318-40c1-9a38-842a47b0f421	t	A pyramid of severed heads.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
366cabe0-e16a-4da0-b593-7ec978d90789	t	A really cool hat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dd541185-c311-4d27-bdb4-232a64b539ba	t	A robust mongoloid.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b2f71b07-9a91-43dd-98d9-cd3d6fbb77c6	t	A sad god with a shit-covered pair of nipples.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
05b92bcc-7776-4b1b-9cf5-3e26d00c339e	t	A sad handjob.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1914ba96-2f94-4b00-993d-ef2c3b3ae613	t	A salad for men that's made of metal.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2bcb315d-84e4-4898-a0d8-fa00c4550ea4	t	A salty surprise.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
46b60b7f-5637-4268-bda9-741078e5616c	t	A sassy black woman.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
72e342d0-4199-414b-9542-8ca39b3ad4bc	t	A sausage festival.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7717c8cf-004e-4715-a817-3d162a09c598	t	A saxophone solo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
66b3f99e-bd47-4f3e-a864-84de44d33333	t	A sea of troubles.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
de0412ab-1c13-4dbe-bfbc-502f925efc13	t	A shark!	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9283a74e-e052-4287-ac01-c1d0ef97d5a8	t	A sick burnout.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
01a4bc4b-8644-4381-b807-e657d511872e	t	A sick wombat.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cd652d4d-a458-42aa-bc64-fcdb89cd9593	t	A sickly child-king.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
38e411c4-21b0-4ce2-8362-6f3f3451ccbd	t	A six-point plan to stop the boats.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ad7c1658-68f0-47e0-8d96-3cc3220b3eb4	t	A slab of VB and a pack of durries.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6b932051-31d1-4184-9e25-9dd759c72744	t	a slightly used tampon	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0fdecb65-78c5-49b6-8dfa-4e0037f9376d	t	A snapping turtle biting the tip of your penis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
8f7ac499-d87f-4260-8ca4-645a544bb44c	t	A sober Irishman who doesn't care for potatoes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
03040ba3-7292-4bbb-ad73-67f4eb2ccb43	t	A soggy Sao.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b1bd2e65-3762-404a-b8cf-227f154e759d	t	A spastic nerd.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f96de17d-5b15-4099-a3b2-d2c2597bf625	t	A stingray barb through the chest.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
058eaef3-6dd4-4f08-a782-3338bb5a9629	t	A stray pube.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
33b61dd4-afcc-4472-8d6a-56b262bde28a	t	A subscription to Men's Fitness.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
18f973ea-3b29-402e-a4cb-f949d1ef9a65	t	A Super Soaker™ full of cat pee.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9c5854da-95c3-4dd1-938a-bb9c3b8ac9e4	t	A surprisingly low amount of prison rape.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
775ba2bc-f704-477b-9ed7-5ee1fd639048	t	A swift hoog to the face.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
b47b896d-c69a-4013-b85e-a6cb9621ff41	t	A thermonuclear detonation.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
88fc8cdf-07c6-46e7-8059-e2548ee74958	t	A thousand Scottish warriors lifting their kilts in unison.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
770d626b-f9de-43a2-869a-65c7d27c30cb	t	A three-way with my wife and Shaquille O'Neal.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
86638c33-78d0-4b03-9eea-ea58b7740273	t	A Tim Hortons franchise.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
cc48ead6-5ab3-4701-af6d-2ae887900e08	t	A time travel paradox.	\N	133a3c5a-af03-4708-af98-8ff154ff76f4
14920a13-a9c4-4b4a-9350-66566cab5776	t	A tiny horse.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b47931e9-f662-441c-ba72-443ab6a32069	t	A tiny, gay guitar called a ukulele.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
147dda67-8e71-4860-83b8-ae96557058e4	t	A tribe of warrior women.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e0a02c0a-1293-48d8-8081-d79d3f1573b8	t	A vagina that tastes like the bathroom floors at Tom's Diner.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e6e19ae7-1bf0-4362-b49c-7f7f8240b8c0	t	A vajazzled vagina.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e3699e7e-e885-4f37-a9a8-960f7820b01d	t	A vastly superior healthcare system.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2fccfab5-f581-46ce-b765-d6a8a4f29752	t	A vindaloo poo.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3c84b13a-adcb-4659-910c-65b1125291c8	t	A web of lies.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a09d6eec-2c3a-40d3-a802-3cfd9bb0d05a	t	A wheelchair death race.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d73adb7b-fa70-4fcf-be3f-87450845226b	t	A white ethnostate.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bb27ae13-c50e-4b53-bdff-de8030181494	t	A white van man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1da9d99d-223d-4040-aa7b-be2fba4faacb	t	A whole thing of butter.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3973ae03-a102-4d5e-95bf-d498f13be18a	t	A windmill full of corpses.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
bc9b4c7e-25b9-4bba-a211-ad6fb95e7499	t	A wisecracking terrorist.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3ed462ee-d36f-4f87-b9c8-1586e20f1ecf	t	A zesty breakfast burrito.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
b722ea7a-d25d-4dcc-8f2d-0b53b50f8f52	t	Aaron Burr.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
641569d9-4807-4ca5-a895-42ce4c8870c9	t	Abstinence.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
ea81c8c2-39b5-421a-b86a-156d6d2d6b0b	t	Academy Award winner Meryl Streep.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5d516943-a44d-4e65-b294-a18179886e30	t	Accepting the way things are.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
63d8a24d-3836-4b8a-bc8c-af7fffbfd4bf	t	Accidentally slipping yourself a roofie.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
642e4d01-f472-403a-bad6-de70e9331f87	t	Active listening.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f73223eb-8d9c-4d9a-b9a1-eff91d533ed3	t	Actually giving a shit	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
97f937bc-d025-4680-a336-61f8e7937313	t	Actually taking candy from a baby.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2df651c8-a5af-498a-8558-27f7645cc8e3	t	Adderall™.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c75d589b-a1b0-4181-9ef3-c4a2d01d8460	t	Adult Friendfinder.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b3d9bca9-eb27-4a8e-8ed7-6a30ff31731b	t	Advice from a wise, old black man.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
3a96fe64-95d8-4ff2-be42-ca401add285a	t	African children.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2066c78e-7d3c-4078-8dc5-fcb2a8517767	t	Agriculture.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7c9ff97f-68c1-4269-b090-5969f4a50092	t	AIDS.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
ee413595-ec77-42df-bcd1-734a396a377d	t	Alcohol poisoning.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
df1da70b-7927-4ac6-89e8-a0075379cb43	t	Alcoholism.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c376f496-8320-4e24-bcea-6f9373af208c	t	Alexandria Ocasio-Cortez.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4f541016-c0f2-4075-b208-45e95c46dc8b	t	All four prongs of an echidna's penis.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
a6e0b125-956c-4d40-9b98-50840cd28004	t	All my gentleman suitors.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
0f475b6d-52e1-4b45-80e1-7c713d92c54f	t	all pants are half off today	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
fb692e7c-6906-44d7-8c82-6db6089b58ad	t	All the dudes I've fucked.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
7bb7ed57-4355-439d-8c8e-73a58b972ee7	t	All-you-can-eat shrimp for $4.99.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9ea41c44-7b55-4528-911f-acc67b69d487	t	All-you-can-eat shrimp for $8.99.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9f691562-0cee-4d1c-b29c-388f28f796ac	t	Altar boys.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
e2feab19-e859-4e67-99ef-df1db522d72d	t	America.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
48e9ef94-7d9b-49eb-a4ee-ea12d18a7eab	t	American Gladiators.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b5dfd888-1e54-4015-8850-5dfbe1e7e857	t	Americanization.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
73338f08-b598-409b-8020-410740c94e2d	t	Amputees.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
4f3bd71f-7ddf-4925-b8ff-71e7e65c34b5	t	An AK-47 assault rifle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
1f584f9e-4249-41cf-980c-febc7d75d66d	t	An AK-47.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
057f726f-3e19-482d-b07a-d14b058e7e64	t	An AR-15 assault rifle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
dfa8dadb-6189-4dfd-9ee3-7bff8f2c43e7	t	An argument with Richard Dawkins.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
0f47d605-47f1-49d0-a09c-fc29311effe0	t	An Army of smack heads with HIV infected needles.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
1e274fd1-99df-4654-a00d-1b74c4dc1640	t	An ass like two football helmets.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
11f7a9a1-9af9-4262-91a6-66d0bd521778	t	An asymmetric boob job.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b6dd2387-bb6b-4f24-9c6b-080f04592a91	t	An endless stream of diarrhea.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
9ac3a9e5-8c57-4517-8fa6-8f6810c65936	t	An endless stream of diarrhoea.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
363c2f18-a275-4c84-98d8-71ee1dc74b44	t	An entrenched class system.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
445654cb-0d0d-482e-bef5-80019f83e9d7	t	An erection that lasts longer than four hours.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
b3819a65-ad67-4cc3-9530-17f0d73554b5	t	An Evening with Michael Buble.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
8e98f4fb-7026-41a7-a0c9-ac476213039a	t	An evil man in evil clothes.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
871756ac-d74a-4020-ab98-de16b6696629	t	Velcro™.	\N	b6be5972-5680-4e7d-8142-dc1ab0b462f7
9c0f296f-335b-4dd2-a75d-ad58a603621c	t	Nunchucks.	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
4f189a26-3cc5-40be-bb86-c5fd419ed204	t	A Craptrap	\N	cf526624-d9a0-4f89-84ad-88c963536dd4
e245499a-191b-4a54-97ef-df0fd871e36b	t	Twenty bucks.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
e81d4dd0-d41f-42b3-9dbe-bab266e586ea	t	Munchin' puss.	\N	1f6a5e82-1dbe-48a9-8b1e-590b2cc5d348
76f1d208-a71e-4b47-9a93-ae4197d9136c	t	Schindler's List.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
ad522e8f-ebdb-4f22-a0b4-90372c4e1a3a	t	Fat.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6cad0001-d7cf-44b1-8c1c-b283a608cb58	f	What's the new fad diet?	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
00f8031f-452e-4a37-a792-eefc2dc93e0b	f	It's a trap!	1	00ced41c-e229-42f7-8b93-46b19aeb43cf
fa17a751-5537-4aa7-bf40-cdb3dc7fb6a7	t	Dick fingers.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
941a040c-dad0-4734-8c43-2da79758c8fa	t	Bono.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
066cdd82-f3bd-4fee-a28a-d1f0a1799815	t	Neckbeard, the nerdiest pirate.	\N	0c50644b-632b-42df-b727-9d2fb83a31c7
5b3134e2-67ed-4a39-a6ed-a2114e51466d	f	You guys, you can buy _ on the dark web.	1	ea613201-36d3-406d-be15-e7496396a199
43675969-412f-4c8f-874e-ee7df93f0fb7	f	What did I nickname my genitals?	1	ea613201-36d3-406d-be15-e7496396a199
060612b7-d809-4ea2-abe0-8c32b953fdf6	f	TRIGGER WARNING: _.	1	ea613201-36d3-406d-be15-e7496396a199
35cb97d2-aae8-41b5-b23d-12e160bae277	t	Practical cats,\r\ndramatical cats,\r\noratical cats,\r\nsceptical cats,\r\nromantical cats,\r\nparasitical cats,\r\nstatistical cats,\r\npolitical cats,\r\nhypocritical cats,\r\nclerical cats,\r\ncynical cats,\r\nrabbinical cats.	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
3fffbaa5-350a-4a5f-b3b5-185ebfd61b8b	f	Match-maker,\r\nmatch-maker,\r\nmake me a match.\r\nFind me _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
9c216a53-6fa7-4210-9bc9-126b1129252d	f	Alright everybody, HOLD!\r\nKelly, why is there _ on my stage?	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
6eb363dc-2204-44b4-ac7e-2a5a3c5409ea	f	Here's what you can expect for the new year.\r\nOut: _.\r\nIn: _.	2	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
664c9dea-8ca6-4973-ad73-d88a11ad0334	t	Urban legends	\N	fc7c21e8-6e2e-482e-914a-6f4725984145
efd32e98-ebd4-43af-9ee6-64120b85cfe3	t	You there!\r\nFrench boy!	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
192ac00c-b911-4ceb-a9cb-41c0dc4dded0	t	Meatballs,\r\nmeatballs,\r\nmeatballs!	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
70d78fb1-1349-4050-ac5a-3dd73d5cce85	t	Fashion... \r\nheard of if?	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
c9fb4222-376c-4273-bcab-69051034e16d	t	Sheboygan, Wisconsin.	\N	6218b16f-903b-4bf9-8b11-a309a34eae38
797e527a-5a71-4a0e-ba02-845c09da96e4	f	It's not delivery.\r\nIt's _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
af65f296-1d2b-4658-86ad-02f827a52c98	f	Hey, kids.\r\nI'm Connor's dad, but you can call me Mr. _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
55fc21b1-937b-4883-9c25-3845ed427a1a	f	FW: re:\r\nFBI WARNING!!! VIOLENT GANGS USING _ TO RECRUIT CHILDREN!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
0f806f6b-08e2-4d61-8dcb-73e4a48235cb	f	Coming up on Turner Classic Movies:\r\nSean Connery and Alec Baldwin star in "The Hunt for _."	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a109de30-3ee3-4aee-926a-a59eb034e7d4	t	Hodor.	\N	e28a9316-9ac1-4a97-b413-73b7a15f9f27
3ea7e11c-44c6-4872-ada9-c1bf564c9c7b	f	Twas the night before Christmas, and all through the house,\r\n\r\nnot a creature was stirring, not even _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
da1ecd35-9b97-4092-b45d-7418d5d2e806	t	The human body.	\N	e51e38df-8b7a-4944-bad3-12275533aebc
5db30b4b-6508-4f3c-9ffc-41f23b590c48	f	Twas the night before Christmas, and all through the house,\r\n\r\nnot a creature was stirring, not even _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
90346940-f59b-46bf-8378-a250e8f3f6eb	f	DOCTOR:\r\nWhat seems to be the problem?\r\n\r\nYOU: \r\n_.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a40d9ee8-71e4-4f2b-b690-e0e7446003ac	t	the four,\r\nor the three,\r\nor the two	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a3acd79b-ba64-4982-aa25-a1ea70739deb	t	A sexy guy with an epic penis.	\N	ab963136-f6d5-4177-b3d9-d0991376740d
e3994a55-caac-46e9-877b-8c9c5511f9f6	t	The Welsh.	\N	c61906cb-334e-4781-91a0-29f62d5b0fa8
36bfbc9e-715d-461d-995a-d93eb105dfb6	f	The top Google auto-complete results for "Barack Obama":\r\nBarack Obama Height.\r\nBarack Obama net worth.\r\nBarack Obama _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
8f24b15a-5727-423f-8984-639e683111c2	f	Mom's to-do list:\r\n * Buy Groceries\r\n * Clean up _.\r\n * Soccer Practice.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7e0d3406-2321-4d6c-8a2b-b9254e1dc7d1	f	This year's trendiest card game:\r\n\r\n"_ Against _."	2	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
d5335a66-2639-4857-bcd3-6615deaebae6	f	This is the way the world ends\r\nThis is the way the world ends\r\nNot with a bang but with _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
985f58d9-32b7-4a5c-83fd-46d4658b8cf2	f	Forget Fifty Shades of Grey...\r\n\r\nGive me Fifty Shades of _!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
92ca969d-1709-412e-b87a-8b2d71972332	f	DOCTOR:\r\nWhat seems to be the problem?\r\n\r\nYOU: \r\n_.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
12f5bc92-2702-4e91-b045-488c570c6282	f	Here is the church\r\nHere is the steeple\r\nOpen the doors\r\nAnd there is _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
69ca912e-2c14-43b8-976c-a27114f5b255	f	It's BIG.\r\nIt's SCARY.\r\nIt's _!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
0ad6807e-4eb7-424c-aae3-e5c01b5e831f	t	Daddy's Grindr account	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
1fb813ee-5af6-492f-8fff-53d06842d048	f	O say, does _ yet wave\r\n\r\no'er the land of the fre and the home of the brave?	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e82603d1-cd8a-405f-9e50-7705fee417ad	t	A corn dog.	\N	6dab7d7f-b549-4f4f-aeb0-b11e4ab9c04a
d7afcf3f-7ae8-4793-8774-8927c59d3b04	t	Whispering all sexy.	\N	21166107-a43e-4d61-ac5b-6cbbf18f1874
3f3e1881-9ef5-4812-94a7-63550adc6c88	t	The eighth graders.	\N	df299c12-e25e-4774-8e4e-5c01b4ae80e8
b9d496e9-f0df-41df-ba5d-6539ebe0fdc7	f	Yeah that's so hot.\r\nI'm so close.\r\nTalk about _ again!\r\nOH I'M CUMMING!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
0b9f3540-0470-4e6c-940f-7d83cbb8a0c3	f	What's up, YouTube?\r\nUser DanTheMan wanted to see _, so here we go.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
2062dae1-59e1-462e-8e20-e0c7c927205c	f	Oh no!\r\nHere it comes!\r\nOhhhhh god!\r\nIt's _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
694879a8-9160-4a4f-97d9-a01e4a76fd30	f	It's the 21st century.\r\nA woman shouldn't have to apologize for _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
cf573de8-3074-427d-af7e-f34f3d374c91	f	I have solved politics.\r\nMy solution is _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
02b15ad3-3a76-485e-b098-db2260543cc7	f	I hate this job.\r\nI hate this place.\r\nMost of all, I hate _.\r\nI quit.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
a7c43e63-70fd-4754-beb6-666719cf0e28	f	Hey, honey.\r\nFor the bedroom, were you thinking, "Robin's Egg Blue" or _Pink?"	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
4115447b-a426-49b3-beda-510366a605d0	f	Goldfinger!\r\nHe's the man,\r\nthe man with _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
2a338697-1b58-40e5-8bf3-9cfb0b376f22	f	Five,\r\nfour,\r\nthree,\r\ntwo,\r\none....\r\n_!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e3df49b2-021b-4530-a88e-f197e24a95bb	f	I so drunk I _.	1	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
6d647267-afc4-4d8d-b8d4-a8418e88bf8f	t	My wife.\r\n(in Borat voice)	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
7afeb3a2-1c7d-4fe5-a466-815df969e444	t	Fascism.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
75d9e015-b755-417d-a6cd-cb7bed2e70ce	t	A family of raccoons.	\N	8341ceb1-03b4-49a8-8598-3c5fbebed9e1
8472f2d0-ba44-4a8c-8556-ea86acfc5333	f	GREETINGS HUMANS\r\nI AM _ BOT\r\nEXECUTING PROGRAM.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
0451f5d4-045f-460f-9d2d-223a40668d04	f	This is the way the world ends\r\nThis is the way the world ends\r\nNot with a bang but with _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
f7c1e9fa-4cf9-49bf-932a-508900afeea5	f	Step 1: _.\r\nStep 2: _.\r\nStep 3: Profit.	2	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
9bfb0d2d-d8c7-4150-8e37-87007e338bca	f	Here is the church\r\nHere is the steeple\r\nOpen the doors\r\nAnd there is _.	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
57fb3a4e-0313-4c48-9408-6a9c795d6ed0	f	Are you thinking what I'm thinking, B1?\r\n\r\nI think I am, B2: it's _ time!	1	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
e1fecfb6-9287-44f6-bd12-635c51efaf78	t	The hiccups.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2244a9d8-68e3-4162-82d7-637d0fc96489	t	reputation,\r\nreputation,\r\nreputation	\N	0587ec76-0636-4dae-b5b2-8c1bb93cb3e3
2ab2c987-47df-45dc-8eb2-46f03d7ca195	t	An honest cop with nothing left to lose.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
c019cd11-ad5d-492a-967a-ee8b8afc702d	t	An icepick lobotomy.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
365ff58b-7ea8-4769-8d95-2afa2f9f1845	t	An icy handjob from an Edmonton hooker.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
68bb4656-6dd8-41de-a9ce-72ed59d59895	t	An M. Night Shyamalan plot twist.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
d0b0b0cf-89b4-4dc8-9789-ea584a1c2389	t	An M16 assault rifle.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
2effb222-4a3e-49d2-9911-6afa76746218	t	An octopus giving seven handjobs and smoking a cigarette.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
db357b57-c8ee-4e9a-aaa6-f7f5f274263f	t	An Oedipus complex.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
6d6acf94-9004-4f21-9262-9ca5c338cdc3	t	An old guy who's almost dead.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
5536590b-1217-46b1-95e0-63a71e0b870f	t	An older woman who knows her way around the penis.	\N	abc5f4ee-aeda-4461-97b2-de8af24a03f0
0f066c72-c4f8-4714-b9a3-ad1463eda466	t	An oversized lollipop.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
f992a22d-7e6f-4200-ad3f-3982a15cbbfe	t	An ugly face.	\N	00ced41c-e229-42f7-8b93-46b19aeb43cf
\.


-- Completed on 2023-07-01 22:52:04

--
-- PostgreSQL database dump complete
--

