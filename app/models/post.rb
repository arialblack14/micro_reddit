class Post < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 150 },
                    uniqueness: { case_sensitive: false }
  validates :body, presence: true, length: { maximum: 700 }
end
