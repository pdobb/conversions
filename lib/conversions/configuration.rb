module Conversions
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    # Which conversion method to require on gem initialization
    attr_reader :conversion_methods

    def initialize
      @conversion_methods = %w[Boolean]
    end

    def conversion_methods=(val)
      @conversion_methods = Array(val)
    end
  end

  configure {}
end
