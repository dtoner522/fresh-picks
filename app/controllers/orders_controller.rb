class OrdersController < ApplicationController

  def show
    @order = current_or_guest_user.orders.find(params[:id])
  end
  
  def create
    vegbox = Vegbox.find(params[:vegbox_id])
    order  = Order.create!(vegbox: vegbox, name: vegbox.name, amount: vegbox.price, state: 'pending', user: current_or_guest_user)
    
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
end
