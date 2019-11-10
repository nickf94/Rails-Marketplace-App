class Role < ApplicationRecord
has_and_belongs_to_many :users, :join_table => :users_roles

# The role model creates roles for the users and has relations to the user model
# Generated using Rolify
belongs_to :resource,
           :polymorphic => true,
           :optional => true


validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true

scopify
end
