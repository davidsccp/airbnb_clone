class AddAndChangeColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :state, :string
  end

  def up
    change_column :users, :city, :string
  end

  def down
    change_column :users, :address, :string
  end
end
