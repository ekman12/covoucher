class CreateVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :vouchers do |t|
      t.integer :cost
      t.string :notes

      t.timestamps
    end
  end
end
