# frozen_string_literal: true

class Array
  def beautify_message
    join(' ').delete('$').upcase
  end
end
