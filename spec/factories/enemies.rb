FactoryBot.define do
  factory :enemy do
    name {FFaker::Lorem.word}
    power_base {FFaker::Random.rand(1..9999)}
    power_step {FFaker::Random.rand(1..9999)}
    level {FFaker::Random.rand(1..1000)}
    kind {%w[goblin orc demon slayer].sample}
  end
end
