class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.string :email

      t.timestamps
    end

    add_index :users, [:uid, :provider]
  end

  def down
    drop_table :users
  end
end
