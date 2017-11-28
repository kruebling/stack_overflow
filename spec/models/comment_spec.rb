require 'rails_helper'

describe Comment, 'validation' do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :post_id }
  it { should validate_presence_of :body }
end

describe Comment, 'association' do
  it { should belong_to :answer }
  it { should belong_to :user }
end
