module Asaas
  class Fine < Model
    FineTypes = Types::Strict::String.enum('FIXED', 'PERCENTAGE')

    attribute :value, Types::JSON::Decimal
    attribute :type, FineTypes.optional.default(nil)
  end
end