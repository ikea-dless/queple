class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.date :birthday
      t.integer :sex, limit: 1
      t.string :town
      t.integer :marry, limit: 1
      t.string :avatar
      t.text :biography
      t.string :homepage
      t.integer :special_erea, limit: 1

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
