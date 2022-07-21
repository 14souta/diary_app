class DiariesController < ApplicationController
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
    if @diary = Diary.update(diary_params)
      render :show
    else
      render :edit
    end
  end

  def show
    @diary = Diary.find(params[:id])
  end

  private

  def diary_params
    params.require(:diary).permit(:image, :explanation)
  end
end
