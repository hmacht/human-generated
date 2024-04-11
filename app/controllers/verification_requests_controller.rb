class VerificationRequestsController < ApplicationController
  before_action :authenticate_user!, except: [:show] 

  def index
    @verification_requests = current_user.verification_requests
  end

  def new
    @verification_request = VerificationRequest.new
  end

  def show 
    @verification_request = VerificationRequest.find(params[:id])
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
end
