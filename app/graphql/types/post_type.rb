class Types::PostType < Types::BaseObject
  description "post linked to a user"

  field :id, ID, null: false
  field :user_id, ID, null: false
  field :body, String, null: false
end
