class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :full_name, :phone
end
