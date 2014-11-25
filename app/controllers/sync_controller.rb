class SyncController < ApplicationController
  def index
    @email ||= Email.new
  end
  def create
    # Send email after 30 seconds

  end
end
