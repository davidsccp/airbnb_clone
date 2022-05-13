class AddAndChangeColumnAddress2 < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :state, :string
  end

  def up
    change_column :offers, :city, :string
  end

  def down
    change_column :offers, :address, :string
  end
end
