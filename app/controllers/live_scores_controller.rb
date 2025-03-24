class LiveScoresController < ApplicationController
  def index
    @live_scores = LiveScore.all
  end
end