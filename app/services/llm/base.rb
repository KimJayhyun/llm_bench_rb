module Llm
  class Base
    def call(session, message)
      raise NotImplementedError, "#{self.class}#call 구현 필요"
    end
  end
end
