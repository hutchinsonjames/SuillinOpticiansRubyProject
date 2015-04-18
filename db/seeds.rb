user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Product.delete_all
#Product.create! id: 1, name: "Widget 1", price: 0.50, active: true
#Product.create! id: 2, name: "Blah Blah 2", price: 1.00, active: true
#Product.create! id: 3, name: "Bibbile Babble", price: 10.00, active: true

Product.create! id: 1, name: 'Ray Ban', model: 'Club Master', category: 'Men', description: 'Desctiption_man_01', price: 110.00, thumburl: 'Products/man01.jpg', active: true
Product.create! id: 2, name: 'Ray Ban', model: 'Wayfarer', category: 'Men', description: 'Desctiption_man_02', price: 120.00, thumburl: 'Products/man02.jpg', active: true
Product.create! id: 3, name: 'Oakley', model: 'Black', category: 'Men', description: 'Desctiption_man_03', price: 130.00, thumburl: 'Products/man03.jpg', active: true
Product.create! id: 4, name: 'Oakley', model: 'Sport', category: 'Men', description: 'Desctiption_man_04', price: 140.00, thumburl: 'Products/man04.jpg', active: true
Product.create! id: 5, name: 'D&G', model: 'Classic', category: 'Men', description: 'Desctiption_man_04', price: 150.00, thumburl: 'Products/man05.jpg', active: true
Product.create! id: 6, name: 'D&G', model: 'Pilot', category: 'Men', description: 'Desctiption_man_04', price: 160.00, thumburl: 'Products/man06.jpg', active: true

#   Seeds for Women Products

Product.create! id: 7, name: 'Ray Ban', model: 'Oversized', category: 'Women', description: 'Desctiption_woman_01', price: 210.00, thumburl: 'Products/woman01.jpg', active: true
Product.create! id: 8, name: 'Ray Ban', model: 'Metal', category: 'Women', description: 'Desctiption_woman_02', price: 220.00, thumburl: 'Products/woman02.jpg', active: true
Product.create! id: 9, name: 'Oakley', model: 'Compulisve', category: 'Women', description: 'Desctiption_woman_03', price: 230.00, thumburl: 'Products/woman03.jpg', active: true
Product.create! id: 10, name: 'Oakley', model: 'Commit', category: 'Women', description: 'Desctiption_woman_04', price: 240.00, thumburl: 'Products/woman04.jpg', active: true
Product.create! id: 11, name: 'D&G', model: 'Butterfly', category: 'Women', description: 'Desctiption_woman_05', price: 250.00, thumburl: 'Products/woman05.jpg', active: true
Product.create! id: 12, name: 'D&G', model: 'Cat Eye', category: 'Women', description: 'Desctiption_woman_06', price: 260.00, thumburl: 'Products/woman06.jpg', active: true



OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"