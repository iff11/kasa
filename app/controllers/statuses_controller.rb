require 'json'

class StatusesController < ApplicationController
  include JSONAPI::ActsAsResourceController

  before_action :update_statuses

  def update_statuses
    self.update_row_count
    self.update_table_sizes
  end

  def update_row_count
    query = 'SELECT relname AS table, n_live_tup AS rows FROM pg_stat_user_tables ORDER BY n_live_tup DESC;'
    result = ActiveRecord::Base.connection.execute(query)

    row = Status.where(name: 'Table row count').first_or_initialize
    row.value = JSON.pretty_generate(JSON.parse(result.to_json))
    row.save!
  end

  def update_table_sizes
    query = 'SELECT relname as "Table", pg_size_pretty(pg_total_relation_size(relid)) As "Size", pg_size_pretty(pg_total_relation_size(relid) - pg_relation_size(relid)) as "External Size" FROM pg_catalog.pg_statio_user_tables ORDER BY pg_total_relation_size(relid) DESC;'
    result = ActiveRecord::Base.connection.execute(query)

    row = Status.where(name: 'Table sizes').first_or_initialize
    row.value = JSON.pretty_generate(JSON.parse(result.to_json))
    row.save!
  end
end
