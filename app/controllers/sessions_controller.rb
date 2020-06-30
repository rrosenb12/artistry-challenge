class SessionsController < ApplicationController
    
    def index
        @sessions = Session.all         
    end

    def show
        @session = Session.find(params[:id])        
    end

    def new
        @session = Session.new 
        @artists = Artist.all
        @instruments = Instrument.all 
    end

    def create
        session = Session.create(session_params)
        redirect_to artist_path(session.artist_id)
    end

    private

    def session_params
        params.require(:session).permit(:instrument_id, :artist_id, :session_type)        
    end
end