class Post < ApplicationRecord
    has_many :comments, dependent: :delete_all #каждый пост имеет много комментариев
    validates :title, presence: true, length:{minimum: 5}
end
