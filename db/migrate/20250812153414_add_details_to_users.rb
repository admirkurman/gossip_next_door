class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :forename, :string
    add_column :users, :surname, :string
    add_column :users, :shortbio, :string
    add_reference :users, :community, index: true
  end
end
