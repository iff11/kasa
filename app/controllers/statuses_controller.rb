require 'json'

class StatusesController < ApplicationController
  include JSONAPI::ActsAsResourceController

  before_action :foo

  def foo
    query = 'SELECT schemaname,relname,n_live_tup FROM pg_stat_user_tables ORDER BY n_live_tup DESC;'
    result = ActiveRecord::Base.connection.execute(query)
    test = Status.where(name: 'test').first_or_initialize
    test.value = JSON.pretty_generate(result.to_json)










    
    # test.value = result.to_json
    test.save!
  end
end
