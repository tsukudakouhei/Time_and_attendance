class HomesController < ApplicationController
  def top
    @homes = Home.all
  end

  def new
    @home = Home.new
  end

  def show
    @home = Home.find(params[:id])
  end

  def create
    Home.create(home_parameter)
    redirect_to root_path
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to root_path, notice:"削除しました"
  end

  def update
    @home = Home.find(params[:id])
    if @home.update(home_parameter)
      redirect_to root_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def edit
    @home = Home.find(params[:id])
  end

  private

  def home_parameter
    params.require(:home).permit(:title, :content, :start_time, :finish_time)
  end
end
