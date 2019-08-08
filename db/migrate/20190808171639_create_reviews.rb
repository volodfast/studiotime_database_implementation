class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :customer, foreign_key: true
      t.references :studio, foreign_key: true
      t.text :text
      t.integer :for

      t.timestamps
    end
  end
end
