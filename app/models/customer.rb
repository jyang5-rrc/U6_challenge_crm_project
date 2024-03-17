class Customer < ApplicationRecord
  #validation
  validates :full_name, presence: true


  has_one_attached :image # Active Storage TO DO: Add a image to customer model
  #has_many_attached :images # Active Storage TO DO: Add images to customer model

  #ransackable_attributes which is a class method that returns an array of attribute names that are allowed to be used for filtering and sorting.
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "notes", "phone_number", "updated_at"]
  end


end
