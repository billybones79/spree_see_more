Spree::Api::ProductsController.class_eval do
  def index
    if params[:ids]
      @products = product_scope.where(id: params[:ids].split(",").flatten)
    else
      @products = product_scope.ransack(params[:q]).result
    end

    @products = @products.distinct.page(params[:page]).per(params[:per_page])
    respond_with(@products)
  end

  def show
    @product = find_product(params[:id])
    headers['Surrogate-Key'] = "product_id=1"
    respond_with(@product)
  end
end