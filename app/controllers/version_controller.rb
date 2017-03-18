class VersionController < ApplicationController
  layout false

  def index
    @version = ENV['SOURCE_VERSION']
  end
end
