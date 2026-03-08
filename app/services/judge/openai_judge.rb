module Judge
  class OpenaiJudge < Base
    # openai 스펙에 맞는 LLM Judge
    def call(run)
      raise NotImplementedError, "추후 구현 예정"
    end
  end
end
