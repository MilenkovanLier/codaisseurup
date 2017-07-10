class Api::EventsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render status: 200, json: {
      events: Event.all
    }.to_json
  end

  def show
    event = Event.find(event_params[:id])

    render status: 200, json: {
      event: event
    }.to_json
  end



  def create
   event = event.new(event_params)

   if event.save
     render status: 201, json: {
       message: "event successfully created",
       event: event
     }.to_json
   else
     render status: 422, json: {
       errors: event.errors
     }.to_json
   end
 end

 def destroy
   event = Event.find(event_params[:id])
   event.destroy

   render status: 200, json: {
     message: "Event has been deleted"
   }.to_json
 end

   private
 def event_params
   event_params.require(:event).permit(:name,
   :description, :location, :price, :capacity,
   :includes_food, :includes_drinks, :starts_at, :ends_at,
   :active, :user ,:themes)
 end
end
