# class CreateVouchers < ActiveRecord::Migration[5.2]
#   def change
#     create_table :vouchers do |t|
#       t.integer :cost
#       t.string :notes
# # below line is chancing it
#       t.references :restaurant, index: true

#       t.timestamps
#     end
#   end
# end
