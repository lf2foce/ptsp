class AddMoreFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :role, :string
    add_column :users, :website, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :phone, :integer
    add_column :users, :gender, :string
  end
end
