class ScheduledsController < ApplicationController
  before_action :set_meeting
  before_action :set_counter

  def index
    @counters_json = @counters.to_json.html_safe
  end

  def show
  end

  private

  def set_meeting
    @meetings = current_user.meetings
  end

  def set_counter
    @counters = Counter.select(:title, :day)
  end
end
