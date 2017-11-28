class Answer < ActiveRecord::Base
  belongs_to :post
  has_many :comments
  acts_as_votable

  validates :user_id, :presence => true
  validates :post_id, :presence => true
  validates :body, :presence => true
end
