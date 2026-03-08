class SessionsController < ApplicationController
  before_action :set_session, only: [ :show, :run ]

  def index
    @sessions = Session.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)

    if @session.save
      redirect_to @session, notice: "세션이 생성됐어요!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def run
    ExperimentRunner.new(@session).call
    redirect_to @session, notice: "실험이 완료됐어요!"
  rescue => e
    redirect_to @session, alert: "실험 실패: #{e.message}"
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:title, :system_prompt)
  end
end
