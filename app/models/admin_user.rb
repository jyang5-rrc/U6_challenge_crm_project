class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  #ransackable_attributes which is a class method that returns an array of attribute names that are allowed to be used for filtering and sorting.
  def self.ransackable_attributes(auth_object = nil)
    # List only the attributes you want to be searchable
    ["created_at", "email", "id", "updated_at"]
  end
end
