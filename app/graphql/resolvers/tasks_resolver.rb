module Resolvers
  class TasksResolver < BaseResolver
    description "Find tasks"
    type [Types::TaskType], null: false

    def resolve()
      Task.all
    end
  end
end