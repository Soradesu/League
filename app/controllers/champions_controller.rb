class ChampionsController < ApplicationController
  def index
    @champions = Champion.order (:name)
  end
  def new
    @champion = Champion.new
  end
  def create
    @champion = Champion.new(champion_params)
    if @champion.save
      redirect_to champions_path
    else
      render :new
    end
  end
  private def champion_params
    params.require(:champion).permit(:name, :owned, :rp_cost, :be_cost)
  end
end
