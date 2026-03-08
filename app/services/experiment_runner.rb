class ExperimentRunner
  def initialize(session, runner: Llm::MockRunner.new, judge: Judge::MockJudge.new)
    @session = session
    @runner = runner
    @judge = judge
  end

  def call
    @session.update!(status: :running)

    @session.messages.each do |message|
      runs = @runner.call(@session, message)
      runs.each { |run| @judge.call(run) }
    end

    @session.update!(status: :completed)
  rescue => e
    @session.update!(status: :failed)
    raise e
  end
end
