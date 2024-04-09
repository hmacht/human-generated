class VerificationRequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_verification_requests, only: [:index, :show]

  def index
  end

  def new
    @verification_request = VerificationRequest.new
  end

  def show 
    @verification_request = @verification_requests.find(params[:id])
  end
  
  def create
    @verification_request = VerificationRequest.new(verification_request_params)

    if @verification_request.save
      @verification_request.update(
        certified_url: verification_request_url(@verification_request)
      )
      redirect_to verification_requests_path, notice: "Verification Request created successfully"
    else
      render :new
    end
  end

  private
  
  def verification_request_params
    params.require(:verification_request).permit(:title, :content).merge(user_id: current_user.id)
  end

  def set_verification_requests
    @verification_requests = current_user.verification_requests
  end
end
