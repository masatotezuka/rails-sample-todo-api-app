# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :age, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :tasks, [Types::TaskType], null: false
    def tasks
      AssociationLoader.for(User, :tasks).load(object)
    end
  end
end
#  Test in GraphiQL
# {
#   users {
#     id
#     name
#     tasks {
#       id
#       content
#     }
#   }
# }