class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :quiniela
      t.references :team1
      t.references :team2
      t.date :matchday
      t.integer :goals1
      t.integer :goals2
      t.string :res

      t.timestamps
    end
    add_index :matches, :quiniela_id
    add_index :matches, :team1_id
    add_index :matches, :team2_id
  end
end
