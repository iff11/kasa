class TriggerFixesOnItems < ActiveRecord::Migration
  def change
    # This looks like works ok
    # Item.all.each do |item|
    #   query = "
    #     UPDATE visits SET employee_share_sale = (
    #       SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = visits.id AND sells.deleted_at IS NULL AND items.is_service = false) * 0.1
    #       WHERE visits.id IN (SELECT visits.id FROM visits JOIN sells ON visits.id = sells.visit_id WHERE sells.item_id = #{item.id});
    #
    #     UPDATE visits SET employee_share_service = (
    #       SELECT COALESCE(SUM(sells.price * sells.count), 0) FROM sells LEFT JOIN items ON items.id = sells.item_id WHERE sells.visit_id = visits.id AND sells.deleted_at IS NULL AND items.is_service = true) * 0.1
    #       WHERE visits.id IN (SELECT visits.id FROM visits JOIN sells ON visits.id = sells.visit_id WHERE sells.item_id = #{item.id});
    #   "
    #
    #   execute query
    # end
  end
end
