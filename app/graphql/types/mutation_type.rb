# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :update_user, mutation: Mutations::UpdateUser
    field :create_user, mutation: Mutations::CreateUser
    
    field :test_field, String, null: false, description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
