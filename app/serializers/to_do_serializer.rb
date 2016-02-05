class ToDoSerializer < ActiveModel::Serializer
  attributes :id, :description, :user_id, :pomodoro_ids
end
