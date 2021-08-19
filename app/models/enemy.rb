class Enemy < ApplicationRecord
  enum kind: [:goblin, :orc, :demon, :slayer]
  validates :level, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 1000}
  validates_presence_of :name, :power_base, :power_step, :level, :kind

  def current_power
    power_base + level*power_step
  end
end
