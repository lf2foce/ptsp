class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy

	scope :pending, -> { 
		joins(:posts).where(posts: {post_status: "pending"})
	}
	scope :rejected, -> { 
		joins(:posts).where(posts: {post_status: "rejected"})
	}
	scope :approved, -> { 
		joins(:posts).where(posts: {post_status: "approved"})
	}

	scope :manager, -> { where(role: "manager") }
	scope :sale, -> { where(role: "sale") }
	
end
