class NumbersController < ApplicationController
  def index
    @number = Number.new
  end

  def show
    digits = Number.clean_digits params[:id]
    if (@number = Number.find_by_digits(digits))
      @comment = Comment.new
    else
      redirect_to numbers_path
    end
  end

  def create
    digits = Number.clean_digits params[:number][:digits]

    if (@number = Number.where(digits: digits).first)
      redirect_to number_path(@number)
    else
      @number = Number.new(digits: digits)
      if @number.save
        redirect_to number_path(@number)
      else
        render :index
      end
    end
  end

end
