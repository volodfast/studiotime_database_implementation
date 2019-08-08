class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phonenumber
      t.string :password_digest
      t.text :about

      t.timestamps
    end
  end
end
