FactoryBot.define do
  factory :user do
    nickname { FFaker::Lorem.word }
    level { FFaker::Random.rand(1..1000) }
    kind { %W[knight wizard].sample }
  end
end
