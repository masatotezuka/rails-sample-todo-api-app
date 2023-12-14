# frozen_string_literal: true

module Mutations
  class CreateTask < BaseMutation
    field :task, Types::TaskType, null: false

    argument :content, String, required: true
    argument :user_id, Integer, required: true

    def resolve(**args)
      task = Task.create!(args)
      { task: task }
    end

  end
end
