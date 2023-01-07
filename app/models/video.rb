class Video < ApplicationRecord
  validates :title, presence: true
  validates :code, presence: true

  scope :music_videos, -> {where('category = ?', 'Music Videos')}
  scope :battle_rap, -> {where('category = ?', 'Battle Rap')}
  scope :artists_to_watch, -> {where('category = ?', 'Artists to Watch')}
  scope :interviews, -> {where('category = ?', 'Interviews')}
end
