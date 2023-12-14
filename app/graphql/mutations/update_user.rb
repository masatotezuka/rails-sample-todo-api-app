# frozen_string_literal: true

module Mutations
  class UpdateUser < BaseMutation
    # return fields
    field :user, Types::UserType, null: false
    # input attributes
    argument :id, Integer, required: true
    argument :name, String, required: false
    argument :age, Integer, required: false

    # resolve method
    def resolve(**args)
      user = User.find(args[:id])
      user.update(args)
      { user: user }
    end
  end
end
# Test in GraphiQL
# mutation {
#   updateUser(
#     input:{
#       id:2,
#       name: "user1"
#     }
#   ){
#     user {
#       id
#       name 
#       age
#     }
#   }
# }