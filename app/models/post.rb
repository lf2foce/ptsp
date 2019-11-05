class Post < ApplicationRecord
  belongs_to :user, default: -> { Current.user }
  validates :title, presence: true,
                    length: { minimum: 5 }
end
