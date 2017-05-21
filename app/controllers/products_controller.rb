class ProductsController < ApplicationController

  before_action :validate_search_key, only: [:search]
  before_action :authenticate_user!, only: [:add_to_favorite, :quit_favorite]


  def index
    if params[:category].blank?
      @products = Product.all.order("position ASC")
      if params[:favorite] == "yes"
        @products = current_user.products
      end
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:category_id => @category_id)
    end

  end

  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
       current_cart.add_product_to_cart(@product)
       @product.quantity -= @product.buying_quantity
       @product.buying_quantity = 1
       @product.save
       flash[:notice] = "你已成功将 #{@product.title} 加入购物车"
    else
      flash[:warning] = "你的购物车内已有此物品"
    end
    redirect_to :back

end

  def add_to_favorite
    @product = Product.find(params[:id])
    @product.users << current_user
    @product.save
    redirect_to :back, notice:"成功加入收藏!"
  end
  def quit_favorite
    @product = Product.find(params[:id])
    @product.users.delete(current_user)
    @product.save
    redirect_to :back, alert: "成功取消收藏!"
  end

  def add_buying_quantity
    if @product.buying_quantity <= @product.quantity
       @product.buying_quantity +=1
       @product.save
       # redirect_to :back
      respond_to do |format|
        format.js   { render :layout => false }
      end
    end
  end

  def remove_buying_quantity
    if @product.buying_quantity > 1
      @product.buying_quantity -= 1
      @product.save
      # redirect_to :back
      respond_to do |format|
        format.js   { render :layout => false }
      end
    end
  end

  def search
    if @query_string.present?
      @products = search_params

      # search_result = Product.ransack(@search_criteria).result(:distinct => true)
      @products = search_params.paginate(:page => params[:page], :per_page => 5 )

    end
  end

      protected

      def validate_search_key
        @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
      end

      private

      def search_params
        Product.ransack({:title_or_description_cont => @query_string}).result(distinct: true)
      end

end
