# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: false

    argument :name, String, required: true
    argument :age, Integer, required: true

    def resolve(**args)
      user = User.create!(args)
      { user: user }
    end
    
  end
end
