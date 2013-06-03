require "cfvalidate/version"
require 'aws-sdk'

module Cfvalidate
  class Client
    def initialize
      @cf = AWS::CloudFormation::Client.new
    end

    def validate(template_body)
      @cf.validate_template(template_body: template_body)
    end
  end
end
