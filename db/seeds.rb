puts "🌱 Seeding Initiated 🌱 "


puts "Seeding users..."
User.create(username: "Grant123", email: "grant123@gmail.com", address: "123 Grant Street, Granton, GR USA", name: "Grant Pierce", phone: "1231231231", password: "123Grant")
User.create(username: "test", email: "test@gmail.com", address: "123 Test Street, Testford, TE USA", name: "Test", phone: "0000000000", password: "test")


puts "Seeding books..."
Book.create(title: "The Fellowship of the Ring", 
            author: "J.R.R. Tolkien", 
            genre: "Fantasy", 
            category: "Fiction", 
            description: "One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkeness bind them...\n\nIn ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, The Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell into the hands of Bilbo Baggins, as told in The Hobbit.\n\nIn a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.", 
            rating: 4.37,
            price: 3.57,
            image: "https://m.media-amazon.com/images/I/41kUPvqlguL.jpg",
            total_quantity: 250,
            quantity_in_stock: 42,
            date_added: DateTime.new(2022, 1, 26, 1, 5, 12),
            discount: 0)

Book.create(title: "The Two Towers", 
            author: "J.R.R. Tolkien", 
            genre: "Fantasy", 
            category: "Fiction", 
            description: "One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them...\n\nFrodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in a battle in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs. Now they continue the journey alone down the great River Anduin—alone, that is, save for the mysterious creeping figure that follows wherever they go.", 
            rating: 4.46,
            price: 3.57,
            image: "https://m.media-amazon.com/images/I/4123zOAwAgL.jpg",
            total_quantity: 250,
            quantity_in_stock: 142,
            date_added: DateTime.new(2022, 1, 26, 1, 6, 46),
            discount: 0)

Book.create(title: "The Return of the King", 
            author: "J.R.R. Tolkien", 
            genre: "Fantasy", 
            category: "Fiction", 
            description: "One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkeness bind them...\n\nIn the third volume of The Lord of the Rings trilogy the good and evil forces join battle, and we see that the triumph of good is not absolute. The Third Age of Middle-earth ends, and the age of the dominion of Men begins.", 
            rating: 4.87,
            price: 3.57,
            image: "https://m.media-amazon.com/images/I/41KGl2FqeAL.jpg",
            total_quantity: 250,
            quantity_in_stock: 81,
            date_added: DateTime.new(2022, 1, 26, 1, 6, 58),
            discount: 0)

Book.create(title: "The Hobbit, or There and Back Again", 
            author: "J.R.R. Tolkien", 
            genre: "Fantasy", 
            category: "Fiction", 
            description: "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.\n\nWritten for J.R.R. Tolkien’s own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent.", 
            rating: 4.28,
            price: 3.57,
            image: "https://images-na.ssl-images-amazon.com/images/I/710+HcoP38L.jpg",
            total_quantity: 100,
            quantity_in_stock: 60,
            date_added: DateTime.new(2022, 1, 26, 1, 7, 5),
            discount: 25)

Book.create(title: "Goodnight Moon", 
            author: "Margaret Wise Brown", 
            genre: "Childrens", 
            category: "Fiction", 
            description: "In a great green room, tucked away in bed, is a little bunny. 'Goodnight room, goodnight moon.' And to all the familiar things in the softly lit room -- to the picture of the three little bears sitting on chairs, to the clocks and his socks, to the mittens and the kittens, to everything one by one -- the little bunny says goodnight.\n\nIn this classic of children's literature, beloved by generations of readers and listeners, the quiet poetry of the words and the gentle, lulling illustrations combine to make a perfect book for the end of the day.", 
            rating: 4.29,
            price: 10.10,
            image: "https://images-na.ssl-images-amazon.com/images/I/91WuHblNkEL.jpg",
            total_quantity: 150,
            quantity_in_stock: 57,
            date_added: DateTime.new(2022, 1, 26, 1, 15, 38),
            discount: 90)

Book.create(title: "Pale Blue Dot: A Vision of the Human Future in Space", 
            author: "Carl Sagan, Ann Druyan", 
            genre: "Science", 
            category: "Nonfiction", 
            description: "Pulitzer Prize-winning author Carl Sagan traces our exploration of space and suggests that our very survival may depend on the wise use of other worlds. This stirring book reveals how scientific discovery has altered our perception of who we are and where we stand, and challenges us to weigh what we will do with that knowledge.", 
            rating: 4.30,
            price: 4.50,
            image: "https://m.media-amazon.com/images/I/51uklIvHaLL.jpg",
            total_quantity: 150,
            quantity_in_stock: 62,
            date_added: DateTime.new(2022, 1, 26, 1, 21, 19),
            discount: 0)

Book.create(title: "Beyond Good & Evil: Prelude to a Philosophy of the Future", 
            author: "Friedrich Nietzsche", 
            genre: "Philosophy", 
            category: "Nonfiction", 
            description: "Beyond Good and Evil confirmed Nietzsche's position as the towering European philosopher of his age. The work dramatically rejects the tradition of Western thought with its notions of truth and God, good and evil. Nietzsche demonstrates that the Christian world is steeped in a false piety and infected with a 'slave morality'. With wit and energy, he turns from this critique to a philosophy that celebrates the present and demands that the individual imposes their own 'will to power' upon the world.", 
            rating: 4.71,
            price: 4.50,
            image: "https://images-na.ssl-images-amazon.com/images/I/41ND61b-wqL._SX322_BO1,204,203,200_.jpg",
            total_quantity: 100,
            quantity_in_stock: 19,
            date_added: DateTime.new(2022, 1, 26, 1, 26, 20),
            discount: 0)

Book.create(title: "For a New Liberty", 
            author: "Murray N. Rothbard", 
            genre: "Philosophy", 
            category: "Nonfiction", 
            description: "A classic that for over two decades has been hailed as the best general work on libertarianism available. Rothbard begins with a quick overview of its historical roots, and then goes on to define libertarianism as resting 'upon one single axiom: that no man or group of men shall aggress upon the person or property of anyone else.' He writes a withering critique of the chief violator of liberty: the State. Rothbard then provides penetrating libertarian solutions for many of today's most pressing problems, including poverty, war, threats to civil liberties, the education crisis, and more.", 
            rating: 4.32,
            price: 4.50,
            image: "https://images-na.ssl-images-amazon.com/images/I/41hHmHFnOGL._SX312_BO1,204,203,200_.jpg",
            total_quantity: 100,
            quantity_in_stock: 73,
            date_added: DateTime.new(2022, 1, 26, 1, 31, 1),
            discount: 0)

Book.create(title: "A Brief History of Time", 
            author: "Stephen Hawking", 
            genre: "Science", 
            category: "Nonfiction", 
            description: "A landmark volume in science writing by one of the great minds of our time, Stephen Hawking’s book explores such profound questions as: How did the universe begin—and what made its start possible? Does time always flow forward? Is the universe unending—or are there boundaries? Are there other dimensions in space? What will happen when it all ends?\n\nTold in language we all can understand, A Brief History of Time plunges into the exotic realms of black holes and quarks, of antimatter and “arrows of time,” of the big bang and a bigger God—where the possibilities are wondrous and unexpected. With exciting images and profound imagination, Stephen Hawking brings us closer to the ultimate secrets at the very heart of creation.", 
            rating: 4.70,
            price: 4.50,
            image: "https://images-na.ssl-images-amazon.com/images/I/A1xkFZX5k-L.jpg",
            total_quantity: 100,
            quantity_in_stock: 80,
            date_added: DateTime.new(2022, 1, 26, 1, 42, 53),
            discount: 20)

Book.create(title: "The Code Book: The Science of Secrecy from Ancient Egypt to Quantum Cryptography", 
            author: "Simon Singh", 
            genre: "Science", 
            category: "Nonfiction", 
            description: "In his first book since the bestselling Fermat’s Enigma, Simon Singh offers the first sweeping history of encryption, tracing its evolution and revealing the dramatic effects codes have had on wars, nations, and individual lives. From Mary, Queen of Scots, trapped by her own code, to the Navajo Code Talkers who helped the Allies win World War II, to the incredible (and incredibly simple) logisitical breakthrough that made Internet commerce secure, The Code Book tells the story of the most powerful intellectual weapon ever known: secrecy.", 
            rating: 4.27,
            price: 4.50,
            image: "https://images-na.ssl-images-amazon.com/images/I/71fSWKBI1CL.jpg",
            total_quantity: 100,
            quantity_in_stock: 35,
            date_added: DateTime.new(2022, 1, 26, 1, 47, 13),
            discount: 0)



puts "✅  Done seeding! ✅ "
