# frozen_string_literal: true

module Asaas
  module Api
    class CreditCardToken < Asaas::Api::Base
      def initialize(token, api_version)
        super(token, api_version, '/creditCard/tokenize')
      end
    end
  end
end
