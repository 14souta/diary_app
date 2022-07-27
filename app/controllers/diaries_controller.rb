class DiariesController < ApplicationController

before_action :diary_date, only: [:show, :edit, :update]

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

  private

  def diary_params
    params.require(:diary).permit(:image, :explanation)
  end

  def diary_date
    @diary = Diary.find(params[:id])
  end
end
