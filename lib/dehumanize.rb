require 'active_support/inflector/inflections'
require 'active_support/inflector/transliterate'
require 'active_support/inflector/methods'

require 'active_support/inflections'
require 'active_support/core_ext/string/inflections'

module ActiveSupport::Inflector
  def dehumanize s
    s.titleize.gsub(" ", "").underscore
  end
end

class String
  # Returns the dehumanized version of the string
  def dehumanize
    ActiveSupport::Inflector.dehumanize(self)
  end
end
