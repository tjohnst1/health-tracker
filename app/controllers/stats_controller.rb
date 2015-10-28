class StatsController < ApplicationController
  before_action :find_stats, except: [:new, :create, :index]

  def index
    @stats = Stat.all
  end

  def show
  end

  def new
    @stat = Stat.new
  end

  def create
    @stat = Stat.new(stat_params)
    if @stat.save
      redirect_to stats_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @stat.update(stat_params)
      redirect_to stats_path
    else
      render :edit
    end
  end

  def destroy
    @stat.destroy
    redirect_to stats_path
  end

  private
    def find_stats
      @stat = Stat.find(params[:id])
    end
    def stat_params
      params.require(:daily_stats).include(:calories)
    end
end
