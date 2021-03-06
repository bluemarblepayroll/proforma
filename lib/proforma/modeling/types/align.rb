# frozen_string_literal: true

#
# Copyright (c) 2019-present, Blue Marble Payroll, LLC
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

module Proforma
  module Modeling
    module Types
      # Abstract positioning. Describes how to position something (somewhere).
      # Most likely use-case is for vertial/horizontal text alignment.
      module Align
        LEFT    = :left
        CENTER  = :center
        RIGHT   = :right
      end
    end
  end
end
