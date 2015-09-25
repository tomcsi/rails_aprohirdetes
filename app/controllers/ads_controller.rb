class AdsController < ApplicationController

    def index
      @ads = Ad.all      
    end

    def new
      @ad = Ad.new
    end

    def create
      @ad = Ad.new(ad_params)
      if @ad.save
        redirect_to root_path
      else
        redirect_to new_ad_path        
      end
    
    end

    def index_with_edit
      @ads = Ad.all
    end

    def index_with_destroy

    end
 
private
  def ad_params
    params.require(:ad).permit(:title, :description)
  end

end
