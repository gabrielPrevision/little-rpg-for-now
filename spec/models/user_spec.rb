require 'rails_helper'

RSpec.describe User, type: :model do
  let(:name) { "simple name" }

  it 'is invalid if the level is not between 1 and 1000' do
    user = build(:user, level: FFaker::Random.rand(1000..999999))
    expect(user).to_not be_valid
  end

  it 'it returns the correct user title' do
    nickname = FFaker::Name.first_name
    kind = %i[knight wizard].sample
    level = FFaker::Random.rand(1..1000)
    
    user = create(:user, nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq "The #{kind} #{nickname} ##{level}"
  end
end
