class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  # The product model has a relation to the user model and has an image attached to it
  def can_edit?(user)
    return user == self.user || user.has_role?(:admin)
  end
end
