class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :id, unique: true
  end
end
