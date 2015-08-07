class AddCognomeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cognome, :string
  end
end
