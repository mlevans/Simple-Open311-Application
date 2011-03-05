require 'open311'
class HomeController < ApplicationController
  before_filter :configure

  def heatmap
    @services = Open311.service_list
  end
  
  protected
    def configure
      Open311.configure do |config|
        config.endpoint     = 'https://open311.sfgov.org/dev/v2/'
        config.jurisdiction = 'sfgov.org'
      end

    end
end
