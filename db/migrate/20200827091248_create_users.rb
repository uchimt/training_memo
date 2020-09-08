class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname,        null: false
      t.string :email,           null: false
      t.string :password_digest, null: false
      t.string :remember_token
      t.float  :height
      t.timestamps
    end
  end
end
