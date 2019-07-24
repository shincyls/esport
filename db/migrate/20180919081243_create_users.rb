class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :identity_number, limit: 14
      t.string :email
      t.date :birthday
      t.boolean :approval, default: false
      t.string :password_digest
      t.string :remember_digest
      t.integer :role, default: 2
      t.string :password_reset_token
      t.datetime :password_reset_sent_at
      t.integer :timezone, default: 8
      t.timestamps
    end
  end
end
