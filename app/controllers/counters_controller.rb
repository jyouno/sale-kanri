class CountersController < ApplicationController
  def index
    @counters = Counter.select(:day)
  end

  def show
  end
  
end
