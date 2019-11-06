class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :posts, dependent: :destroy

   	#scope :approved, -> { where(post_status: "approved") }
	scope :pending, -> { 
		joins(:posts).where(posts: {post_status: "pending"})
	}
	#scope :rejected, -> { where(post_status: "rejected") }
	scope :manager, -> { where(role: "manager") }
	scope :sale, -> { where(role: "sale") }
	
end
