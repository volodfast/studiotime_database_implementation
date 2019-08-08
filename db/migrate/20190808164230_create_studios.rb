class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.string :country
      t.string :town
      t.string :address
      t.integer :rating
      t.text :about
      t.integer :price
      t.text :rules
      t.text :amenilies
      t.text :work_hours
      t.text :equipment

      t.timestamps
    end
  end
end
