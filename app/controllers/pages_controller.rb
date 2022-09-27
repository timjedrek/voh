class PagesController < ApplicationController
  def home
    @feature = Feature.all
  end

  def game_corner
  end
  
  def merchandise
  end
end
