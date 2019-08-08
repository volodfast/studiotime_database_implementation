class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :customer, foreign_key: true
      t.references :studio, foreign_key: true
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :price
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
