class CategoriesController < ApplicationController
  def new
    @category = Group.new
  end

  def create
    @category = Group.new(category_params)
    if @category.save
      redirect_to root_path, notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
