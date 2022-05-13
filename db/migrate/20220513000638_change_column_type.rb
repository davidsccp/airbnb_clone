class ChangeColumnType < ActiveRecord::Migration[6.1]
def up
  change_column :users, :role, :string
end

def down
  change_column :users, :role, :boolean
end
end
