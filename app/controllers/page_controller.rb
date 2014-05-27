class PageController < FrontController
  def index
    @items = Item.all
  end
end
