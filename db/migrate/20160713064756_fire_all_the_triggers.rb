class FireAllTheTriggers < ActiveRecord::Migration
  def change
    query = "UPDATE sells SET count = count;"
    results = ActiveRecord::Base.connection.execute(query)
  end
end
