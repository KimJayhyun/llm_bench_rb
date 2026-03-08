module Llm
  class MockRunner < Base
    MODELS = [ "mock-model-a", "mock-model-b", "mock-model-c" ]

    def call(session, message)
      MODELS.map do |model|
        start_time = Time.now
        response = "#{model}의 mock 응답입니다. 질문: #{message.content}"
        latency = ((Time.now - start_time) * 1000).to_i

        Run.create!(
          session: session,
          message: message,
          llm_model: model,
          response: response,
          latency_ms: latency,
          input_tokens: 10,
          output_tokens: 20
        )
      end
    end
  end
end
