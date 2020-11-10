class Api::V1::ProductsController < Api::V1::BaseController
  def index
  	products = Product.active
  	render json: products, status: 200
  end

  def create
  	document = Document.new(product_params)
  	if document.save
  		render json: { success: "Ok" }, status: 200
  	else
  		render json: { errors: document.errors }, status: 200
  	end
  end

  private
  def product_params
  	params.permit(:file)
  end
end