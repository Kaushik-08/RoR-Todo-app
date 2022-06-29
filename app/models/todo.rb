class Todo < ApplicationRecord
    validates :todo_task, presence: true
    def to_pleasent_string
        "#{id}: #{todo_task} #{completed} #{created_at}"
    end
end
