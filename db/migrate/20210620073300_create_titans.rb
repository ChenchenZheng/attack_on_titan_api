class CreateTitans < ActiveRecord::Migration[6.1]
  def change
    create_table :titans do |t|
      t.string :name
      t.string :other_names
      t.text :abilities
      t.string :current_inheritor
      t.string :former_inheritors
      t.string :allegiance

      t.timestamps
    end
  end
end
