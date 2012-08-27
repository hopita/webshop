class RenameColumn < ActiveRecord::Migration
  def up
    rename_column :users, :password_digesst, :password_digest
  end

  def down
  end
end
