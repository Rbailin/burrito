class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def new
		@order = Order.new

	end

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to action: "index"
		else
			render action: "new"
		end
	end

	def show
		@order = Order.find(params[:id])
	end



	def edit
		@order = Order.find(params[:id])
	end

   def update
  @order = Order.find(params[:id])
  if @order.update(order_params)
    redirect_to action: "index"
  else
    render action: "new"
  end
end

def destroy
	@order = Order.find(params[:id])
	@order.destroy
	redirect_to action: "index"
end


	private
	def order_params
		params.require(:order).permit(
			:name, :orderstyle, :protein, :beans, :rice, :fajita_veggies, :fresh_tomato_salsa, :cheese, :sour_cream)
	end

end
