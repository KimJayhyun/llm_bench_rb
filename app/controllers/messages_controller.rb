class MessagesController < ApplicationController
  before_action :set_session

  def create
    @message = @session.messages.new(message_params)
    @message.position = @session.messages.count + 1

    if @message.save
      redirect_to @session, notice: "메시지가 추가됐어요!"
    else
      redirect_to @session, alert: "메시지 추가 실패!"
    end
  end

  def destroy
    @message = @session.messages.find(params[:id])
    @message.destroy
    redirect_to @session, notice: "메시지가 삭제됐어요!"
  end

  private

  def set_session
    @session = Session.find(params[:session_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
