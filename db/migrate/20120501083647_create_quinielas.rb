class CreateQuinielas < ActiveRecord::Migration
  def change
    create_table :quinielas do |t|
      t.date :quiniela_date
      t.integer :code
      t.decimal :p15
      t.integer :a15
      t.decimal :p14
      t.integer :a14
      t.decimal :p13
      t.integer :a13
      t.decimal :p12
      t.integer :a12
      t.decimal :p11
      t.integer :a11
      t.decimal :p10
      t.integer :a10
      t.decimal :bote

      t.timestamps
    end
  end
end
