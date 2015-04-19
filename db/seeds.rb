user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Product.delete_all
#Product.create! id: 1, name: "Widget 1", price: 0.50, active: true
#Product.create! id: 2, name: "Blah Blah 2", price: 1.00, active: true
#Product.create! id: 3, name: "Bibbile Babble", price: 10.00, active: true

Product.create! id: 1, name: 'Ray Ban', model: 'Club Master', category: 'Men', description: 'Ray-Ban Clubmaster Classic sunglasses are retro and timeless. Inspired by the 50’s, the unmistakable design of the Clubmaster Classic is worn by cultural intellectuals, those who lead the changed tomorrow.', price: 110.00, thumburl: 'Products/man01.jpg', active: true
Product.create! id: 2, name: 'Ray Ban', model: 'Wayfarer', category: 'Men', description: 'Ray-Ban Original Wayfarer® Classics are the most recognizable style in the history of sunglasses. Since it’s initial design in 1952, Wayfarer Classics gained popularity among celebrities, musicians, artists and those with an impeccable fashion sense. As an iconic style of sunglasses, Original Wayfarer Classics always make a statement.', price: 120.00, thumburl: 'Products/man02.jpg', active: true
Product.create! id: 3, name: 'Oakley', model: 'Holbrook', category: 'Men', description: 'Holbrook is a timeless classic that echoes the screen heroes from the 1940s, 50s and 60s, the icons who inspired youth with their own brand of defiance. Who was the legend? He was sometimes a loner and sometimes a leader, an everyman who lived by a code, stood up for what was right and did what needed to be done.', price: 130.00, thumburl: 'Products/man03.jpg', active: true
Product.create! id: 4, name: 'Oakley', model: 'Radar Path', category: 'Men', description: 'Pro proven by the likes of former World Champion mountain biker, Cedric Gracia, Radar Sunglasses boast Oakleys Hydrophobic lens coating to repel dust while maintaining a smudge-resistant barrier against skin oils, fingerprints, chamois lotion, sunscreen, water streaks', price: 140.00, thumburl: 'Products/man04.jpg', active: true
Product.create! id: 5, name: 'D&G', model: 'Classic', category: 'Men', description: 'The D&G sunglasses collection found here denotes both elegance and style. The selection here also offers a sportier style for those needing that look. Whether seen on the beaches or anywhere else, D & G sunglasses are instantly recognized on a person’s face.', price: 150.00, thumburl: 'Products/man05.jpg', active: true
Product.create! id: 6, name: 'D&G', model: 'Pilot', category: 'Men', description: 'The D&G sunglasses collection found here denotes both elegance and style. The selection here also offers a sportier style for those needing that look. Whether seen on the beaches or anywhere else, D & G sunglasses are instantly recognized on a person’s face.', price: 160.00, thumburl: 'Products/man06.jpg', active: true

#   Seeds for Women Products

Product.create! id: 7, name: 'Ray Ban', model: 'Oversized', category: 'Women', description: 'A unique take on the classic feminine look, Jackie Ohh II steps up the boldness in sunglasses. Featuring rounded corners and a deeper, oversized rectangle lens shape than its predecessor, the Jackie Ohh, these sunglasses are made to dazzle.', price: 210.00, thumburl: 'Products/woman01.jpg', active: true
Product.create! id: 8, name: 'Ray Ban', model: 'Metal', category: 'Women', description: 'The Ray-Ban® Wayfarer Flat Metal is a reinterpretation of the most recognizable style in the history of sunglasses. Available in five matte colors and with gradient or mirror lenses. The laser cut metal in pure stainless steel, ensures an extremely precise, thin and lightweight frame, for a modern twist', price: 220.00, thumburl: 'Products/woman02.jpg', active: true
Product.create! id: 9, name: 'Oakley', model: 'Compulisve', category: 'Women', description: 'Hello, sunshine! Make an entrance in Oakley Splash, this season’s retro glam must-have. The oversized, exaggerated square frames have a vintage vibe that’s unmistakably cool. But they’re also made to perform, which makes Oakley Splash way more than just another pretty face.', price: 230.00, thumburl: 'Products/woman03.jpg', active: true
Product.create! id: 10, name: 'Oakley', model: 'Commit', category: 'Women', description: 'Oakley created Commit sunglasses specifically for the female performance athlete, taking comfort, fit and style to the next level with the kind of bold beauty that celebrates the power and grace of the female form. Medium to bright light. Filters blue light to increase contrast and improve depth perception in a wide variety of conditions. ', price: 240.00, thumburl: 'Products/woman04.jpg', active: true
Product.create! id: 11, name: 'D&G', model: 'Butterfly', category: 'Women', description: 'The world of D&G is a mix of people, cultures, colors, music and countries, without borders or age. The inspiration behind the collections pays great attention to cuts and proportions, and to a balance between quality, style and price. D&G is a world of its own within the universe of Dolce & Gabbana: a world where fashion means irony and fantasy, where music plays a key role to re-define style,', price: 250.00, thumburl: 'Products/woman05.jpg', active: true
Product.create! id: 12, name: 'D&G', model: 'Cat Eye', category: 'Women', description: 'The world of D&G is a mix of people, cultures, colors, music and countries, without borders or age. The inspiration behind the collections pays great attention to cuts and proportions, and to a balance between quality, style and price. D&G is a world of its own within the universe of Dolce & Gabbana: a world where fashion means irony and fantasy, where music plays a key role to re-define style,', price: 260.00, thumburl: 'Products/woman06.jpg', active: true



OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"