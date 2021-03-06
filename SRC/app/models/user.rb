class User < ApplicationRecord
  has_many :products, dependent: :destroy
  rolify
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # The user model was made using devise and assigns guests user accounts and has many products

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
