class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :name
  
  has_many :messages
  has_many :users
end
