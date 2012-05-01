class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.text :profile
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :facebook
      t.string :twiter
      t.string :mobile
      t.string :phone
      t.date :birthday

      t.timestamps
    end
  end
end
