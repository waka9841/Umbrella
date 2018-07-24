class RegisterController < ApplicationController
  def index
  end

  def show
  end

  def done
  	@validate = tokenCheck(params[:post][:uuid], params[:post][:location])
  end

  private
  def tokenCheck(token, location)
  	@location = Location.find_by_id(location)
  	return @location.tokens.find_by_uuid(token) ? true : false
  end
end
