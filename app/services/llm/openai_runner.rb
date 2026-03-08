module Llm
  class OpenaiRunner < Base
    # OpenAI 스펙에 맞는 LLM 호출
    def call(session, message)
      raise NotImplementedError, "추후 구현 예정"
    end
  end
end
