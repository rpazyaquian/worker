class AsyncController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end
  def create
    binding.pry
    # params[:email]
    # params[:body]

    # Send mail

    # Render template
    # @email = Email.new(email_params)

    FollowUpEmailJob.new(params[:email]).enqueue(wait: 30.seconds)

    render "index"
  end
end
