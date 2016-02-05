class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :to_do_ids
end
