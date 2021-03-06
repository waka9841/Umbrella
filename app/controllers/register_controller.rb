class RegisterController < ApplicationController
  def show
  end

  def done
  	@validate = tokenCheck(params[:post][:uuid], params[:post][:location])
  	@location = Location.find_by(id: params[:post][:location])
    @locationNum = params[:post][:location].to_i - 1
    @returnLocation = ['渋谷109', '渋谷駅', 'セルリアンタワー']
  	if @validate
      @kasa_id =lendUmbrella(@location.kasas.where(state: 1).order('id'))
      @returnDate = 7.days.since.strftime("%Y年%m月%d日")
    end
  end

  private
  def tokenCheck(postToken, location)
  	@location = Location.find_by(id: location)
  	@tokens = @location.tokens.where(uuid: postToken)
  	return expiredCheck(@tokens) ? true : false
  end

  def expiredCheck(tokens)
  	tokens.each do |token|
  		if token.expired_at > Time.now
  			token.expired_at = Time.now
  			token.save
  			return true
  		end
  	end
  	return false
  end

  def lendUmbrella(kasas)
  	kasas.first.state = 2
  	kasas.first.save
  	return kasas.first.id
  end
end
