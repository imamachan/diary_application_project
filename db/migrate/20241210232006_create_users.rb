class CreateUsers < ActiveRecord::Migration[7.2]
  # def change
  #   create_table :users do |t|
  #     t.string :name, null: false
  #     t.string :email, null: false
  #     t.string :crypted_password
  #     t.string :salt
  #     t.timestamps
  #   end
  #   add_index :users, :email, unique: true
  # end
  def change
    create_table :users do |t|
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt
      t.string :first_name,       null: false
      t.string :last_name,        null: false

      t.timestamps                null: false
    end
  end
end

