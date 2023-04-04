# ========= Journals ========= #
puts "Creating Journals"
star_wars_tribune = Journal.create({
  title: "The Star Wars Tribune",
  subtitle: "Informing you about the galaxy far, far away",
  description: "Get the latest news and updates from across the Star Wars universe, from the fall of the Republic to the rise of the First Order.",
  first_publishing_date: DateTime.new(1977,5,25),
  publisher: "Lucasfilm"
})

hot_rod_and_me = Journal.create({
  title: "Hot Rod & Me",
  subtitle: "The DIY Home Hot Rodder's Haven",
  description: "Find everything you need to know about building and customizing hot rods in your own garage, from engine mods to bodywork.",
  first_publishing_date: DateTime.new(1950,6,1),
  publisher: "Hot Rod Magazine"
})

technology_demystified = Journal.create({
  title: "Technology Demystified",
  subtitle: "Unwrapping the hard to understand areas of popular technology",
  description: "From cutting-edge innovations to everyday tech, our experts break down the latest developments in a way that's easy to understand.",
  first_publishing_date: DateTime.new(2005,1,1),
  publisher: "Wired Magazine"
})

relatively_unknown = Journal.create({
  title: "Relatively Unknown",
  subtitle: "Bringing to light the insignificant events of History",
  description: "Uncover the lesser-known stories and forgotten figures that shaped our world, from pivotal battles to overlooked inventions.",
  first_publishing_date: DateTime.new(1990,1,1),
  publisher: "History Today"
})

# ========= Entries for Star Wars Tribune ========= #
puts "Creating entries for Star Wars Tribune"
Entry.create({
  journal_id: star_wars_tribune.id,
  title: "New Study Suggests Force Sensitivity May Be Genetic",
  content: "A groundbreaking new study conducted by the Jedi Council has suggested that Force sensitivity may be an inherited trait. The study, which analyzed blood samples from hundreds of individuals across the galaxy, found a strong correlation between certain genetic markers and Force sensitivity. While the findings are still preliminary, they could have significant implications for the Jedi Order and their recruitment efforts.",
  published_at: DateTime.new(2023,3,15,12),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "Jedi Order Struggles with Recruitment as Interest in Force Wanes",
  content: "The Jedi Order is facing a recruitment crisis as interest in the Force wanes across the galaxy. According to a recent survey, fewer and fewer young people are expressing an interest in becoming Jedi, citing a lack of job security and a perceived lack of relevance in today's world. The Order is considering new recruitment strategies, such as offering financial incentives and modernizing their training methods, to attract new members.",
  published_at: DateTime.new(2023,2,28,9),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "Rumors Swirl About Mysterious New Sith Lord in Outer Rim",
  content: "Rumors are swirling about a mysterious new Sith Lord operating in the Outer Rim. Several planetary leaders have reported attacks by a powerful dark side user wielding a red lightsaber, but no one has been able to confirm the identity of the attacker. Some experts believe that this could be a sign of a new Sith resurgence, while others argue that it could simply be a rogue individual seeking power for themselves.",
  published_at: DateTime.new(2023,2,15,16),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "The Rise and Fall of the Jedi Order",
  content: "The Jedi Order, once the guardians of peace and justice in the galaxy, were all but destroyed in the waning days of the Clone Wars. This article examines the causes of their downfall and what their legacy means for the future of the galaxy.",
  published_at: DateTime.new(2022, 2, 15, 12, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "The Best Star Wars Books to Read",
  content: "With so many Star Wars books out there, it can be tough to know where to start. This article highlights some of the best books in the Star Wars universe that any fan should check out.",
  published_at: DateTime.new(2022, 3, 1, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "10 Reasons Why Boba Fett is the Coolest Character in Star Wars",
  content: "From his iconic helmet to his deadly arsenal of weapons, Boba Fett has captured the imagination of Star Wars fans for decades. This article explores the many reasons why Boba Fett is the coolest character in the Star Wars universe.",
  published_at: DateTime.new(2022, 3, 15, 14, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "How the Jedi Order Inspired Real-Life Spiritual Movements",
  content: "The Jedi Order may be fictional, but their philosophy and teachings have inspired real-life spiritual movements around the world. This article explores the parallels between the Jedi and these real-life movements, and how they have impacted modern spirituality.",
  published_at: DateTime.new(2022, 4, 1, 10, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "The Evolution of Lightsabers in Star Wars",
  content: "The lightsaber is one of the most iconic weapons in all of science fiction, and has undergone many changes throughout the history of the Star Wars universe. This article traces the evolution of lightsabers from their earliest appearances to the present day, and examines the various designs and colors that have been used over the years.",
  published_at: DateTime.new(2022, 4, 15, 16, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "The Mandalorian Season 3: What We Know So Far",
  content: "The Mandalorian has become one of the most popular shows on Disney+, and fans are eagerly anticipating the release of Season 3. This article looks at what we know so far about the upcoming season, including rumors, casting news, and plot details.",
  published_at: DateTime.new(2022, 5, 1, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: star_wars_tribune.id,
  title: "The Star Wars Holiday Special: A Look Back at the Infamous Special",
  content: "The Star Wars Holiday Special is infamous among fans as one of the worst things to come out of the franchise. This article takes a closer look at the special, exploring its history, its impact on the franchise, and the reasons why it has become such a notorious part of Star Wars lore.",
  published_at: DateTime.new(2022, 5, 15, 14, 0, 0),
  is_published: true
})

# ========= Entries for Hot Rod & Me ========= #
puts "Creating entries for Hot Rod & Me"
Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "How to Build a High-Performance Engine on a Budget",
  content: "Building a high-performance engine for your hot rod can be expensive, but it doesn't have to be. This article shows you how to build a powerful engine on a budget, using affordable parts and smart design choices.",
  published_at: DateTime.new(2022, 3, 1, 12, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "The Art of Pinstriping: How to Add Style to Your Hot Rod",
  content: "Pinstriping is a classic way to add style and personality to your hot rod. This article explores the history and art of pinstriping, as well as how to do it yourself.",
  published_at: DateTime.new(2022, 4, 15, 10, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "10 Essential Tools Every Home Hot Rodder Needs",
  content: "If you're a home hot rodder, you need the right tools to get the job done. This article lists 10 essential tools that every hot rod enthusiast should have in their garage.",
  published_at: DateTime.new(2022, 6, 1, 14, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "The History of the Hot Rod: From Junkyard Scrap to American Icon",
  content: "Hot rods have become an American icon, but their history is rooted in humble beginnings. This article explores the history of the hot rod, from its origins in junkyard scrap to its place in popular culture.",
  published_at: DateTime.new(2022, 7, 15, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "How to Fabricate Custom Body Panels for Your Hot Rod",
  content: "If you're building a custom hot rod, you may need to fabricate your own body panels. This article shows you how to do it, step by step.",
  published_at: DateTime.new(2022, 9, 1, 13, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "10 Hot Rod Movies You Need to Watch",
  content: "Hot rods have been a fixture of American cinema for decades. This article lists 10 essential hot rod movies that every enthusiast should watch.",
  published_at: DateTime.new(2022, 10, 15, 11, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "How to Choose the Right Tires for Your Hot Rod",
  content: "Choosing the right tires is crucial for getting the most out of your hot rod. This article explores the different types of tires available, as well as how to choose the right ones for your car.",
  published_at: DateTime.new(2022, 11, 30, 15, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "How to Install a Roll Cage in Your Hot Rod",
  content: "A roll cage is an essential safety feature for any hot rod that's going to see track time. This article shows you how to install a roll cage in your car, step by step.",
  published_at: DateTime.new(2022, 12, 15, 10, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "How to Build a Hot Rod on a Budget",
  content: "Building a hot rod can be expensive, but it doesn't have to be. This article shows you how to build a great-looking hot rod on a budget.",
  published_at: DateTime.new(2023, 1, 20, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: hot_rod_and_me.id,
  title: "The History of Hot Rodding: From the 1920s to Today",
  content: "Hot rodding has a rich history that spans nearly a century. This article takes a look at the origins of hot rodding and how it has evolved over the years.",
  published_at: DateTime.new(2023, 2, 5, 14, 0, 0),
  is_published: true
})




# ========= Entries for Technology Demystified ========= #
puts "Creating entries for Technology Demystified"

Entry.create({
  journal_id: technology_demystified.id,
  title: "AI and Ethics: Striking a Balance",
  content: "Artificial intelligence is transforming the way we live and work, but it also raises ethical concerns. This article discusses the challenges of balancing the benefits of AI with ethical considerations like privacy, bias, and accountability.",
  published_at: DateTime.new(2023, 3, 5, 14, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "Blockchain Technology: The Future of Financial Transactions?",
  content: "Blockchain technology has the potential to revolutionize financial transactions, but there are still many questions about its long-term viability. This article explores the benefits and drawbacks of blockchain and its potential impact on the financial industry.",
  published_at: DateTime.new(2023, 3, 15, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "Quantum Computing: Hype or Reality?",
  content: "Quantum computing has been hyped as a revolutionary technology that will transform computing as we know it, but there are still many challenges to overcome. This article takes a realistic look at the potential of quantum computing and the hurdles that must be overcome to make it a reality.",
  published_at: DateTime.new(2023, 3, 25, 12, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "The Dark Side of Social Media: Addressing Cyberbullying and Hate Speech",
  content: "Social media has transformed the way we communicate, but it has also created new challenges like cyberbullying and hate speech. This article discusses the negative impact of social media and offers solutions for addressing these issues.",
  published_at: DateTime.new(2023, 4, 5, 16, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "The Evolution of E-Commerce: From Amazon to Cryptocurrency",
  content: "E-commerce has undergone a rapid transformation in recent years, from the rise of Amazon to the emergence of cryptocurrency. This article takes a look at the evolution of e-commerce and the technologies driving its growth.",
  published_at: DateTime.new(2023, 4, 10, 10, 0, 0),
  is_published: true
})
Entry.create({
  journal_id: technology_demystified.id,
  title: "The Rise of Blockchain Technology",
  content: "Blockchain technology is rapidly gaining popularity and being integrated into many industries. In this article, we explore what blockchain is, how it works, and its potential use cases.",
  published_at: Time.new(2022, 6, 10, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "Artificial Intelligence and the Future of Work",
  content: "Artificial Intelligence (AI) is changing the way we work, from automating repetitive tasks to predicting future trends. In this article, we discuss the benefits and challenges of AI in the workplace.",
  published_at: Time.new(2022, 6, 17, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "Demystifying Quantum Computing",
  content: "Quantum computing is a cutting-edge technology that promises to revolutionize computing as we know it. In this article, we explore the basic principles of quantum computing and its potential applications.",
  published_at: Time.new(2022, 6, 24, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "The Dark Side of Social Media",
  content: "Social media has transformed the way we communicate and connect with each other, but it has also brought many negative effects. In this article, we examine the impact of social media on mental health, privacy, and democracy.",
  published_at: Time.new(2022, 7, 1, 9, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: technology_demystified.id,
  title: "Understanding Cloud Computing",
  content: "Cloud computing has become a buzzword in the tech industry, but what does it actually mean? In this article, we explore the basics of cloud computing, its benefits, and its risks.",
  published_at: Time.new(2022, 7, 8, 9, 0, 0),
  is_published: true
})



# ========= Entries for Relatively Unknown ========= #
puts "Creating entries for Relatively Unknown"
Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Forgotten Women of the French Revolution",
  content: "While the French Revolution is often associated with male revolutionaries such as Robespierre and Marat, there were many women who played important roles in the uprising. From Charlotte Corday, who assassinated the radical journalist Marat, to Madame Roland, who was executed for her political activities, the stories of these women deserve to be remembered.",
  published_at: DateTime.new(2022, 3, 10),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Secret History of the Harlem Renaissance",
  content: "The Harlem Renaissance of the 1920s and 30s is celebrated as a golden age of African American art and culture, but there were also many political and social challenges faced by the artists and writers of the time. From the FBI's surveillance of black intellectuals to the conflicts between black and white artists, the history of the Harlem Renaissance is more complex than we often realize.",
  published_at: DateTime.new(2022, 3, 15),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Forgotten Women of Computing",
  content: "While many people are familiar with the names of male computing pioneers such as Alan Turing and John von Neumann, the contributions of women in the early days of computing are often overlooked. Women such as Ada Lovelace, Grace Hopper, and Jean Jennings Bartik played crucial roles in developing the technologies that would change the world, and their stories deserve to be told.",
  published_at: DateTime.new(2022, 3, 20),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Lost Generation of World War I",
  content: "While the literature of the so-called 'Lost Generation' of American writers such as Ernest Hemingway and F. Scott Fitzgerald is well-known, less is known about the experiences of the many young soldiers who fought in World War I and returned to a world that had been forever changed by the war. From the psychological scars of trench warfare to the disillusionment felt by many veterans, the stories of these forgotten soldiers are an important part of the history of the 20th century.",
  published_at: DateTime.new(2022, 3, 25),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Strange Case of the Dancing Plague",
  content: "In 1518, a strange epidemic swept through the city of Strasbourg, France: dozens of people began dancing uncontrollably in the streets, unable to stop themselves even as they suffered from exhaustion and dehydration. The cause of this so-called 'dancing plague' remains a mystery to this day, but it remains one of the strangest events in the history of Europe.",
  published_at: DateTime.new(2022, 3, 30),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "Robert Oppenheimer: The Man Behind the Atomic Bomb",
  content: "Robert Oppenheimer was a physicist who played a key role in the development of the atomic bomb during World War II. Despite his contributions, Oppenheimer became a controversial figure due to his involvement with the Manhattan Project and his opposition to the development of the hydrogen bomb. After the war, he became an advocate for international control of atomic weapons, and was later accused of being a security risk and stripped of his security clearance. Despite this setback, Oppenheimer continued to be a prominent figure in the scientific community until his death in 1967.",
  published_at: DateTime.new(2022, 2, 17, 10, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "John Harrison: The Clockmaker Who Changed the World",
  content: "John Harrison was an English clockmaker who is credited with inventing the marine chronometer, a device that made it possible to determine a ship's longitude at sea. Before Harrison's invention, the lack of a reliable method for determining longitude made long-distance sea travel dangerous and unpredictable. Harrison's chronometer revolutionized navigation and made long-distance trade and exploration much safer and more efficient. Despite facing many obstacles and criticism from the scientific establishment of his time, Harrison persisted in his work and made a lasting impact on the world.",
  published_at: DateTime.new(2022, 3, 21, 10, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Story of the Lipizzaner Stallions and their Role in WWII",
  content: "The Lipizzaner Stallions were a group of horses from the Spanish Riding School in Vienna, Austria. During WWII, the horses were evacuated to Germany, and then to Czechoslovakia to avoid bombing. After the war, the horses were rescued by American troops and returned to Austria.",
  published_at: DateTime.new(2022, 3, 29, 10, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Amazing Story of the Bionic Woman Before the TV Show",
  content: "In the 1970s, a woman named Terry Barton received the first-ever bionic arm. It was the beginning of a revolutionary new field of prosthetics, and paved the way for the TV show 'The Bionic Woman'.",
  published_at: DateTime.new(2022, 3, 30, 14, 0, 0),
  is_published: true
})

Entry.create({
  journal_id: relatively_unknown.id,
  title: "The Mysterious Disappearance of Agatha Christie",
  content: "In 1926, the famous crime writer Agatha Christie disappeared for 11 days, sparking a massive manhunt and media frenzy. When she was found, she claimed to have no memory of what happened during that time.",
  published_at: DateTime.new(2022, 3, 31, 12, 0, 0),
  is_published: true
})


