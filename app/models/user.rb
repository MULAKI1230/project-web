class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Default nilai false untuk admin_group jika nil

  after_initialize :set_default_admin_group, if: :new_record?

  def self.serialize_from_session(key, salt)
    record = to_adapter.get(key.is_a?(Array) ? key.first : key)
    record if record && record.authenticatable_salt == salt
  end
  
  def set_default_admin_group
    self.admin_group ||= false
  end   
end
