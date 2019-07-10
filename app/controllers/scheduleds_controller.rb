class ScheduledsController < ApplicationController
  before_action :set_meeting

  def index
  end

  def show
  end

  private

  def set_meeting
    @meetings = current_user.meetings
  end

end
