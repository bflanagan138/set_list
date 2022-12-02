

ActiveRecord::Schema.define(version: 2022_12_02_223316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "length"
    t.integer "play_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
