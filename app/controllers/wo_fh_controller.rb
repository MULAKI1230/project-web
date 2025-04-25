class WoFhController < ApplicationController
  def index
    @videos = Video.limit(10)
  end
end
