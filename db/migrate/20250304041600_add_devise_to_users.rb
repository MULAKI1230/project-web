class AddDeviseToUsers < ActiveRecord::Migration[6.0]
  def up
    change_table :users do |t|
      t.string :email, default: '', null: false unless column_exists?(:users, :email)
      # Add other Devise columns here
    end
  end

  def down
    change_table :users do |t|
      t.remove :email if column_exists?(:users, :email)
      # Remove other Devise columns here
    end
  end
end