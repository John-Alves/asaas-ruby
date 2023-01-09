# frozen_string_literal: true

module Asaas
  module Api
    class Installment < Asaas::Api::Base

      def initialize(token, api_version)
        super(token, api_version, '/installments')
      end

    end
  end
end
