class Customer < ApplicationRecord
  has_one_attached :image # Active Storage TO DO: Add image to customer model

  #ransackable_attributes which is a class method that returns an array of attribute names that are allowed to be used for filtering and sorting.
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "notes", "phone_number", "updated_at"]
  end
end
