class Mutations::CreateComment < GraphQL::Schema::Mutation
   description "creates a new comment for associated user"

   argument :comment, Types::CommentInputType, required: true

  def resolve(comment:)
    Comment.create comment.to_h
  end
end

# create comment
# mutation {
#   createComment(userId: "2", body: "copied post!") {
#     userId
#     body
#   }
# }

# syntax with input type and query variables
# mutation createComment($comment: CommentInputType!){
#   createComment(comment: $comment) {
#     id
#     userId
#     body
#   }
# }
# {
#   "comment": {
#     "userId": 1,
#     "body": "Go to the details fragment, click Book and in the Login fragment, enter your email and click Submit."
#   }
# }
