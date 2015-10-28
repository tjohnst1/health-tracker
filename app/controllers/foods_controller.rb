class FoodsController < ApplicationController
  def new
    @tracking_period = TrackingPeriod.find(params[:tracking_period_id])
    @food = Food.new
    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    @tracking_period = TrackingPeriod.find(params[:tracking_period_id])
    @food = @tracking_period.foods.new(food_params)
    respond_to do |format|
      if @food.save
        format.html{ redirect_to tracking_period_path(@tracking_period) }
        format.js
      else
        format.html{ render :new }
        format.js
      end
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to tracking_period_path(@tracking_period)
  end

  private
    def food_params
      params.require(:food).permit(:name, :calories_per_serving, :servings)
    end
end
