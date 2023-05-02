class DeliveryController < ApplicationController
  def index
    deliveries = Delivery.all
    @list_of_deliveries = deliveries.order({:created_at =>:desc})
    render({ :template => "delivery/show.html.erb" })
  end
  def create
    new_delivery = Delivery.new
    new_delivery.description = params.fetch("description")
    new_delivery.arrive_on = params.fetch("arrive_on")
    new_delivery.details = params.fetch("details")
    new_delivery.status = params.fetch("query_status")
    new_delivery.user_id = session.fetch(:user_id)
    new_delivery.save
    redirect_to("/", {:notice=>"Added to list"})
  end
  def update
    delivery = Delivery.find(params[:path_id])
    current_status = params.fetch("query_status")
    delivery.status = current_status
    delivery.save
    redirect_to("/")
  end
  def destroy
     delivery_id = params.fetch("path_id")
     delivery_to_delete = Delivery.where({:id=>delivery_id}).at(0)
     delivery_to_delete.destroy
    redirect_to("/")
  end
end
