class Comment < ApplicationRecord
  belongs_to :post #комментарии принадлежат к постам
end
