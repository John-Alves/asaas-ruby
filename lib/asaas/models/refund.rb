module Asaas
  class Refund < Model
    RefundStatus = Types::Strict::String.enum('PENDING', 'CANCELLED', 'DONE')

    attribute :dateCreated, Types::Coercible::String.optional.default(nil)
    attribute :status, RefundStatus
    attribute :value, Types::JSON::Decimal.optional.default(nil)
    attribute :transactionReceiptUrl, Types::Coercible::String.optional.default(nil)
  end
end
