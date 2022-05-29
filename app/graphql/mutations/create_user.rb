class Mutations::CreateUser < GraphQL::Schema::Mutation
  null false

  argument :user, Types::UserInputType, required: true

  def resolve(user:)
    User.create user.to_h
  end
end


# create user with query variables
# mutation createUser($first_name: String!, $last_name: String, $street: String, $number: Int, $city: String!, $postcode: String!, $country: String!){
#   createUser(firstName: $first_name, lastName: $last_name, street: $street, number: $number, city: $city , postcode: $postcode, country: $country) {
#     id
#     fullName
#     fullAddress
#
#   }
# }
# {
#   "first_name": "Cal",
#   "last_name": "Z",
#   "street": "Mystique",
#   "number": 4,
#   "city": "GLR",
#   "postcode": "4738748",
#   "country": "Canada"
# }

# using input type, creation
# mutation createUser($user: UserInputType!){
#   createUser(user: $user) {
#     id
#     fullName
#     fullAddress
#   }
# }
#
# {
#   "user": {
#     "firstName": "Catherine",
#     "lastName": "Z",
#     "street": "Mystique",
#     "number": 5,
#     "city": "GLR",
#     "postcode": "4738748",
#     "country": "Canada"
# 	}
# }

# update_user
# mutation updateUser($user: UserInputType!) {
#   updateUser(user: $user)
# }

#delete user
# mutation {
#   deleteUser(id: "4")
# }
