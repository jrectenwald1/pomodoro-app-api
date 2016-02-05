class PomodoroSerializer < ActiveModel::Serializer
  attributes :id, :task, :to_do_id
end
