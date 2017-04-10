require 'i18n/js'

module I18n
  module JS
    class Engine < ::Rails::Engine
      initializer after: 'sprockets.environment' do
        ActiveSupport.on_load(:after_initialize, yield: true) do
          next unless JS::Dependencies.using_asset_pipeline?
          next unless Rails.configuration.assets.compile

          begin
            Rails.application.assets.register_preprocessor 'application/javascript', :"i18n-js_dependencies", silence_deprecation: true do |context, source|
              if context.logical_path == 'i18n/filtered'
                ::I18n.load_path.each { |path| context.depend_on(File.expand_path(path)) }
              end

              source
            end
          rescue TypeError
            # Could be raised by Sprockets::Index, which means we need to do nothing
          end
        end
      end
    end
  end
end
