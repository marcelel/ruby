class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def index
    @events = Event.all
  end

  def show
  end
  
  def new
    @event = Event.new
  end

  def create
    event_parmas = params.require(:event).permit(:artist, :description, :price_low, :price_high, :event_date)
    
    @event = Event.new(event_parmas)
    if @event.save
      flash[:komunikat] = 'Event został poprawnie stworzony.'
      redirect_to "/events/#{@event.id}"
    else
      render 'new'
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def event_params
    #   params.require(:event).permit(:artist, :description, :price_low, :price_high, :date)
    # end
end
