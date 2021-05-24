class AddRolesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :roles, :integer, array: true, default: [2]
  end
end
