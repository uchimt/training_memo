class TrainingsController < ApplicationController
  # before_action :logged_in_user, only:[:new, :edit, :update, :destroy]

  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params) 
    if @training.save
      flash[:success] = 'トレーニングを記録しました。'
      redirect_to new_training_path
    else
      flash.now[:danger] = 'トレーニングの記録に失敗しました'
      render :new
    end
  end

  private

    def training_params
      params.require(:training)
    end
end
