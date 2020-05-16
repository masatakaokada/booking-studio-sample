class StudiosController < ApplicationController
  before_action :set_studio, only: %i[show]

  def index
    @studios = Studio.all
  end

  def show
  end

  private

  def set_studio
    @studio = Studio.find(params[:id])
  end
end
