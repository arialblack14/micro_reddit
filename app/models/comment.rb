class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :text, presence: true, length: { maximum: 250 }
  validates :user_id, presence: true, uniqueness: true
  validates :post_id, presence: true, uniqueness: true
end
