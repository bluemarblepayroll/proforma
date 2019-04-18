# frozen_string_literal: true

#
# Copyright (c) 2019-present, Blue Marble Payroll, LLC
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

module Proforma
  module Modeling
    # Emit and render basic text against a record.
    class Text < AttributeBasedObject
      include Compiling::Compilable
      extend Forwardable

      def_delegator :value, :empty?, :empty?

      attr_writer :value

      def value
        @value.to_s
      end

      def compile(data, evaluator)
        self.class.new(
          value: evaluator.text(data, value)
        )
      end
    end
  end
end
