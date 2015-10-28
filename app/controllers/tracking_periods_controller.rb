class TrackingPeriodsController < ApplicationController
  before_action :find_stats, except: [:new, :create, :index]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tracking_periods = TrackingPeriod.all
    @tracking_period = TrackingPeriod.find_by(id: current_user.id)
  end

  def show
  end

  def new
    @tracking_period = TrackingPeriod.new
  end

  def create
    @tracking_period = TrackingPeriod.new(tracking_period_params)
    if @tracking_period.save
      redirect_to tracking_periods_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tracking_period.update(tracking_period_params)
      redirect_to tracking_periods_path
    else
      render :edit
    end
  end

  def destroy
    @tracking_period.destroy
    redirect_to tracking_periods_path
  end

  private
    def find_stats
      @tracking_period = TrackingPeriod.find(params[:id])
    end
    def stat_params
      params.require(:tracking_period).permit(:calorie_count)
    end
end
