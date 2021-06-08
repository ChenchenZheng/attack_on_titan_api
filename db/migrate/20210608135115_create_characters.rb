class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.string :species
      t.integer :age
      t.integer :height
      t.string :residence
      t.string :status
      t.string :alias

      t.timestamps
    end
  end
end
