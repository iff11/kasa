# List was generated as follows:
#
# irb(main):020:0> y Customer.all.where("created_at > DATE '2015-03-20'").pluck(:birth)
#    (1.5ms)  SELECT "customers"."birth" FROM "customers" WHERE "customers"."deleted_at" IS NULL AND (created_at > DATE '2015-03-20')
#    (1.5ms)  SELECT "customers"."birth" FROM "customers" WHERE "customers"."deleted_at" IS NULL AND (created_at > DATE '2015-03-20')
# ---
# -
# -
# -
# -
# -
# -
# -
# => nil
#

# irb(main):031:0* y Customer.all.where("updated_at > DATE '2015-03-20'").pluck(:birth)
#    (1.9ms)  SELECT "customers"."birth" FROM "customers" WHERE "customers"."deleted_at" IS NULL AND (updated_at > DATE '2015-03-20')
#    (1.9ms)  SELECT "customers"."birth" FROM "customers" WHERE "customers"."deleted_at" IS NULL AND (updated_at > DATE '2015-03-20')
# ---
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# - 1987-03-16
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# - 1900-10-28
# -
# -
# -
# -
# -
# -
# -
# -
# -
# - 1900-02-20
# -
# -
# -
# -
# - 1965-11-28
# -
# -
# -
# - 1988-09-13
# - 1900-09-09
# -
# => nil
#
# Fixed by this MANUAL AR query:

# irb(main):042:0> y Customer.where("updated_at > DATE '2015-03-20'").update_all({:birth => nil})
#   SQL (9.2ms)  UPDATE "customers" SET "birth" = NULL WHERE "customers"."deleted_at" IS NULL AND (updated_at > DATE '2015-03-20')
#   SQL (9.2ms)  UPDATE "customers" SET "birth" = NULL WHERE "customers"."deleted_at" IS NULL AND (updated_at > DATE '2015-03-20')
# --- 59
# ...
# => nil
# irb(main):043:0> y Customer.where("updated_at > DATE '2015-03-20'").pluck(:birth)
#    (2.9ms)  SELECT "customers"."birth" FROM "customers" WHERE "customers"."deleted_at" IS NULL AND (updated_at > DATE '2015-03-20')
#    (2.9ms)  SELECT "customers"."birth" FROM "customers" WHERE "customers"."deleted_at" IS NULL AND (updated_at > DATE '2015-03-20')
# ---
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# -
# => nil
# irb(main):044:0>

class FixDatePickerProblems < ActiveRecord::Migration
  def change
  end
end
