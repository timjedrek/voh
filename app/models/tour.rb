class Tour < ApplicationRecord

  scope :upcoming, -> {where('date >= ?', Time.now)}
  scope :previous, -> {where('date < ?', Time.now)}

end
