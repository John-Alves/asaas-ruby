# frozen_string_literal: true

module Asaas
  module Entity
    class Base
      include Virtus.model

      attr_reader :original_response

      def initialize(*args)
        super
        @original_response = args.first
      end

      def empty?
        attributes.values.compact.empty?
      end
    end
  end
end
