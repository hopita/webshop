class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digesst, :string
  end
end
