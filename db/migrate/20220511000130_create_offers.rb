class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :address
      t.integer :price
      t.string :description
      t.integer :capacity
      t.string :title

      t.timestamps
    end
  end
end
