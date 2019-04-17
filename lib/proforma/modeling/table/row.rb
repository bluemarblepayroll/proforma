# frozen_string_literal: true

#
# Copyright (c) 2019-present, Blue Marble Payroll, LLC
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
#

module Proforma
  module Modeling
    class Table < AttributeBasedObject
      # The second lowest unit of a table.  A table's header, body, and footer is each
      # composed of zero or more rows.
      class Row < AttributeBasedObject
        attr_writer :cells

        def cells
          Array(@cells)
        end
      end
    end
  end
end
