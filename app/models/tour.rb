class Tour < ApplicationRecord
  validates :date, presence: true
  validates :city, presence: true

  scope :upcoming, -> {where('date >= ?', Time.now)}
  scope :previous, -> {where('date < ?', Time.now)}

end
