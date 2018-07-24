class RegisterController < ApplicationController
  def index
  end

  def show
  end

  def done
  	@validate = tokenCheck(params[:post][:uuid], params[:post][:location])
  	@location = Location.find_by_id(params[:post][:location])
  	@dbToken = @location.tokens.find_by_uuid(params[:post][:uuid])
  end

  private
  def tokenCheck(postToken, location)
  	@location = Location.find_by_id(location)
  	@dbToken = @location.tokens.find_by_uuid(postToken)
  	return @dbToken ? expiredCheck(@dbToken) : false
  end

  def expiredCheck(token)
  	return token.expired_at > Time.now ? true : false
  end
end
