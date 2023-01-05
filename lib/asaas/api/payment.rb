module Asaas
  module Api
    class Payment < Asaas::Api::Base

      def initialize(token, api_version)
        super(token, api_version, '/payments')
      end

      def payWithCreditCard(id, body)
        request(:post, { id: "#{id}/payWithCreditCard" }, body)
        parse_response
      end

      def fetchPixQrCode(id)
        request(:get, id: "#{id}/pixQrCode")
        parse_response
      end

      def fetchPaymentBarcode(id)
        request(:get, id: "#{id}/identificationField")
        parse_response
      end
    end
  end
end