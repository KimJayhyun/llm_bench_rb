module Judge
  class MockJudge < Base
    def call(run)
      Judgement.create!(
        run: run,
        score: rand(1..10),
        reasoning: "Mock 평가입니다. 모델: #{run.llm_model}",
        judge_model: "mock-judge"
      )
    end
  end
end
