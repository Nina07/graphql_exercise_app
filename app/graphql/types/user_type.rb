class Types::UserType < Types::BaseObject
  description "User record"

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :steet, String, null: true
  field :number, Integer, null: true
  field :city, String, null: false
  field :postcode, String, null: false
  field :country, String, null: false

  field :full_name, String, null: false
  field :full_address, String, null: false

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  def full_address
    "#{object.city}  #{object.postcode} #{object.country}"
  end

  field :post, Types::PostType, null: true, description: "return one post made by a user" do
    argument :user_id, ID, required: true
  end

  def post(user_id:)
    Post.where(user_id: user_id).first
  end

  field :comment, Types::CommentType, null: true, description: "return a comment made by a user on a post" do
    argument :user_id, ID, required: true
  end

  def comment(user_id:)
    Comment.where(user_id: user_id).first
  end
end
