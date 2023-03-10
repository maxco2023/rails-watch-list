class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    @list.update(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.photo.attached?
    @list.photo.purge
    end
    if @list.destroy
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def search
  #   @lists = List.find(params[:name])
  # end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

end
