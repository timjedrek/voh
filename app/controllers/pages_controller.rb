class PagesController < ApplicationController
  def home
    @video = Video.music_videos.last
  end

  def game_corner
  end

  def about
  end
  
  def merchandise
  end
end
