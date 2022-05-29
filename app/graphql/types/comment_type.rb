class Types::CommentType < Types::BaseObject
  description "comments made by a user"

  field :id, ID, null: false
  field :user_id, ID, null: false
  field :body, String, null: false
end

class Types::CommentInputType < GraphQL::Schema::InputObject
  graphql_name "CommentInputType"
  description "required comment attributes"

  argument :id, ID, required: false
  argument :user_id, ID, required: true
  argument :body, String, required: true
end

# updating comment using input type and query params
# mutation updateComment ($comment: CommentInputType!){
#   updateComment(comment: $comment)
# }
#
# {
#   "comment": {
#     "id": 1,
#     "userId": 1,
#     "body": "testing if updating comment works"
#   }
# }

# deleting comment
# mutation deleteComment ($comment: CommentInputType!){
#   deleteComment(comment: $comment)
# }
# {
#   "comment": {
#     "id": 1,
#     "userId": 1,
#     "body": "testing if updating comment works"
#   }
# }
