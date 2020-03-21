class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :city
      t.string :neighbourhood
      t.string :address
      t.string :website
      t.timestamps
    end

    create_table :vouchers do |t|
      t.belongs_to :restaurant
      t.integer :cost
      t.string :notes
      t.timestamps
  end
end

# class CreateRestaurants < ActiveRecord::Migration[5.2]
#   def change
#     create_table :restaurants do |t|
#       t.string :name
#       t.decimal :latitude
#       t.decimal :longitude
#       t.string :city
#       t.string :neighbourhood
#       t.string :address
#       t.string :website

#       t.timestamps
#     end
#   end
# end


# class CreateAuthors < ActiveRecord::Migration[5.0]
#   def change
#     create_table :authors do |t|
#       t.string :name
#       t.timestamps
#     end

#     create_table :books do |t|
#       t.belongs_to :author
#       t.datetime :published_at
#       t.timestamps
#     end
#   end
# end

# class CreateVouchers < ActiveRecord::Migration[5.2]
#   def change
#     create_table :vouchers do |t|
#       t.integer :cost
#       t.string :notes
#       t.references :restaurant, index: true

#       t.timestamps
#     end
#   end
# end
