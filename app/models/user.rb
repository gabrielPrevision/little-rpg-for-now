class User < ApplicationRecord
  enum kind: [:knight, :wizard]
  validates :level, numericality: { greater_than: 0, less_than_or_equal_to: 1000}

  def title
    "The #{self.kind} #{self.nickname} ##{self.level}"
  end # title
end
