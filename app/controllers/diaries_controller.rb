class DiariesController < ApplicationController

before_action :diary_date, only: [:show, :edit, :update, :destroy]

  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @diary.update(diary_params)
      redirect_to diary_path(@diary.id)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @diary.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:image, :explanation).merge(user_id: current_user.id)
  end

  def diary_date
    @diary = Diary.find(params[:id])
  end
end
