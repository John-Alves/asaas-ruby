# frozen_string_literal: true

module Asaas
  class CreditCardToken < Model
    attribute :creditCardCcv, Types::Coercible::String
    attribute :creditCardHolderName, Types::Coercible::String
    attribute :creditCardExpiryMonth, Types::Coercible::String
    attribute :creditCardExpiryYear, Types::Coercible::String
    attribute :creditCardNumber, Types::Coercible::String
    attribute :customer, Types::Coercible::String
  end
end
