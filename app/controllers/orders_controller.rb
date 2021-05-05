class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id]) #current_or_guest_user.orders.find(params[:id])
  end
  
  def create
    vegbox = Vegbox.find_by(params[:vegbox_id])
    order  = Order.create!(order_params) #vegbox: vegbox, name: vegbox.name, amount: vegbox.price, state: 'pending', user: current_or_guest_user)
    
    session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
        name: vegbox.name,
        amount: vegbox.price_cents,
        currency: 'eur',
        quantity: 1
        }],
        success_url: order_url(order),
        cancel_url: order_url(order)
    )
    
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def order_params
    params.require(:order).permit( :name, :amount, :state, :first_name, :last_name, :email, :phone_number, :address_line_1, :address_line_2, :postcode, :order_id)
  end
end
