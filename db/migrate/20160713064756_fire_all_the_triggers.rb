class FireAllTheTriggers < ActiveRecord::Migration
  def change
    query = "UPDATE sells SET count = count;"
    results = ApplicationRecord.connection.execute(query)
  end
end
