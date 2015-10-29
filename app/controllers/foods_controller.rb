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

  def edit
    @tracking_period = TrackingPeriod.find(params[:tracking_period_id])
    @food = Food.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @tracking_period = TrackingPeriod.find(params[:tracking_period_id])
    @food = Food.find(params[:id])
    respond_to do |format|
      if @food.update(food_params)
        format.html{ redirect_to tracking_period_path(@tracking_period) }
        format.js
      else
        format.html{ render :edit }
        format.js{ render 'foods/new_food' }
      end
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @foodid = @food.id
    @food.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to tracking_period_path(@tracking_period) }
    end
  end

  private
    def food_params
      params.require(:food).permit(:name, :calories_per_serving, :servings)
    end
end
