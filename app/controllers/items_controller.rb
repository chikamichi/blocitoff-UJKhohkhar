class ItemsController < ApplicationController
  def create
    @item = current_user.items.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:body)
  end
end
