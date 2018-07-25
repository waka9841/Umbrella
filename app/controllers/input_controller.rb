class InputController < ApplicationController
  def createtable
  	@location1 = Location.create(name: '渋谷109', longitude: '109_longitude', latitude: '109_latitude')
  	@location2 = Location.create(name: '渋谷駅', longitude: '渋谷駅_longitude', latitude: '渋谷駅_latitude')
  	@location3 = Location.create(name: 'セルリアンタワー', longitude: 'セルリアン_longitude', latitude: 'セルリアン_latitude')
  	for num in 1..10 do
  		@location1.kasas.create(state: 1)
  		@location2.kasas.create(state: 1)
  		@location3.kasas.create(state: 1)
  	end
  end

  def reset
  	Kasa.update_all('state = 1')
  end

  def show
  	@location_id = params[:post][:location]
  	@umbrellaCount = Kasa.where(location_id: @location_id, state: 1).count
  end

  def done
  	@result = params[:post][:uuid]
  	@location = Location.find_by(id: params[:post][:location])
  	if @location
  		@location.tokens.create(uuid: @result, expired_at: 10.minutes.since)
  	end
  end
end
