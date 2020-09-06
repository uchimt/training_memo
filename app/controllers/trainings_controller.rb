class TrainingsController < ApplicationController
  before_action :logged_in_user, only:[:new, :edit, :update, :destroy]

  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

end
