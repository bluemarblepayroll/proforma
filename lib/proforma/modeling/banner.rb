# frozen_string_literal: true

#
# Copyright (c) 2019-present, Blue Marble Payroll, LLC
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

module Proforma
  module Modeling
    # A Banner is a specific type of header that is comprised of an image and some text.
    # Both the image and text could be optional and, like all modeling components,
    # it is up to the rendering engine how to render it.
    class Banner < AttributeBasedObject
      include Compiling::Compilable

      attr_writer :details, :title

      attr_accessor :image

      def details
        @details.to_s
      end

      def title
        @title.to_s
      end

      def compile(data, evaluator)
        self.class.new(
          details: evaluator.text(data, details),
          image: evaluator.value(data, image),
          title: evaluator.text(data, title)
        )
      end
    end
  end
end
