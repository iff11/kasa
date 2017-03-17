class VersionController < ApplicationController
  layout false

  def index
    @version = ENV.to_h.to_yaml
  end
end
