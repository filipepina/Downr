module Downr
  # Engine to patch through RailsEmoji assets
  class Engine < ::Rails::Engine
    require 'rails_emoji'
  end
end
