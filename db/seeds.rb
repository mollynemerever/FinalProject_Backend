require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.create(full_name: 'David Lee', first_name: 'David', email: 'davidlee@gmail.com', image: 👤, join_year: '2019', industry: 'Healthcare')
# User.create(full_name: 'Sam Lee', first_name: 'Sam', email: 'samlee@gmail.com', image: 👤, join_year: '2019', industry: 'Higher Education')
# User.create(full_name: 'Hannah Lee', first_name: 'Hannah', email: 'hannahlee@gmail.com', image: 👤, join_year: '2019', industry: 'Human Resources')
# User.create(full_name: 'Josh Lee', first_name: 'Josh', email: 'joshlee@gmail.com', image: 👤, join_year: '2019', industry: 'Technology, Software, and Computer Services')

5.times do
  User.create(
    full_name: Faker::Name.name,
    email: Faker::Internet.free_email,
    join_year: '2019',
    industry: 'Technology, Software, and Computer Services'
  )
end


Book.create(author: 'Harper Lee', description:'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.Compassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. Today it is regarded as a masterpiece of American literature.', title:'To Kill a Mockingbird',image:'https://images.gr-assets.com/books/1361975680l/2657.jpg')

Book.create(author:'Stephenie Meyer' ,description:'About three things I was absolutely positive.First, Edward was a vampire.Second, there was a part of him—and I didnt know how dominant that part might be—that thirsted for my blood.And third, I was unconditionally and irrevocably in love with him.In the first book of the Twilight Saga, internationally bestselling author Stephenie Meyer introduces Bella Swan and Edward Cullen, a pair of star-crossed lovers whose forbidden relationship ripens against the backdrop of small-town suspicion and a mysterious coven of vampires. This is a love story with bite.',title:'Twilight',image:'https://images.gr-assets.com/books/1361039443l/41865.jpg')

Book.create(author:'Markus Zusak',description:'Trying to make sense of the horrors of World War II, Death relates the story of Liesel--a young German girl whose book-stealing and story-telling talents help sustain her family and the Jewish man they are hiding, as well as their neighbors.',title:'The Book Thief',image:'https://images.gr-assets.com/books/1522157426l/19063.jpg')

Book.create(author:'C.S. Lewis|Pauline Baynes',description:'Journeys to the end of the world, fantastic creatures, and epic battles between good and evil—what more could any reader ask for in one book? The book that has it all is The Lion, the Witch and the Wardrobe, written in 1949 by Clive Staples Lewis. But Lewis did not stop there. Six more books followed, and together they became known as The Chronicles of Narnia.For the past fifty years, The Chronicles of Narnia have transcended the fantasy genre to become part of the canon of classic literature. Each of the seven books is a masterpiece, drawing the reader into a land where magic meets reality, and the result is a fictional world whose scope has fascinated generations.This edition presents all seven books—unabridged—in one impressive volume. The books are presented here in chronlogical order, each chapter graced with an illustration by the original artist, Pauline Baynes. Deceptively simple and direct, The Chronicles of Narnia continue to captivate fans with adventures, characters, and truths that speak to readers of all ages, even fifty years after they were first published.',title:'The Chronicles of Narnia',image:'https://images.gr-assets.com/books/1449868701l/11127.jpg')

Book.create(author:'Margaret Mitchell',description:'Gone with the Wind is a novel written by Margaret Mitchell, first published in 1936. The story is set in Clayton County, Georgia, and Atlanta during the American Civil War and Reconstruction era. It depicts the struggles of young Scarlett OHara, the daughter of a well-to-do plantation owner, who must use every means at her disposal to claw her way out of the poverty she finds herself in after Shermans March to the Sea. A historical novel, the story is a Bildungsroman or coming-of-age story, with the title taken from a poem written by Ernest Dowson.',title:'Gone with the Wind',image:'https://images.gr-assets.com/books/1328025229l/18405.jpg')

Book.create(author:'John Green',description:'Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. But when a gorgeous plot twist named Augustus Waters suddenly appears at Cancer Kid Support Group, Hazels story is about to be completely rewritten.Insightful, bold, irreverent, and raw, The Fault in Our Stars is award-winning author John Greens most ambitious and heartbreaking work yet, brilliantly exploring the funny, thrilling, and tragic business of being alive and in love.',title:'The Fault in Our Stars',image:'https://images.gr-assets.com/books/1360206420l/11870085.jpg')

Book.create(author:'Douglas Adams',description:'Seconds before the Earth is demolished to make way for a galactic freeway, Arthur Dent is plucked off the planet by his friend Ford Prefect, a researcher for the revised edition of The Hitchhikers Guide to the Galaxy who, for the last fifteen years, has been posing as an out-of-work actor.Together this dynamic pair begin a journey through space aided by quotes from The Hitchhikers Guide ("A towel is about the most massively useful thing an interstellar hitchhiker can have) and a galaxy-full of fellow travelers: Zaphod Beeblebrox—the two-headed, three-armed ex-hippie and totally out-to-lunch president of the galaxy; Trillian, Zaphods girlfriend (formally Tricia McMillan), whom Arthur tried to pick up at a cocktail party once upon a time zone; Marvin, a paranoid, brilliant, and chronically depressed robot; Veet Voojagig, a former graduate student who is obsessed with the disappearance of all the ballpoint pens he bought over the years.', title:'The Hitchhikers Guide to the Galaxy',image:'https://images.gr-assets.com/books/1388282444l/386162.jpg')

Book.create(author:'Shel Silverstein',description:'Once there was a tree...and she loved a little boy.So begins a story of unforgettable perception, beautifully written and illustrated by the gifted and versatile Shel Silverstein.Every day the boy would come to the tree to eat her apples, swing from her branches, or slide down her trunk...and the tree was happy. But as the boy grew older he began to want more from the tree, and the tree gave and gave and gave.This is a tender story, touched with sadness, aglow with consolation. Shel Silverstein has created a moving parable for readers of all ages that offers an affecting interpretation of the gift of giving and a serene acceptance of anothers capacity to love in return.',title:'The Giving Tree',image:'https://images.gr-assets.com/books/1174210942l/370493.jpg')

Book.create(author:'Dan Brown',description:'An ingenious code hidden in the works of Leonardo da Vinci.A desperate race through the cathedrals and castles of Europe.An astonishing truth concealed for centuries . . . unveiled at last.While in Paris, Harvard symbologist Robert Langdon is awakened by a phone call in the dead of the night. The elderly curator of the Louvre has been murdered inside the museum, his body covered in baffling symbols. As Langdon and gifted French cryptologist Sophie Neveu sort through the bizarre riddles, they are stunned to discover a trail of clues hidden in the works of Leonardo da Vinci—clues visible for all to see and yet ingeniously disguised by the painter.Even more startling, the late curator was involved in the Priory of Sion—a secret society whose members included Sir Isaac Newton, Victor Hugo, and Da Vinci—and he guarded a breathtaking historical secret. Unless Langdon and Neveu can decipher the labyrinthine puzzle—while avoiding the faceless adversary who shadows their every move—the explosive, ancient truth will be lost forever.',title:'The Da Vinci Code',image:'https://images.gr-assets.com/books/1303252999l/968.jpg')

Book.create(author:'Arthur Golden',description:'A literary sensation and runaway bestseller, this brilliant debut novel presents with seamless authenticity and exquisite lyricism the true confessions of one of Japans most celebrated geisha.In Memoirs of a Geisha, we enter a world where appearances are paramount; where a girls virginity is auctioned to the highest bidder; where women are trained to beguile the most powerful men; and where love is scorned as illusion. It is a unique and triumphant work of fiction - at once romantic, erotic, suspenseful - and completely unforgettable.',title:'Memoirs of a Geisha',image:'https://images.gr-assets.com/books/1388367666l/930.jpg')

Book.create(author:'Orson Scott Card',description:'Andrew Ender Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast.But Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Enders two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the militarys purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentines abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.',title:'Enders Game',image:'https://images.gr-assets.com/books/1408303130l/375802.jpg')

Book.create(author:'Stephen Chbosky',description:'The critically acclaimed debut novel from Stephen Chbosky, Perks follows observant wallflower Charlie as he charts a course through the strange world between adolescence and adulthood. First dates, family drama, and new friends. Sex, drugs, and The Rocky Horror Picture Show. Devastating loss, young love, and life on the fringes. Caught between trying to live his life and trying to run from it, Charlie must learn to navigate those wild and poignant roller-coaster days known as growing up.', title: "The Perks of Being a Wallflower", image:'https://images.gr-assets.com/books/1520093244l/22628.jpg')

Book.create(author:'Audrey Niffenegger',description:"A funny, often poignant tale of boy meets girl with a twist: what if one of them couldnt stop slipping in and out of time? Highly original and imaginative, this debut novel raises questions about life, love, and the effects of time on relationships.Audrey Niffeneggers innovative debut, The Time Travelers Wife, is the story of Clare, a beautiful art student, and Henry, an adventuresome librarian, who have known each other since Clare was six and Henry was thirty-six, and were married when Clare was twenty-three and Henry thirty-one. Impossible but true, because Henry is one of the first people diagnosed with Chrono-Displacement Disorder: periodically his genetic clock resets and he finds himself misplaced in time, pulled to moments of emotional gravity in his life, past and future. His disappearances are spontaneous, his experiences unpredictable, alternately harrowing and amusing. The Time Traveler’s Wife depicts the effects of time travel on Henry and Clare’s marriage and their passionate love for each other as the story unfolds from both points of view. Clare and Henry attempt to live normal lives, pursuing familiar goals—steady jobs, good friends, children of their own. All of this is threatened by something they can neither prevent nor control, making their story intensely moving and entirely unforgettable.",title:"The Time Travelers Wife",image:"https://images.gr-assets.com/books/1380660571l/18619684.jpg")

Book.create(author:"John Steinbeck",description:"The compelling story of two outsiders striving to find their place in an unforgiving world. Drifters in search of work, George and his simple-minded friend Lennie have nothing in the world except each other and a dream--a dream that one day they will have some land of their own. Eventually they find work on a ranch in California’s Salinas Valley, but their hopes are doomed as Lennie, struggling against extreme cruelty, misunderstanding and feelings of jealousy, becomes a victim of his own strength. Tackling universal themes such as the friendship of a shared vision, and giving voice to America’s lonely and dispossessed, Of Mice and Men has proved one of Steinbeck’s most popular works, achieving success as a novel, a Broadway play and three acclaimed films.",title:"Of Mice and Men",image:"https://images.gr-assets.com/books/1511302904l/890.jpg")

Book.create(author:"Aldous Huxley",description:"Brave New World is a dystopian novel written in 1931 by English author Aldous Huxley, and published in 1932. Largely set in a futuristic World State of genetically modified citizens and an intelligence-based social hierarchy, the novel anticipates huge scientific developments in reproductive technology, sleep-learning, psychological manipulation, and classical conditioning that are combined to make a utopian society that goes challenged only by a single outsider.",title:"Brave New World",image:"https://images.gr-assets.com/books/1523061131l/5129.jpg")

Book.create(author: "J.D. Salinger" ,description: "The hero-narrator of The Catcher in the Rye is an ancient child of sixteen, a native New Yorker named Holden Caulfield. Through circumstances that tend to preclude adult, secondhand description, he leaves his prep school in Pennsylvania and goes underground in New York City for three days. The boy himself is at once too simple and too complex for us to make any final comment about him or his story. Perhaps the safest thing we can say about Holden is that he was born in the world not just strongly attracted to beauty but, almost, hopelessly impaled on it. There are many voices in this novel: childrens voices, adult voices, underground voices-but Holdens voice is the most eloquent of all. Transcending his own vernacular, yet remaining marvelously faithful to it, he issues a perfectly articulated cry of mixed pain and pleasure. However, like most lovers and clowns and poets of the higher orders, he keeps most of the pain to, and for, himself. The pleasure he gives away, or sets aside, with all his heart. It is there for the reader who can handle it to keep. J.D. Salingers classic novel of teenage angst and rebellion was first published in 1951. The novel was included on Times 2005 list of the 100 best English-language novels written since 1923. It was named by Modern Library and its readers as one of the 100 best English-language novels of the 20th century. It has been frequently challenged in the court for its liberal use of profanity and portrayal of sexuality and in the 1950s and 60s it was the novel that every teenage boy wants to read.",title:"The Catcher in the Rye",image:"https://images.gr-assets.com/books/1398034300l/5107.jpg")


Userbook.create(user_id: 1 ,book_id: 1)
Userbook.create(user_id: 1,book_id: 2)
Userbook.create(user_id: 1,book_id: 3)
Userbook.create(user_id: 1,book_id: 4)
Userbook.create(user_id: 1,book_id: 5)
Userbook.create(user_id: 1,book_id: 6)
Userbook.create(user_id: 1,book_id: 7)
Userbook.create(user_id: 2,book_id: 8)
Userbook.create(user_id: 2,book_id: 9)
Userbook.create(user_id: 2,book_id: 10)
Userbook.create(user_id: 2,book_id: 11)
Userbook.create(user_id: 2,book_id: 12)
Userbook.create(user_id: 2,book_id: 13)
Userbook.create(user_id: 2,book_id: 14)
Userbook.create(user_id: 2,book_id: 15)
Userbook.create(user_id: 2,book_id: 16)
Userbook.create(user_id: 3 ,book_id: 1)
Userbook.create(user_id: 3,book_id: 2)
Userbook.create(user_id: 3,book_id: 3)
Userbook.create(user_id: 3,book_id: 4)
Userbook.create(user_id: 3,book_id: 5)
Userbook.create(user_id: 3,book_id: 6)
Userbook.create(user_id: 3,book_id: 7)
Userbook.create(user_id: 4,book_id: 8)
Userbook.create(user_id: 4,book_id: 9)
Userbook.create(user_id: 4,book_id: 10)
Userbook.create(user_id: 4,book_id: 11)
Userbook.create(user_id: 4,book_id: 12)
Userbook.create(user_id: 4,book_id: 13)
Userbook.create(user_id: 4,book_id: 14)
Userbook.create(user_id: 4,book_id: 15)
Userbook.create(user_id: 4,book_id: 16)
Userbook.create(user_id: 5 ,book_id: 1)
Userbook.create(user_id: 5,book_id: 2)
Userbook.create(user_id: 5,book_id: 3)
Userbook.create(user_id: 5,book_id: 4)
Userbook.create(user_id: 5,book_id: 5)
Userbook.create(user_id: 5,book_id: 6)
Userbook.create(user_id: 5,book_id: 7)
Userbook.create(user_id: 5,book_id: 8)
Userbook.create(user_id: 5,book_id: 9)
Userbook.create(user_id: 5,book_id: 10)
Userbook.create(user_id: 5,book_id: 11)
Userbook.create(user_id: 5,book_id: 12)
Userbook.create(user_id: 5,book_id: 13)
Userbook.create(user_id: 5,book_id: 14)
Userbook.create(user_id: 5,book_id: 15)
Userbook.create(user_id: 5,book_id: 16)
