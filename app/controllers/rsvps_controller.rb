class RsvpsController < ActionController::Base

  def create
    rsvp = Rsvp.find_by_event_id_and_email(params[:rsvp][:event_id], params[:rsvp][:email]) || 
      Rsvp.find_by_event_id_and_name(params[:rsvp][:event_id], params[:rsvp][:name]) || 
      Rsvp.new

    rsvp.attributes = params.require(:rsvp).permit(:event_id, :name,
      :email, :attending, :how_many, :board_or_committee);

    if rsvp.save
      flash[:notice] = "Thanks for RSVPing!"
    else
      flash[:error] = rsvp.errors.full_messages.join('.  ')
    end

    redirect_to(:back)
  end
end
