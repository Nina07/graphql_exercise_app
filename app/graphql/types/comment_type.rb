class Types::CommentType < Types::BaseObject
  description "comments made by a user"

  field :id, ID, null: false
  field :user_id, ID, null: false
  field :body, String, null: false
end
