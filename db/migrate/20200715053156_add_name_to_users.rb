class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :buiseness_name, :string
    add_column :users, :address, :string
  end
end
