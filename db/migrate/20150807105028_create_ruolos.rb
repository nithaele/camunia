class CreateRuolos < ActiveRecord::Migration
  def change
    create_table :ruolos do |t|
      t.string :ruolo
      t.references :user, index: true

      t.timestamps
    end
  end
end
