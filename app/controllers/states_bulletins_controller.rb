class StatesBulletinsController < ApplicationController
  def index
    @states_bulletins = StatesBulletin.all

    render json: @states_bulletins
  end
end
