module I18n
  module JS
    module Version
      MAJOR = 3
      MINOR = 0
      PATCH = 0
      # Set to nil for stable release
      BUILD = 'rc8'.freeze
      STRING = [MAJOR, MINOR, PATCH, BUILD].compact.join('.')
    end
  end
end
