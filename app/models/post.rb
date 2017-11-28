class Post < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  acts_as_votable

  validates :title, :presence => true
  validates :body, :presence => true
  validates :body, :uniqueness => true
  validates :user_id, :presence => true, numericality: { only_integer: true }
end
