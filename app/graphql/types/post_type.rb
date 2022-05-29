class Types::PostType < Types::BaseObject
  description "post linked to a user"

  field :id, ID, null: false
  field :user_id, ID, null: false
  field :body, String, null: false
end

class Types::PostInputType < GraphQL::Schema::InputObject
  graphql_name "PostInputType"
  description "Post attributes"

  argument :id, ID, required: false
  argument :user_id, ID, required: true
  argument :body, String, required: true
end

# update mutation with input type and query parameters
# mutation updatePost($post: PostInputType!){
#   updatePost(post: $post)
# }
#
# {
#   "post": {
#     "id": 1,
#     "userId": 1,
#     "body": "testing if update works"
#   }
# }

# delete post
# mutation {
#   deletePost(id: "2")
# }
# doesn't require query params, only Id supplied in mutation
