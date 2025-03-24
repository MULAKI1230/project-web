class AddAdminGroupToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :admin_group, :boolean
  end
end
