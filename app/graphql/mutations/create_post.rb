class Mutations::CreatePost < GraphQL::Schema::Mutation
  description "creates a new post for the user"

  argument :post, Types::PostInputType, required: true

  def resolve(post:)
    Post.create post.to_h
  end
end

# creating mutation
# syntax 1
# mutation {
#   createPost(userId: "1", body: "In a system like REST, you can only pass a single set of arguments - the query parameters and URL segments in your request.") {
#     userId
#     body
#   }
# }
#
# syntax 2
# mutation {
#   createPost(userId: "2", body: "In a system like REST, you can only pass a single set of arguments - the query parameters and URL segments in your request.") {
#     userId
#     body
#   }
# }

# syntax 3 with input type and query variables
# mutation createPost($post: PostInputType!){
#   createPost(post: $post) {
#     id
#     userId
#     body
#   }
# }
# {
#   "post": {
#     "userId": 3,
#     "body": "Go to the details fragment, click Book and in the Login fragment, enter your email and click Submit."
#   }
# }
