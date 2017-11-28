require 'rails_helper'

describe User, 'validation' do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :password }
end

describe User, 'association' do
  it { should have_many :posts }
  it { should have_many :comments }
  it { should have_many :answers }
end

describe User, 'column_specification' do
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:username).of_type(:string) }
  it { should have_db_column(:encrypted_password).of_type(:string) }
  it { should have_db_column(:sign_in_count).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
