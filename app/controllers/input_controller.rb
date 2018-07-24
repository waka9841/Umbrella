class InputController < ApplicationController
  def index
  	@location1 = Location.new(name: '渋谷109', longitude: '109_longitude', latitude: '109_latitude')
  	@location2 = Location.new(name: '渋谷駅', longitude: '渋谷駅_longitude', latitude: '渋谷駅_latitude')
  	@location3 = Location.new(name: 'セルリアンタワー', longitude: 'セルリアン_longitude', latitude: 'セルリアン_latitude')
  	@location1.save
  	@location2.save
  	@location3.save
  end

  def show
  end

  def done
  	@result = params[:post][:uuid]
  	@location = Location.find_by_id(params[:post][:location])
  end
end
