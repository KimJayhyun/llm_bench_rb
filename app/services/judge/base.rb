module Judge
  class Base
    def call(run)
      raise NotImplementedError, "#{self.class}#call 구현 필요"
    end
  end
end
