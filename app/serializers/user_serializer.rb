class UserSerializer < ActiveModel::Serializer
  attributes :id, :recipes, :username, :password_digest, :image_url, :bio
end
