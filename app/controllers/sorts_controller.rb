class SortsController < ApplicationController
  before_action :set_sort, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[ index show ]

  def index
    @sorts = Sort.all
  end

  def show
  end

  def new
    @sort = Sort.new
  end

  def edit
  end

  def create
    @sort = Sort.new(sort_params)

      if @sort.save
        redirect_to sort_url(@sort), notice: "Sort was successfully created." 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @sort.update(sort_params)
        redirect_to sort_url(@sort), notice: "Sort was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @sort.destroy!
      redirect_to sorts_url, notice: "Sort was successfully destroyed." 
  end

  private
    def set_sort
      @sort = Sort.find(params[:id])
    end

    def sort_params
      params.require(:sort).permit(:title, :description, :price)
    end
end
