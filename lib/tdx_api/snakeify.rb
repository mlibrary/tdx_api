module TdxApi
  module Snakeify
    def underscore_key(key)
      snake_case(key.to_s).to_sym
    end

    def snake_case(camel_cased_word)
      camel_cased_word.to_s.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr("-", "_").
        downcase
    end

    def snakeify(value)
      case value
        when Array
          value.map { |v| snakeify(v) }
          # or `value.map(&method(:snakeify))`
        when Hash
          Hash[value.map { |k, v| [underscore_key(k), snakeify(v)] }]
        else
          value
       end
    end
  end
end