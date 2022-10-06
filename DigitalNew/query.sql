DROP DATABASE [Digital News]
GO
USE master
GO
CREATE DATABASE [Digital News]
GO 
USE [Digital News]
GO
CREATE TABLE Article(
	id int IDENTITY(1,1) PRIMARY KEY,
	title NVARCHAR(max) NOT NULL,
	[image] NVARCHAR(max) NOT NULL,
	content NVARCHAR(max) NOT NULL,
	[date] datetime NOT NULL,
	author NVARCHAR(max) NOT NULL,
	[description] NVARCHAR(max) NOT NULL,
	view_number INT NOT NULL,
)

GO
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'The wealthy forge ahead with (slightly altered) travel plans in spite of ''stay at home'' directives', N'image1.jpg', N'Dublin, Ireland, will be occupied by a single party in May. Francis Lynch, his wife and their two young adult sons will have the nine-bedroom house to themselves.
Lynch and his family, who live in Dublin, almost always travel internationally for holiday, including to Italy, the United States and India. They''ve altered their plans this year, thanks to coronavirus.
"We want to stay in the country and feel safe by being secluded," he says.
The 10-day Loungueville House buyout (for over 25,000 euros) to the rescue.
"When you stay in a hotel with other people, it''s hard not to have social interaction," says Lynch. "The best way to get close to total privacy and to control your environment is to have the whole place to yourself."
Siobhan Byrne Learat, the owner of the Dublin-based travel company Adams & Butler, says she has had numerous requests for hotels buyouts in Ireland from her Irish clientele since coronavirus intensified in the country during the second week of March. Several of these requests have led to confirmed bookings (Lynch rented Loungueville House through her).
"The interest in exclusive-use properties has suddenly shot up," she says. "But people don''t want a full staff and daily housekeeping like they typically would if it weren''t for the virus. They want to keep services to a minimum to avoid interaction with others."', CAST(N'2020-03-28 15:21:18.000' AS DateTime), N'Stacey Lastoe and Shivani Vora', N'While the majority of the world''s population is biding time at home until the threat of the virus has passed, some wealthier people are seeking solace by buying out small hotels, renting homes in remote locales or fleeing to vacation homes with extended family members.
Travel in the time of coronavirus is apparently still quite possible, if inaccessible to most.', 10)
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'I caught the last flight to propose to my girlfriend on the other side of the world', N'image2.jpg', N'I rushed to EgyptAir''s office in Cairo''s Korba district and got the ticket. As I ran out the door, a jewelry store nearby caught my eye. It was ridiculous that this non-essential store stayed open, but it was as if the universe knew I needed one at that moment.
On the drive back home, I saw Egypt''s military dispersing across the city preparing to deploy, a move that often indicates that a curfew may be coming.
Memories of mandatory curfew during Egypt''s uprisings started rushing back, but in these strange times, these draconian measures were oddly comforting as they would help limit infections.I arrived at the airport and gave a big hug to both my parents, hoping it wouldn''t be the last.
Overwhelmed with emotions, I entered the terminal expecting to encounter scenes of chaos. Instead, the building was shockingly empty.
Before the pandemic, Cairo Airport had been bustling as tourism had begun bouncing back following recent political and social upheaval in the wake of Egypt''s uprisings.
During those times, I had seen Cairo''s airport empty, but never like this.', CAST(N'2020-02-27 07:19:10.000' AS DateTime), N'Eihab Boraie', N'Stay in Cairo with family or catch the last flight to Canada to be with my love. I needed to decide quickly but feared that traveling during this pandemic was the equivalent of suicide, or worse, murder.
As Covid-19 began to spread across the globe, I believed nowhere was safe and self-isolation was the best course of action. Still, love will make you do stupid things.
I''m a Canadian-Egyptian in love with an Italian-American, Francesca Brundisini, who is working on a postdoc in Quebec City. She''s new to the city and feared that her isolation with no friends or family would lead to a communication breakdown if she contracted the virus.', 10)
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'Dozens of young women in South Korea were allegedly forced into sexual slavery on an encrypted messaging app', N'image3.jpg', N'For South Koreans, the case has become a lightning rod for a nation grappling with widespread sexual abuse and accusations of pervasive misogyny, after a series of scandals involving the secret or forced taping of women in recent years.
On Monday, President Moon Jae-in responded to the rising anger, calling for police to investigate all members of the chat groups, not just Cho. Currently, 124 people connected to the chat groups have been arrested, and 18 have been detained.
But for many South Koreans, an investigation is not enough.
Over four million people have signed two petitions demanding the heaviest of punishments for the arrested operator and calling for the names and faces of all involved to be released.
Cho, who has only appeared once since his arrest, gave a statement on March 25, at the Jongno Police Station in Seoul before being transferred to the prosecutors'' office. "Thank you for stopping a life of a devil which I couldn''t stop myself," he said.
Cho''s lawyers quit on March 25 according to the law firm and authorities. The law firm told CNN that the reason for this decision was because information they received from Cho''s family when they accepted the case was very different from the facts.', CAST(N'2020-02-20 09:28:12.000' AS DateTime), N'Yoonjung Seo', N'Cho Joo-bin, a 24-year-old man, hosted online rooms on encrypted messaging app Telegram, where users paid to see young girls perform demeaning sexual acts carried out under coercion, according to South Korean police.
As many as 74 victims were blackmailed by Cho into uploading images onto the group chats, some of the users paid for access, police said. Officials suspect there are about 260,000 participants across Cho''s chat rooms.', 10)
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'Dual Olympic champion Ester Ledecka wins first World Cup skiing race', N'image4.jpg', N'At the Olympics, Ledecka pulled off a shock victory in the super-G skiing event before clinching gold in her favoured snowboarding parallel giant slalom to become the first athlete to win gold in two different disciplines at the same Games.
In scenes reminiscent of her Olympic super-G victory, Ledecka set the fastest time from starting number 26 and shocked even herself to see the first place posted on the scoreboard. She beat Swiss Corinne Suter by 0.35 seconds with Austrian Stephanie Venier third in Canada.
"I was a little bit thinking it was some mistake, but it''s OK. I''m maybe getting used to it," Ledecka said.Ledecka''s previous best result in a World Cup downhill was seventh in Lake Louise in 2017. She finished 24th in last season''s World Cup downhill standings and 28th in super-G.
Ledecka has won 17 snowboard World Cup races and clinched seven season titles.
American star Mikaela Shiffrin finished 10th in Lake Louise as she chases a 63rd career World Cup win.', CAST(N'2020-02-15 06:12:03.000' AS DateTime), N'Rob Hodgetts', N'She stunned the world with gold medals in two different sports at the Winter Olympics, but now Ester Ledecka has clinched her first World Cup ski racing title.

The 24-year-old snowboarder and skier from the Czech Republic stormed to victory in a downhill at Lake Louise, Canada for her first skiing victory since Pyeongchang in 2018.', 10)
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'Formula E is not a threat, says Formula 1 boss Chase Carey', N'image5.jpg', N'Since Liberty Media acquired F1 in 2017, the organization''s main aim has been to grow the sport''s popularity, with a particular focus on the US market.
Figures released by F1 at the start of the year would suggest they are off to a good start.
The number of unique television viewers in 2018 rose to 490.2 million, an increase of 10% compared to the previous year, and the total cumulative audience in the sport''s top 20 countries grew by 3% to 1.758 billion -- the second consecutive year of growth, F1 said.
Figures on social media platforms are even more buoyant, with the sport''s followers on Facebook, Twitter, Instagram and YouTube reaching 18.5 million, an increase of 53.7% compared to 2017.

umbers for this year are yet to be released, but Carey believes it has been another promising season.
"I think we''ve achieved what we wanted," he said. "I think 2019 has been a year where we''ve had good growth, we''ve had growth in attendance, growth in viewership, the business is healthy. But again, we''re in the early days, not the end days of what we want to get to.', CAST(N'2020-02-04 23:06:03.000' AS DateTime), N'Amanda Davies and Matias Grez', N'So much so that many have also predicted that the sport has even the potential to become a serious rival to Formula One.
Not that F1 boss Chase Carey sees the electric motor series as a serious threat.
"No, actually, it certainly wouldn''t be Formula E," Carey said. "I think Formula E is a very different vehicle today, largely a social cause and, you know, it''s a street party.', 10)
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'Flipkart shuts down and Amazon limits orders for 1.3 billion Indians under lockdown', N'image6.jpg', N'Flipkart, which is owned by Walmart (WMT), announced Wednesday that it was suspending services after authorities called for a "complete" lockdown for the entire population of 1.3 billion people, directing most stores, offices and factories to shut down.
"We urge you to stay at home to be safe," Flipkart said in a statement. "Our promise is that we will be back to serve you as soon as possible."
People around the world have been relying more on online shopping in an effort to limit physical contact as the virus spreads. Amazon (AMZN) has revealed plans to hire 100,000 distribution workers in the United States, while Chinese firm JD.com (JD) has pledged to open up more than 20,000 new positions.
Amazon, Flipkart''s main rival in India, on Tuesday moved to limit orders as it responded to increased demand because of the coronavirus outbreak.
It said in a blog post that it would "temporarily stop taking orders" for some items as workers focus on filling orders for "critical" goods, such as household staples, packaged food and hygiene products.That includes the delivery of food, pharmaceuticals and medical equipment provided by e-commerce companies. But some businesses are hinting at confusion on the ground.', CAST(N'2019-12-26 06:20:08.000' AS DateTime), N'Michelle Toh', N'India''s biggest online retailers have sharply reduced their service after the government ordered a three-week lockdown on residents across the country in response to the coronavirus pandemic.', 10)
INSERT INTO Article(title, [image], content, [date], author, [description], view_number) VALUES (N'Nintendo''s ''Animal Crossing: New Horizons'' and the bloodthirsty ''Doom Eternal'' launch amid pandemic', N'image7.jpg', N'While "Animal Crossing" is a slow-paced game set on an idyllic island, where you can build furniture and meet friends, "Doom Eternal" is a shooter game in which demons invade Earth. CNN Business had an opportunity to try both.
"Animal Crossing" trains its users in patience, as stores within the game close at night as they do in real life, and fish and insects sometimes resist capture. Its bright characters and peaceful vacation setting help provide a change of scenery, while still being somewhat realistic (you have to take out home loans to expand your real estate).
As more people begin to play the game, an online feature allows you to visit friends'' islands, making it possible for players in real life to connect to each other. It could be a way for people to connect online during social distancing.In contrast, "Doom Eternal" throws you right into skull-smashing, guns-blazing action set to a rousing soundtrack, and hardly ever lets up. Being able to progress in "Doom," especially at harder difficulty levels like "ultra-violence" and "nightmare" mode, is truly a test of skill.
id Software''s Doom packs a lot of nostalgia and has been around for 26 years. But Nintendo''s 19-year-old "Animal Crossing" commands its own cult following and analysts predict "New Horizons" could outsell "Doom Eternal."', CAST(N'2019-09-23 09:50:00.000' AS DateTime), N' Shannon Liao', N'Nintendo released "Animal Crossing: New Horizons" and Bethesda launched "Doom Eternal," on Friday. Both games are the latest entries in decades-old franchises, and their releases are well-timed given that millions of people are staying home because of the coronavirus pandemic.', 10)
GO
CREATE TABLE [View](number INT NOT NULL)
GO
INSERT INTO [View] VALUES(12)
