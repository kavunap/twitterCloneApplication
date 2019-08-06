

ActiveRecord::Schema.define(version: 2019_08_02_212506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "twees", force: :cascade do |t|
    t.text "content"
    t.datetime "created_on"
  end

end
