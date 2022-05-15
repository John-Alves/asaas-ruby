module Asaas
  module Api
    class Webhook < Asaas::Api::Base

      def initialize(token, api_version)
        super(token, api_version, '/webhook')
      end

      def extract_data(data)
        convert_data_to_entity(data)
      end
    end
  end
end