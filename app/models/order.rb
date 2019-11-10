class Order < ApplicationRecord
  has_many :products
end
# The order model has a relation to the products in that an order can have many products
