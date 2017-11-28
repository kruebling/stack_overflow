require 'rails_helper'

describe Post, 'validation' do
  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :body }
  it { should validate_presence_of :body }
  it { should validate_numericality_of :user_id }
  it { should validate_presence_of :user_id }
end

describe Post, 'association' do
  it { should have_many :answers }
  it { should belong_to :user }
end
