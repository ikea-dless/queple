class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.integer :sex
      t.string :town
      t.string :married
      t.string :integer
      t.string :avatar
      t.text :biography
      t.string :homepage
      t.integer :special_erea

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
