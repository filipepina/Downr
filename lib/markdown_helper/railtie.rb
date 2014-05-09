module MarkdownHelper
	class Railtie < ::Rails::Railtie
    initializer "markdown_helper.configure_view_controller" do |app|
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, Helpers
      end
    end
	end
end