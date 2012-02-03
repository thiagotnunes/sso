class CreateIdentities < ActiveRecord::Migration
  def up
    create_table :identities do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end

  def down
    drop_table :identities
  end
end
