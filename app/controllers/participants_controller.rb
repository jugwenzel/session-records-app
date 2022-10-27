class ParticipantsController < ApplicationController

  http_basic_authenticate_with name: "juwenzel", password: "genial123", only: :destroy

  def create
    @session = Session.find(params[:session_id])
    @participant = @session.participants.create(participant_params)
    redirect_to session_path(@session)
  end

  def destroy
    @session = Session.find(params[:session_id])
    @participant = @session.participants.find(params[:id])
    @participant.destroy
    redirect_to session_path(@session), status: :see_other
  end


    private
    def participant_params
      params.require(:participant).permit(:name, :role, :status)
    end
end
