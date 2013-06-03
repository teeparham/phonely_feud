class NumbersController < ApplicationController
  def index
    @number = Number.new
  end

  def show
    digits = Number.clean_digits params[:id]
    if find_number(digits)
      @comment = Comment.new
    else
      redirect_to root_path
    end
  end

  def create
    digits = Number.clean_digits params[:number][:digits]

    if find_number(digits)
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

private

  def find_number(digits)
    @number = Number.find_by_digits(digits)
  end

end
