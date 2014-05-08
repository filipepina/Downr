# require 'markdown_helper/action_view/helpers'

module MarkdownHelper
	class Railtie < ::Rails::Railtie
    initializer "markdown_helper.configure_view_controller" do |app|
      ActiveSupport.on_load :action_view do
        include MarkdownHelper::ActionView::Helpers
      end
    end
	end
end