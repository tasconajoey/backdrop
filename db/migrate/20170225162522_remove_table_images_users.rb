class RemoveTableImagesUsers < ActiveRecord::Migration[5.0]
  def up
    drop_table :images_users
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end