class CountersController < ApplicationController
  def index
    @counters = Counter.select(:day)
  end
end
