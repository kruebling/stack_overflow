require 'rails_helper'

describe Answer, 'validation' do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :post_id }
  it { should validate_presence_of :body }
end

describe Answer, 'association' do
  it { should have_many :comments }
  it { should belong_to :post }
end
