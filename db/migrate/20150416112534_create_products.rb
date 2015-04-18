class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    
      t.string :name
      t.string :model
      t.string :category  
      t.text :description
      t.decimal :price,      precision: 12, scale: 3
      t.string :thumburl
      t.boolean :active

      t.timestamps
    end
  end
end
