# -*- coding: utf-8 -*-
require 'minitest/unit'
require 'minitest/autorun'
require_relative '../../lib/cfvalidate'

class TestCfvalidate < MiniTest::Unit::TestCase

  def test_validate
    cf = MiniTest::Mock.new
    cf.expect(:validate_template, {}, [{template_body: "{'JSON': 'CloudFormation'}"}])

    AWS::CloudFormation::Client.stub :new, cf do
      client = Cfvalidate::Client.new
      client.validate("{'JSON': 'CloudFormation'}")

      assert cf.verify
    end
  end

end
