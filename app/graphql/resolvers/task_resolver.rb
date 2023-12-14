module Resolvers
  class TaskResolver < BaseResolver
    description "Find a task by ID"
    type Types::TaskType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Task.find(id)
    end
  end
end