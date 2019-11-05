class Post < ApplicationRecord
  belongs_to :user, default: -> { Current.user }
  validates :title, presence: true,
                    length: { minimum: 5 }

	after_create_commit :post_pending                
	scope :approved, -> { where(post_status: "approved") }
	scope :pending, -> { where(post_status: "pending") }
	scope :rejected, -> { where(post_status: "rejected") }

	def post_pending
		update(post_status: "pending")
	end
end
