# Monkey-patch for Ruby 3.2+ compatibility
# tainted?/untaint were removed in Ruby 3.2; Liquid 4.x still references them
unless Object.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end
