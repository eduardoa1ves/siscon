# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_04_181955) do

  create_table "abouts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "website"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_abouts_on_account_id"
  end

  create_table "accept_cookies_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_accept_cookies_logs_on_account_id"
    t.index ["client_id"], name: "index_accept_cookies_logs_on_client_id"
  end

  create_table "accon_integration_queues", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "integrated", default: false
    t.boolean "processing", default: false
    t.index ["account_id"], name: "index_accon_integration_queues_on_account_id"
    t.index ["created_at"], name: "index_accon_integration_queues_on_created_at"
    t.index ["integrated"], name: "index_accon_integration_queues_on_integrated"
    t.index ["order_id"], name: "index_accon_integration_queues_on_order_id"
    t.index ["processing"], name: "index_accon_integration_queues_on_processing"
  end

  create_table "account_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.boolean "available"
    t.integer "category_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_categories_on_account_id"
    t.index ["category_id"], name: "index_account_categories_on_category_id"
  end

  create_table "account_cities_deliveryapps", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "city_deliveryapp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_cities_deliveryapps_on_account_id"
    t.index ["city_deliveryapp_id"], name: "index_account_cities_deliveryapps_on_city_deliveryapp_id"
  end

  create_table "account_city_deliveries", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id", "city_id"], name: "index_account_city_deliveries_on_account_id_and_city_id", unique: true
  end

  create_table "account_extra_modules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "status"
    t.integer "account_id"
    t.integer "extra_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_extra_modules_on_account_id"
    t.index ["extra_module_id"], name: "index_account_extra_modules_on_extra_module_id"
  end

  create_table "account_freemia", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "country"
    t.string "cpf_or_cnpj"
    t.string "trading_name"
    t.integer "interest"
    t.integer "how_you_found_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "deliveryapp_segment_id"
    t.string "free_pdf"
    t.string "logo_free"
    t.string "qrcode_free"
    t.string "qrcode_custom"
    t.index ["how_you_found_id"], name: "index_account_freemia_on_how_you_found_id"
  end

  create_table "account_freemium_addresses", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "cep"
    t.string "address"
    t.string "number"
    t.string "neighborhood"
    t.string "complement"
    t.string "city"
    t.string "state"
    t.integer "account_freemium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_freemium_id"], name: "index_account_freemium_addresses_on_account_freemium_id"
  end

  create_table "account_global_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable"
    t.string "title"
    t.integer "account_id"
    t.integer "global_complement_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.decimal "lower_price", precision: 14, scale: 2, default: "0.0"
    t.index ["account_id"], name: "index_account_global_complement_categories_on_account_id"
    t.index ["global_complement_category_id"], name: "index_account_global_complement_category"
  end

  create_table "account_global_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "price", precision: 14, scale: 2
    t.boolean "enable"
    t.string "title"
    t.integer "account_id"
    t.integer "global_complement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["account_id", "global_complement_id"], name: "acc_id_gc_id", unique: true
    t.index ["account_id"], name: "index_account_global_complements_on_account_id"
    t.index ["global_complement_id"], name: "index_account_global_complements_on_global_complement_id"
  end

  create_table "account_has_neighborhoods", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "neighborhood_id"
    t.decimal "tax", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable", default: true
    t.index ["account_id"], name: "index_account_has_neighborhoods_on_account_id"
    t.index ["neighborhood_id"], name: "index_account_has_neighborhoods_on_neighborhood_id"
  end

  create_table "account_items", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable"
    t.string "title"
    t.integer "account_id"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.decimal "lower_price", precision: 14, scale: 2
    t.decimal "lower_price_delivery", precision: 14, scale: 2
    t.decimal "lower_price_store", precision: 14, scale: 2
    t.decimal "lower_price_table", precision: 14, scale: 2
    t.index ["account_id"], name: "index_account_items_on_account_id"
    t.index ["item_id"], name: "index_account_items_on_item_id"
  end

  create_table "account_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_dashboard_id"
    t.text "response_log"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_logs_on_account_id"
    t.index ["admin_dashboard_id"], name: "index_account_logs_on_admin_dashboard_id"
  end

  create_table "account_managers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "admin_dashboard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_customerx_portfolio"
    t.boolean "enabled"
    t.boolean "franquia"
    t.boolean "business", default: false
    t.boolean "pro", default: false
    t.boolean "start", default: false
    t.boolean "neemo_account_manager", default: false
    t.string "ddd", limit: 2
    t.string "phone", limit: 10
    t.index ["admin_dashboard_id"], name: "index_account_managers_on_admin_dashboard_id"
  end

  create_table "account_master_master_extra_modules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.integer "master_extra_module_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "a_c_im"
    t.index ["master_extra_module_id"], name: "m_e_m_id"
  end

  create_table "account_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "acs_key"
    t.string "acs_oauth_key"
    t.string "acs_oauth_secret"
    t.string "slug"
    t.string "link_play_store"
    t.string "link_app_store"
    t.string "qrcode_playstore"
    t.string "qrcode_appstore"
    t.string "min_app_version_required_android"
    t.string "min_app_version_alert_android"
    t.string "min_app_version_required_ios"
    t.string "min_app_version_alert_ios"
    t.string "facebook_key"
    t.string "facebook_secret"
    t.boolean "usar_bairros", default: false
    t.string "app_version", default: "0"
    t.string "ios_app_version", default: "0"
    t.integer "white_label_config_id"
    t.string "guid"
    t.integer "email_limit", default: 1000, null: false
    t.integer "business_rule", default: 0
    t.integer "google_app_version_code"
    t.boolean "show_button_facebook_app_android", default: true
    t.boolean "show_button_facebook_app_ios", default: true
    t.boolean "show_login_apple", default: true
    t.integer "account_manager_id"
    t.boolean "voucher_qrcode_type", default: true, null: false
    t.integer "salespeoples_id"
    t.integer "deployment_analyst_id"
    t.integer "menu_registrant_id"
    t.boolean "item_direct_to_cart", default: false
    t.boolean "voucher_account_on", default: true
    t.boolean "show_reproved_orders", default: false
    t.boolean "voucher_filter", default: false
    t.boolean "emailage", default: false
    t.text "description"
    t.string "cnpj_cpf", limit: 18
    t.integer "linx_charging_item_id"
    t.string "country_code", default: "BRA"
    t.boolean "allow_hiring_loyalty_program", default: false
    t.boolean "open_modal_pin", default: false
    t.boolean "clients_account_redirect", default: false
    t.integer "world_time_zone_id"
    t.index ["access_token"], name: "index_account_masters_on_access_token"
    t.index ["name"], name: "index_account_masters_on_name"
    t.index ["show_button_facebook_app_android"], name: "index_account_masters_on_show_button_facebook_app_android"
    t.index ["show_button_facebook_app_ios"], name: "index_account_masters_on_show_button_facebook_app_ios"
    t.index ["slug"], name: "index_account_masters_on_slug", unique: true
    t.index ["white_label_config_id"], name: "index_account_masters_on_white_label_config_id"
    t.index ["world_time_zone_id"], name: "index_account_masters_on_world_time_zone_id"
  end

  create_table "account_menus", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "permission"
    t.integer "menu_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_account_menus_on_account_id"
    t.index ["menu_id"], name: "index_account_menus_on_menu_id"
  end

  create_table "account_online_times", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "counter"
    t.datetime "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "next_update_allowed"
    t.index ["account_id", "day"], name: "index_account_online_times_on_account_id_and_day"
    t.index ["account_id"], name: "index_account_online_times_on_account_id"
    t.index ["day"], name: "index_account_online_times_on_day"
  end

  create_table "account_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "value", precision: 14, scale: 2
    t.boolean "enable"
    t.string "name"
    t.integer "account_id"
    t.integer "price_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.float "promotional_price", limit: 53
    t.decimal "value_delivery", precision: 14, scale: 2
    t.decimal "value_store", precision: 14, scale: 2
    t.decimal "value_table", precision: 14, scale: 2
    t.decimal "promotion_value_delivery", precision: 14, scale: 2
    t.decimal "promotion_value_store", precision: 14, scale: 2
    t.decimal "promotion_value_table", precision: 14, scale: 2
    t.boolean "enable_delivery", default: true
    t.boolean "enable_store", default: true
    t.boolean "enable_table", default: true
    t.boolean "price_custom", default: false
    t.index ["account_id"], name: "index_account_prices_on_account_id"
    t.index ["price_id"], name: "index_account_prices_on_price_id"
  end

  create_table "account_tropicalization_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "utc_time"
    t.string "local_currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "world_time_zone_id"
    t.index ["account_id"], name: "index_account_tropicalization_configs_on_account_id"
    t.index ["world_time_zone_id"], name: "index_account_tropicalization_configs_on_world_time_zone_id"
  end

  create_table "account_vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "voucher_id"
    t.boolean "enable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "value", precision: 14, scale: 2
    t.index ["account_id"], name: "index_account_vouchers_on_account_id"
    t.index ["voucher_id"], name: "index_account_vouchers_on_voucher_id"
  end

  create_table "account_webhooks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable"
    t.integer "account_id"
    t.integer "webhook_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.string "id_client"
    t.string "secret_client"
    t.index ["account_id"], name: "index_account_webhooks_on_account_id"
    t.index ["webhook_id"], name: "index_account_webhooks_on_webhook_id"
  end

  create_table "accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "acs_key"
    t.string "acs_oauth_key"
    t.string "acs_oauth_secret"
    t.string "app_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "access_token"
    t.string "link_play_store"
    t.string "link_app_store"
    t.string "qrcode_playstore"
    t.string "qrcode_appstore"
    t.boolean "plano_start", default: false
    t.boolean "plano_pro", default: true
    t.boolean "web_delivery", default: true
    t.boolean "ativo", default: true
    t.boolean "vencido"
    t.string "link_para_pagar"
    t.date "data_bloqueio"
    t.boolean "comidaaqui", default: false
    t.boolean "bloqueado", default: false
    t.datetime "last_update_online"
    t.boolean "horario_verao", default: false
    t.integer "account_master_id"
    t.boolean "franquia", default: false
    t.string "delivery_map"
    t.boolean "use_geolocation", default: false
    t.integer "city_id"
    t.boolean "force_reload", default: false
    t.boolean "default_map", default: false
    t.integer "sponsorship", default: 0
    t.boolean "always_opened", default: false
    t.string "mailer_from"
    t.string "mailer_signature"
    t.boolean "terms_of_use", default: false
    t.boolean "auto_summer_time", default: false
    t.boolean "send_atendimento_mailer", default: true
    t.datetime "atendimento_mailer_at"
    t.integer "mailer_atendimento_count", default: 0
    t.date "new_from"
    t.decimal "lat_local", precision: 14, scale: 10
    t.decimal "lng_local", precision: 14, scale: 10
    t.datetime "closed_at"
    t.decimal "payment_online_limit", precision: 14, scale: 2
    t.boolean "fidelity_program_enable", default: false
    t.date "fidelity_program_activation"
    t.boolean "send_push_order_status", default: true
    t.string "city_default"
    t.string "state_default"
    t.string "cep_default"
    t.string "email_superlogica"
    t.string "id_cadastro_superlogica"
    t.boolean "enable_order_lancado", default: false
    t.string "smartlink"
    t.boolean "enable_da01", default: true
    t.boolean "enable_da02", default: true
    t.boolean "enable_da03", default: true
    t.boolean "enable_da04", default: true
    t.boolean "show_in_franquia_page", default: true
    t.string "ref"
    t.integer "delivery_mode"
    t.string "uf_fuso", default: "DF"
    t.boolean "do_not_disturb", default: true, null: false
    t.integer "email_limit", default: 1000, null: false
    t.integer "account_manager_id"
    t.integer "item_complement_type", default: 2
    t.integer "customerx_id"
    t.boolean "item_complement_admin", default: false
    t.string "temp_status", default: "implementacao"
    t.datetime "practice_day"
    t.integer "deployment_analyst_id", default: 0
    t.boolean "plano_business", default: false
    t.integer "pizza_complement_type", default: 1
    t.boolean "use_franchise_personalization", default: false
    t.boolean "optin_promocoes", default: false
    t.string "fake_ref"
    t.boolean "trash_account", default: false
    t.integer "account_manager_aux_id"
    t.boolean "voucher_qrcode_type"
    t.integer "salespeoples_id"
    t.integer "menu_registrant_id"
    t.boolean "item_direct_to_cart"
    t.boolean "canceled", default: false
    t.string "cnpj", limit: 18
    t.integer "contract_type", default: 0
    t.boolean "not_send_for_billing", default: false
    t.integer "linx_client_id"
    t.boolean "antifraud_enabled", default: true
    t.boolean "alternate_unlock", default: false
    t.date "alternate_unlock_date"
    t.integer "linx_contract_id"
    t.integer "liberacao_painel_id"
    t.boolean "not_a_customer", default: false
    t.boolean "i_agree_to_create_without_linx_client_id", default: false
    t.string "user_who_created"
    t.boolean "plano_beginner", default: false, null: false
    t.boolean "enabled_zamper", default: false
    t.boolean "bot_redirect_to_account_master", default: false
    t.string "whitelabel_redirect_link", default: "https://app.neemo.com.br"
    t.string "justification"
    t.boolean "was_approved", default: true
    t.integer "original_account_master_id"
    t.boolean "locked_by_master", default: false, null: false
    t.integer "business_plan_id"
    t.index ["access_token"], name: "index_accounts_on_access_token"
    t.index ["account_manager_id"], name: "index_accounts_on_account_manager_id"
    t.index ["account_master_id"], name: "index_accounts_on_account_master_id"
    t.index ["app_name"], name: "index_accounts_on_app_name"
    t.index ["business_plan_id"], name: "index_accounts_on_business_plan_id"
    t.index ["customerx_id"], name: "index_accounts_on_customerx_id"
    t.index ["deployment_analyst_id"], name: "index_accounts_on_deployment_analyst_id"
    t.index ["linx_client_id"], name: "index_accounts_on_linx_client_id"
    t.index ["menu_registrant_id"], name: "index_accounts_on_menu_registrant_id"
    t.index ["salespeoples_id"], name: "index_accounts_on_salespeoples_id"
  end

  create_table "accounts_machines", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "machine_id"
    t.integer "account_id"
  end

  create_table "active_admin_comments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.integer "author_id"
    t.string "author_type"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "namespace"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id"
  end

  create_table "activities", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "trackable_id"
    t.string "trackable_type"
    t.integer "owner_id"
    t.string "owner_type"
    t.string "key"
    t.text "parameters"
    t.integer "recipient_id"
    t.string "recipient_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type"
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type"
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type"
  end

  create_table "additional_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "title", default: ""
    t.integer "minimum", default: 0
    t.integer "maximum", default: 1
    t.boolean "text_input", default: false
    t.boolean "enable", default: true
    t.integer "ordem", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_additional_categories_on_account_id"
  end

  create_table "additionals", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "additional_category_id"
    t.string "title", default: ""
    t.string "description", default: ""
    t.decimal "price", precision: 14, scale: 2, default: "0.0"
    t.boolean "enable", default: true
    t.integer "ordem", default: 1
    t.boolean "required", default: true
    t.string "ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["additional_category_id"], name: "index_additionals_on_additional_category_id"
  end

  create_table "address_normalizations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "street"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.decimal "latitude", precision: 14, scale: 8
    t.decimal "longitude", precision: 14, scale: 8
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "street_google"
    t.string "neighborhood_google"
    t.boolean "enable", default: true
    t.boolean "aproximated", default: false
    t.index ["postal_code"], name: "index_address_normalizations_on_postal_code"
  end

  create_table "addresses", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "street"
    t.string "number"
    t.string "city"
    t.string "neighborhood"
    t.string "cep"
    t.string "state"
    t.string "complement"
    t.integer "addressable_id"
    t.string "addressable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.string "reference_point"
    t.boolean "updated_address", default: false
    t.datetime "normalized_at"
    t.boolean "origin_phone", default: false
    t.boolean "show_address_central_delivery", default: true
    t.index ["account_id"], name: "index_addresses_on_account_id"
    t.index ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type"
  end

  create_table "admin_dashboard_permissions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_dashboard_id"
    t.text "financial_sector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "task_apps"
    t.index ["admin_dashboard_id"], name: "index_admin_dashboard_permissions_on_admin_dashboard_id"
  end

  create_table "admin_dashboards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "linx_franchisee", default: false
    t.boolean "neemo_franchisee", default: true
    t.boolean "other_franchisee", default: false
    t.boolean "validated", default: false
    t.boolean "master_plus", default: false
    t.boolean "master", default: false
    t.boolean "user_linx", default: false
    t.boolean "only_squad", default: true
    t.boolean "financeiro", default: false
    t.index ["email"], name: "index_admin_dashboards_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_dashboards_on_reset_password_token", unique: true
  end

  create_table "admin_extranets", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.boolean "admin", default: true
    t.boolean "edit_configuracoes"
    t.boolean "edit_cardapio"
    t.boolean "edit_disponibilidade_item"
    t.boolean "delete_pedidos"
    t.integer "browser"
    t.datetime "last_update_online"
    t.index ["email"], name: "index_admin_extranets_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_extranets_on_reset_password_token", unique: true
  end

  create_table "admin_freemia", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "phone"
    t.integer "ddd", default: 0
    t.integer "account_freemium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "authentication_token"
    t.integer "country_code_phone"
    t.index ["authentication_token"], name: "index_admin_freemia_on_authentication_token", unique: true
    t.index ["confirmation_token"], name: "index_admin_freemia_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admin_freemia_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_freemia_on_reset_password_token", unique: true
  end

  create_table "admin_master_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_master_id"
    t.integer "account_id"
  end

  create_table "admin_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token"
    t.string "user_name"
    t.boolean "validated", default: false
    t.index ["account_master_id"], name: "index_admin_masters_on_account_master_id"
    t.index ["authentication_token"], name: "index_admin_masters_on_authentication_token", unique: true
    t.index ["email"], name: "index_admin_masters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_masters_on_reset_password_token", unique: true
  end

  create_table "admin_panel_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "userable_id"
    t.string "userable_type"
    t.integer "objectable_id"
    t.string "objectable_type"
    t.text "response_log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_id"], name: "index_admin_panel_logs_on_accountable_id"
    t.index ["accountable_type"], name: "index_admin_panel_logs_on_accountable_type"
    t.index ["created_at"], name: "index_admin_panel_logs_on_created_at"
    t.index ["objectable_id"], name: "index_admin_panel_logs_on_objectable_id"
    t.index ["objectable_type"], name: "index_admin_panel_logs_on_objectable_type"
    t.index ["userable_id"], name: "index_admin_panel_logs_on_userable_id"
    t.index ["userable_type"], name: "index_admin_panel_logs_on_userable_type"
  end

  create_table "admin_users", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "key"
    t.string "secret"
    t.integer "account_id"
    t.boolean "admin", default: true
    t.boolean "edit_configuracoes"
    t.boolean "edit_cardapio"
    t.boolean "edit_disponibilidade_item"
    t.boolean "delete_pedidos"
    t.integer "browser"
    t.datetime "last_update_online"
    t.boolean "report_permission", default: false
    t.boolean "dashboard_permission", default: false
    t.string "authentication_token"
    t.string "user_name"
    t.boolean "edit_config_fields", default: false
    t.boolean "edit_config_payments", default: false
    t.boolean "edit_config_delivery_area", default: false
    t.boolean "edit_config_schedules", default: false
    t.boolean "edit_config_divulgadores", default: false
    t.boolean "validated", default: false
    t.boolean "edit_config_cupom", default: false
    t.boolean "voucher_account_on", default: true
    t.boolean "edit_work_time", default: true
    t.index ["account_id"], name: "index_admin_users_on_account_id"
    t.index ["authentication_token"], name: "index_admin_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "alelo_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "enable", default: true
    t.string "id_merchant"
    t.string "key_merchant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_alelo_accounts_on_account_id"
  end

  create_table "api_charging_engine_caches", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "responsed_cache", size: :medium
    t.string "guid"
    t.integer "limit"
    t.string "competencia"
    t.integer "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cache_type"
    t.index ["cache_type"], name: "index_api_charging_engine_caches_on_type"
    t.index ["competencia"], name: "index_api_charging_engine_caches_on_competencia"
    t.index ["guid"], name: "index_api_charging_engine_caches_on_guid"
  end

  create_table "api_key_group_master_account_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.integer "api_key_group_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_api_key_group_master_on_account_master_id"
    t.index ["api_key_group_master_id"], name: "index_api_key_group_master_on_api_key_group_master_id"
  end

  create_table "api_key_group_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.boolean "enable", default: true
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_api_key_group_masters_on_token"
  end

  create_table "api_key_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "application_name"
    t.boolean "bloqueado", default: false
    t.string "token_master"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_api_key_masters_on_account_master_id"
    t.index ["token_master"], name: "index_api_key_masters_on_token_master", unique: true
  end

  create_table "api_keys", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "token_account"
    t.integer "account_id"
    t.string "application_name"
    t.boolean "bloqueado", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "neemo_connect", default: false
    t.boolean "delivery_center", default: false
    t.index ["account_id"], name: "index_api_keys_on_account_id"
    t.index ["bloqueado"], name: "index_api_keys_on_bloqueado"
    t.index ["delivery_center"], name: "index_api_keys_on_delivery_center"
    t.index ["token_account", "bloqueado"], name: "index_api_keys_on_token_account_and_bloqueado"
    t.index ["token_account"], name: "index_api_keys_on_token_account"
  end

  create_table "app_analytics", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "id_app"
    t.datetime "app_opened_at"
    t.integer "platform"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_app_analytics_on_account_master_id"
    t.index ["id_app"], name: "index_app_analytics_on_id_app"
    t.index ["platform"], name: "index_app_analytics_on_platform"
  end

  create_table "banks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banner_abrafoods", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "photo"
    t.boolean "enable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banner_deliveries", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable"
    t.string "photo"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banners", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "photo"
    t.string "content"
    t.string "title"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ordem", limit: 2, default: 0
    t.integer "account_id"
    t.boolean "enable", default: true
    t.date "initial_date"
    t.date "final_date"
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "voucher_id"
    t.string "photo_mobile"
    t.boolean "enable_home", default: false
    t.boolean "enable_mobile", default: true
    t.integer "action_type", default: 0
    t.index ["account_id"], name: "index_banners_on_account_id"
    t.index ["voucher_id"], name: "index_banners_on_voucher_id"
  end

  create_table "bematech_keys", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "code"
    t.string "key"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable"
    t.string "id_shop"
    t.index ["account_id"], name: "index_bematech_keys_on_account_id"
  end

  create_table "billings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "accountable_id"
    t.string "accountable_type"
    t.decimal "total_billed", precision: 14, scale: 2
    t.decimal "decimal", precision: 14, scale: 2
    t.decimal "total_canceled", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "orders_billed"
    t.integer "orders_canceled"
    t.integer "month"
    t.integer "year"
    t.index ["accountable_id", "accountable_type"], name: "index_billings_on_accountable_id_and_accountable_type"
    t.index ["month"], name: "index_billings_on_month"
    t.index ["year"], name: "index_billings_on_year"
  end

  create_table "boyber_keys", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "key"
    t.boolean "enabled"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_boyber_keys_on_account_id"
  end

  create_table "business_plans", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "linx_charging_item_id"
    t.index ["linx_charging_item_id"], name: "index_business_plans_on_linx_charging_item_id"
  end

  create_table "cache_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enabled_redis", default: false
    t.boolean "enabled_elasticsearch", default: false
    t.boolean "redis_on_api_key_table", default: false
    t.boolean "redis_on_api_key_master_table", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "redis_on_complement_cache", default: false
  end

  create_table "cards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "id_person_card"
    t.string "card_token", limit: 50
    t.integer "cvv", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "card_number_real"
    t.index ["card_token"], name: "index_cards_on_card_token"
    t.index ["client_id"], name: "index_cards_on_client_id"
  end

  create_table "categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "outid"
    t.string "out_id"
    t.integer "account_id"
    t.boolean "combo", default: false
    t.boolean "available", default: true
    t.integer "ordem", default: 1
    t.boolean "pizza", default: false
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "menu_id"
    t.boolean "visibility", default: true
    t.boolean "not_apply_permission", default: false
    t.index ["account_id"], name: "index_categories_on_account_id"
    t.index ["accountable_id", "accountable_type"], name: "index_categories_on_accountable_id_and_accountable_type"
    t.index ["menu_id"], name: "index_categories_on_menu_id"
  end

  create_table "cepcid_geos", id: :integer, charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "uf", limit: 2
    t.string "chave", limit: 8
    t.string "cepmin", limit: 8
    t.string "cepmax", limit: 8
    t.string "cidade_oficial", limit: 80
    t.string "cidade_acento", limit: 80
    t.string "cod_cidade", limit: 5
    t.string "tipo_cidade", limit: 5
    t.string "cod_cidade_sub", limit: 50
    t.string "cod_ddd", limit: 3
    t.string "cod_mun", limit: 7
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.index ["cepmin"], name: "index_cepcid_geos_on_cepmin"
    t.index ["chave"], name: "index_cepcid_geos_on_chave"
    t.index ["cod_cidade"], name: "index_cepcid_geos_on_cod_cidade"
  end

  create_table "cepcid_geos_bkp", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "uf", limit: 2
    t.string "matchx", limit: 45
    t.string "chave", limit: 10, collation: "utf8_general_ci"
    t.string "cepmin", limit: 8, collation: "utf8_general_ci"
    t.string "cepmax", limit: 8, collation: "utf8_general_ci"
    t.string "cidade", limit: 72
    t.string "cidade_oficial", limit: 72
    t.string "cidade_acento", limit: 72
    t.integer "cod_cidade"
    t.string "tipo_cidade", limit: 5
    t.string "cod_cidade_sub", limit: 10
    t.string "cod_ddd", limit: 4
    t.string "cod_mun", limit: 15
    t.index ["cepmin"], name: "index_cepcid_geos_on_cepmin"
    t.index ["chave"], name: "index_cepcid_geos_on_chave"
    t.index ["cidade_oficial"], name: "index_cepcid_geos_on_cidade_oficial"
    t.index ["uf"], name: "index_cepcid_geos_on_uf"
  end

  create_table "ceplog_geos", id: :integer, charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "cep", limit: 8
    t.string "chave", limit: 8
    t.string "uf", limit: 2
    t.string "tipo_oficial", limit: 50
    t.string "tipo_acento", limit: 50
    t.string "nome_oficial", limit: 100
    t.string "nome_acento", limit: 100
    t.string "bairro_oficial", limit: 72
    t.string "bairro_acento", limit: 72
    t.float "liminfpar", limit: 53
    t.float "liminfimpa", limit: 53
    t.float "limsuppar", limit: 53
    t.float "limsupimpa", limit: 53
    t.float "flags", limit: 53
    t.float "lados", limit: 53
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.index ["bairro_oficial"], name: "index_ceplog_geos_on_bairro_oficial"
    t.index ["cep"], name: "index_ceplog_geos_on_cep"
    t.index ["chave"], name: "index_ceplog_geos_on_chave"
    t.index ["nome_oficial"], name: "index_ceplog_geos_on_nome_oficial"
    t.index ["tipo_oficial"], name: "index_ceplog_geos_on_tipo_oficial"
    t.index ["uf"], name: "index_ceplog_geos_on_uf"
  end

  create_table "ceplog_geos_bkp", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "cep", limit: 8
    t.string "chave", limit: 10
    t.string "uf", limit: 2, collation: "utf8_general_ci"
    t.string "tipo_oficial", limit: 50, collation: "utf8_general_ci"
    t.string "tipo_acento", limit: 50, collation: "utf8_general_ci"
    t.string "nome_oficial", limit: 100, collation: "utf8_general_ci"
    t.string "nome_acento", limit: 100, collation: "utf8_general_ci"
    t.string "bairro_oficial", limit: 72, collation: "utf8_general_ci"
    t.string "bairro_acento", limit: 72, collation: "utf8_general_ci"
    t.string "liminfpar", limit: 15, collation: "utf8_general_ci"
    t.string "liminfimpa", limit: 15, collation: "utf8_general_ci"
    t.string "limsuppar", limit: 15, collation: "utf8_general_ci"
    t.string "limsupimpa", limit: 15, collation: "utf8_general_ci"
    t.string "flags", limit: 5, collation: "utf8_general_ci"
    t.string "lados", limit: 10, collation: "utf8_general_ci"
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.index ["cep"], name: "index_ceplog_geos_on_cep"
    t.index ["chave"], name: "index_ceplog_geos_on_chave"
    t.index ["uf"], name: "index_ceplog_geos_on_uf"
  end

  create_table "cepranges", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "locale"
    t.string "cepini"
    t.string "cepfim"
    t.decimal "value", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_cepranges_on_account_id"
  end

  create_table "charging_item_data", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "linx_charging_item_id"
    t.string "month"
    t.string "year"
    t.text "response_data", size: :medium
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linx_charging_item_id"], name: "index_charging_item_data_on_linx_charging_item_id"
  end

  create_table "chatbot_dispatch_reports", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "sent"
    t.integer "received"
    t.integer "belongable_id"
    t.string "belongable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "ids_clients", size: :long
    t.text "message", size: :long
    t.string "subject"
    t.integer "dispatch_modality"
    t.string "image"
    t.integer "seen", default: 0, null: false
    t.integer "clicks", default: 0, null: false
    t.text "seen_users", size: :long
    t.text "user_clicks", size: :long, null: false
    t.boolean "process_in_progress", default: true, null: false
    t.boolean "visible", default: true, null: false
    t.datetime "data_agendamento"
    t.boolean "enable", default: true
    t.boolean "enable_button"
    t.boolean "everyone"
    t.string "title"
    t.string "response_error"
    t.index ["belongable_id", "belongable_type"], name: "cdr"
    t.index ["belongable_id"], name: "index_chatbot_dispatch_reports_on_belongable_id"
    t.index ["belongable_type"], name: "index_chatbot_dispatch_reports_on_belongable_type", length: 191
  end

  create_table "chatbot_dispatch_reports_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "chatbot_dispatch_report_id"
    t.index ["account_id", "chatbot_dispatch_report_id"], name: "cdraidcdrid"
    t.index ["account_id"], name: "cdraaid"
    t.index ["chatbot_dispatch_report_id"], name: "cdracdrid"
  end

  create_table "chatbot_dispatch_reports_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "chatbot_dispatch_report_id"
    t.integer "account_id"
    t.index ["account_id"], name: "cdrcaid"
    t.index ["chatbot_dispatch_report_id"], name: "cdrccdrid"
    t.index ["client_id", "chatbot_dispatch_report_id"], name: "cdrccidcdrid"
    t.index ["client_id"], name: "cdrccid"
  end

  create_table "chatbot_feedbacks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "client_id"
    t.string "subject"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_chatbot_feedbacks_on_account_id"
    t.index ["client_id"], name: "index_chatbot_feedbacks_on_client_id"
  end

  create_table "cities", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "geo_name"
    t.boolean "enable", default: true
    t.boolean "summer_time", default: false
    t.string "nearby_city"
    t.string "id_plano"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "city_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "city_franquia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_city_accounts_on_account_id"
    t.index ["city_franquia_id"], name: "index_city_accounts_on_city_franquia_id"
  end

  create_table "city_deliveryapps", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "geo_name"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "city_franquia", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "state_franquia_id"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_franquia_id"], name: "index_city_franquia_on_state_franquia_id"
  end

  create_table "city_franquia_vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "city_franquia_id"
    t.integer "voucher_id"
    t.boolean "enabled", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_franquia_id"], name: "index_city_franquia_vouchers_on_city_franquia_id"
    t.index ["voucher_id"], name: "index_city_franquia_vouchers_on_voucher_id"
  end

  create_table "city_region_points", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.integer "city_region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_region_id"], name: "index_city_region_points_on_city_region_id"
  end

  create_table "city_regions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "ordem"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_city_regions_on_city_id"
  end

  create_table "clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: ""
    t.string "phone", default: ""
    t.string "ddd", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "device_token"
    t.decimal "latitude", precision: 14, scale: 8
    t.decimal "longitude", precision: 14, scale: 8
    t.string "cpf"
    t.string "code"
    t.string "access_token"
    t.string "refresh_token"
    t.datetime "access_token_expiration"
    t.datetime "refresh_token_expiration"
    t.string "token_account"
    t.integer "origin_cadastro", default: 1
    t.integer "account_master_id", default: 0
    t.boolean "black_list", default: false
    t.integer "city_id"
    t.integer "app_platform"
    t.string "app_version"
    t.string "id_facebook"
    t.boolean "payment_online_alert", default: false
    t.decimal "payment_online_limit", precision: 14, scale: 2
    t.boolean "payment_online_blocked", default: false
    t.string "provider"
    t.string "uid"
    t.date "birthdate"
    t.boolean "origin_phone"
    t.boolean "imported_xls", default: false
    t.boolean "chatbot_blocked", default: false
    t.boolean "unsubscribed", default: false, null: false
    t.string "unsubscribe_token"
    t.text "observacao"
    t.string "profile_cpf"
    t.string "zamper_token"
    t.boolean "promotion_notifications", default: false
    t.string "id_apple"
    t.datetime "whatsapp_token_time"
    t.boolean "lgpd_notification"
    t.boolean "lgpd_email"
    t.boolean "lgpd_sms"
    t.date "modal_lgpd_first_showing_at"
    t.date "modal_lgpd_last_showing_at"
    t.string "global_cpf"
    t.string "id_instagram"
    t.boolean "created_by_zamper", default: false
    t.boolean "zamper_should_notify", default: false
    t.datetime "last_zamper_expiration"
    t.index ["account_master_id"], name: "index_clients_on_account_master_id"
    t.index ["ddd"], name: "index_clients_on_ddd"
    t.index ["email"], name: "index_clients_on_email"
    t.index ["id_apple"], name: "index_clients_on_id_apple"
    t.index ["id_facebook", "account_master_id"], name: "index_clients_on_id_facebook_and_account_master_id", unique: true
    t.index ["id_instagram"], name: "index_clients_on_id_instagram"
    t.index ["last_zamper_expiration"], name: "index_clients_on_last_zamper_expiration"
    t.index ["phone"], name: "index_clients_on_phone"
    t.index ["profile_cpf"], name: "index_clients_on_profile_cpf"
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
    t.index ["unsubscribe_token"], name: "index_clients_on_unsubscribe_token"
    t.index ["zamper_should_notify"], name: "index_clients_on_zamper_should_notify"
    t.index ["zamper_token"], name: "index_clients_on_zamper_token"
  end

  create_table "combo_order_items", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "item_id"
    t.integer "combo_order_id"
    t.decimal "price", precision: 14, scale: 2
    t.string "item_name"
    t.string "category_name"
    t.string "price_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_id"
    t.index ["combo_order_id"], name: "index_combo_order_items_on_combo_order_id"
    t.index ["item_id"], name: "index_combo_order_items_on_item_id"
  end

  create_table "combo_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "combo_id"
    t.integer "account_id"
    t.integer "quantity"
    t.decimal "total_un", precision: 14, scale: 2
    t.string "combo_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
    t.integer "point", default: 1
    t.index ["account_id"], name: "index_combo_orders_on_account_id"
    t.index ["combo_id"], name: "index_combo_orders_on_combo_id"
    t.index ["order_id"], name: "index_combo_orders_on_order_id"
  end

  create_table "combos", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "category_id"
    t.integer "account_id"
    t.string "title"
    t.string "intro"
    t.decimal "price", precision: 14, scale: 2
    t.boolean "closed_combo"
    t.string "photo"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "media_valor"
    t.boolean "maior_valor"
    t.integer "ordem", default: 1
    t.string "ref"
    t.integer "point", default: 1
    t.boolean "balcao", default: false
    t.index ["account_id"], name: "index_combos_on_account_id"
    t.index ["category_id"], name: "index_combos_on_category_id"
  end

  create_table "companies", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "trade_name"
    t.string "company_name"
    t.string "cnpj"
    t.string "email"
    t.string "name"
    t.string "cpf"
    t.string "phone"
    t.string "phone_type"
    t.integer "account_id"
    t.string "type_address"
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "completion"
    t.string "postal_code"
    t.string "city"
    t.string "state"
    t.string "token_account"
    t.integer "customer_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.string "access_token"
    t.string "refresh_token"
    t.datetime "access_token_expiration"
    t.datetime "refresh_token_expiration"
    t.index ["account_id"], name: "index_companies_on_account_id"
  end

  create_table "company_abrafoods", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "access_token"
    t.string "refresh_token"
    t.string "code"
    t.string "token_account"
    t.datetime "access_token_expiration"
    t.datetime "refresh_token_expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_deliveryapps", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "access_token"
    t.string "refresh_token"
    t.string "code"
    t.string "token_account"
    t.datetime "access_token_expiration"
    t.datetime "refresh_token_expiration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complement_caches", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "item_id"
    t.text "complement_cache", size: :medium
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "cache_updated", default: false
    t.index ["account_id", "item_id"], name: "index_complement_caches_on_account_id_and_item_id"
    t.index ["account_id"], name: "index_complement_caches_on_account_id"
    t.index ["item_id"], name: "index_complement_caches_on_item_id"
  end

  create_table "complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable", default: true
    t.integer "item_id"
    t.integer "maximum"
    t.integer "minimum"
    t.boolean "required"
    t.string "title"
    t.integer "ordem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "more_than_one", default: true
    t.datetime "deleted_at"
    t.decimal "lower_price", precision: 14, scale: 2, default: "0.0"
    t.index ["item_id"], name: "index_complement_categories_on_item_id"
  end

  create_table "complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "complement_category_id"
    t.string "description"
    t.boolean "enable", default: true
    t.decimal "price", precision: 14, scale: 2
    t.string "title"
    t.integer "ordem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.integer "photo_complement_id"
    t.datetime "deleted_at"
    t.boolean "visibility", default: true
    t.index ["complement_category_id"], name: "index_complements_on_complement_category_id"
  end

  create_table "components", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "category_id"
    t.integer "combo_id"
    t.boolean "sum_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.index ["category_id"], name: "index_components_on_category_id"
    t.index ["combo_id"], name: "index_components_on_combo_id"
  end

  create_table "config_fields", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "cpf_enable", default: false
    t.boolean "cpf_required", default: false
    t.boolean "complement_enable", default: false
    t.boolean "complement_required", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "order_delivery", default: true
    t.boolean "order_balcao", default: true
    t.boolean "maioridade_rg", default: false
    t.boolean "maioridade_cpf", default: false
    t.boolean "maioridade_birthdate", default: false
    t.string "maioridade_message"
    t.string "menu_title", default: "CARDÁPIO"
    t.boolean "reference_required", default: false
    t.boolean "reference_enable", default: true
    t.boolean "cpfinnote_enable", default: true
    t.boolean "enable_notes_cardapio", default: true
    t.boolean "enable_notes_order", default: true
    t.boolean "notes_order_required", default: false
    t.string "notes_order_name", default: ""
    t.boolean "notes_cardapio_required", default: false
    t.string "notes_cardapio_name", default: ""
    t.boolean "order_balcao_only_pagamento_online", default: false
    t.string "promotion_title"
    t.decimal "banner_time", precision: 10, default: "3", null: false
    t.boolean "banner_auto_pass", default: true, null: false
    t.boolean "keep_promotion_in_category", default: false
    t.index ["account_id"], name: "index_config_fields_on_account_id"
  end

  create_table "contact_info_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "email"
    t.string "phone"
    t.string "website"
    t.boolean "enable_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "use_franchise_contact", default: false
    t.string "corporate_name"
    t.index ["account_master_id"], name: "index_contact_info_masters_on_account_master_id"
  end

  create_table "contact_infos", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "facebook_link"
    t.string "facebook_name"
    t.string "website"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "instagram_link"
    t.string "instagram_name"
    t.string "youtube_link"
    t.string "youtube_name"
    t.string "twitter_link"
    t.string "twitter_name"
    t.boolean "enable_address", default: true
    t.string "cnpj"
    t.text "termos_uso"
    t.text "politica_canc"
    t.text "politica_arrep"
    t.text "politica_priv"
    t.text "corporate_name"
    t.integer "accountable_id"
    t.string "accountable_type"
    t.index ["account_id"], name: "index_contact_infos_on_account_id"
    t.index ["accountable_id"], name: "index_contact_infos_on_accountable_id"
    t.index ["accountable_type"], name: "index_contact_infos_on_accountable_type"
  end

  create_table "contacts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customerx_integrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable", default: true
    t.datetime "last_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degust_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "cnpj"
    t.string "name"
    t.string "cod_automacao"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "token_pedido"
    t.datetime "token_pedido_expires_at"
    t.text "token_loja"
    t.datetime "token_loja_expires_at"
    t.text "token_cardapio"
    t.datetime "token_cardapio_expires_at"
    t.string "password"
    t.string "url_api"
    t.integer "hub_registration_id"
    t.boolean "validated", default: false
    t.index ["account_id"], name: "index_degust_accounts_on_account_id"
    t.index ["hub_registration_id"], name: "index_degust_accounts_on_hub_registration_id"
  end

  create_table "degust_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "account_id"
    t.text "sended_body"
    t.text "received_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "exceptions"
    t.index ["account_id"], name: "index_degust_logs_on_account_id"
    t.index ["order_id"], name: "index_degust_logs_on_order_id"
  end

  create_table "degust_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "account_id"
    t.string "id_degust"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "integrado_hub"
    t.boolean "integrado_degust"
    t.index ["account_id"], name: "index_degust_orders_on_account_id"
    t.index ["order_id"], name: "index_degust_orders_on_order_id", unique: true
  end

  create_table "degust_partners", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "cnpj"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "codigo"
  end

  create_table "degust_payments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "ref"
    t.integer "degust_paymentable_id"
    t.string "degust_paymentable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degust_paymentable_id", "degust_paymentable_type"], name: "index_degust_payments_on_degust_paymentable_id_and_type"
  end

  create_table "delivery_center_credentials", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "client_id"
    t.string "client_secret"
    t.string "grant_type"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_delivery_center_credentials_on_account_id"
  end

  create_table "delivery_places", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.decimal "price", precision: 14, scale: 2, default: "0.0"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_region_id"
    t.string "pdv_code"
    t.index ["account_id"], name: "index_delivery_places_on_account_id"
    t.index ["city_region_id"], name: "dpcrid"
  end

  create_table "delivery_schedule_times", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "start_hour"
    t.integer "start_min"
    t.integer "end_hour"
    t.integer "end_min"
    t.string "delivery_schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_schedules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "day_week"
    t.boolean "enable", default: true
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveryapp_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_deliveryapp_categories_on_account_master_id"
  end

  create_table "deliveryapp_category_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "deliveryapp_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id", "deliveryapp_category_id"], name: "dcaaiddcid"
    t.index ["account_id"], name: "index_deliveryapp_category_accounts_on_account_id"
    t.index ["deliveryapp_category_id"], name: "index_deliveryapp_category_accounts_on_deliveryapp_category_id"
  end

  create_table "deliveryapp_segments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveryapp_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "logo_restaurante"
    t.string "app_bg_geral"
    t.string "caixaconteudo_bg"
    t.string "caixaconteudo_borda"
    t.string "actionbar_bg"
    t.string "actionbar_fonte"
    t.string "fonteapp_cor"
    t.string "botaoum_bg"
    t.string "botaoum_fonte"
    t.string "botaodois_bg"
    t.string "botaodois_fonte"
    t.string "botaonext_bg"
    t.string "botaonext_fonte"
    t.string "botaoprev_bg"
    t.string "botaoprev_fonte"
    t.string "formulario_borda_cx_txt"
    t.string "formulario_fonte"
    t.string "tabgroup_bg"
    t.string "tabgroup_fonte"
    t.string "tabgroup_bg_selected"
    t.string "tabgroup_selection"
    t.string "cabecalhorest_bg"
    t.string "cabecalhorest_fonte"
    t.string "barramaisinfo_bg"
    t.string "barramaisinfo_fonte"
    t.string "cardapio_clique"
    t.string "cardapio_bg"
    t.string "cardapio_fonte"
    t.string "menuopcoes_bg"
    t.string "menuopcoes_fonte"
    t.string "menuopcoes_division"
    t.string "titulocardapio_bg"
    t.string "titulocardapio_fonte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "preco_fonte"
    t.string "aviso_bg"
    t.string "aviso_fonte"
    t.string "botaomaisinfo_bg"
    t.string "botaomaisinfo_fonte"
    t.string "badgeavaliacao_bg"
    t.string "badgeavaliacao_fonte"
    t.string "voucher_bg"
    t.string "voucher_fonte"
    t.string "telabloqueio_bg"
    t.string "telabloqueio_botao_bg"
    t.string "telabloqueio_botao_fonte"
    t.string "telabloqueio_fonte"
    t.string "cardapio_fonte_descricao", default: "#959595"
    t.index ["account_master_id"], name: "index_deliveryapp_settings_on_account_master_id"
  end

  create_table "deployment_analysts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salespeoples_id"
    t.integer "admin_dashboard_id"
    t.string "ddd", limit: 2
    t.string "phone", limit: 10
    t.boolean "enabled", default: true
    t.index ["admin_dashboard_id"], name: "index_deployment_analysts_on_admin_dashboard_id"
  end

  create_table "divulgador_email_trackings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "divulgador_envio_id"
    t.boolean "opened", default: false
    t.boolean "webdelivery_link_clicked", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["divulgador_envio_id"], name: "index_divulgador_email_trackings_on_divulgador_envio_id"
  end

  create_table "divulgador_envios", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "divulgador_id"
    t.integer "kind"
    t.integer "channel"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.index ["channel"], name: "index_divulgador_envios_on_channel"
    t.index ["client_id"], name: "index_divulgador_envios_on_client_id"
    t.index ["divulgador_id"], name: "index_divulgador_envios_on_divulgador_id"
    t.index ["kind", "created_at"], name: "index_divulgador_envios_on_kind_and_created_at"
    t.index ["kind"], name: "index_divulgador_envios_on_kind"
    t.index ["token"], name: "index_divulgador_envios_on_token"
  end

  create_table "divulgador_voucher_brindes", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "ref"
    t.integer "divulgador_voucher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["divulgador_voucher_id"], name: "index_divulgador_voucher_brindes_on_divulgador_voucher_id"
  end

  create_table "divulgador_vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "divulgador_id"
    t.integer "days_to_use"
    t.decimal "value", precision: 14, scale: 2
    t.integer "value_type"
    t.boolean "add_tax"
    t.boolean "use_with_promotion"
    t.string "voucher_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "divulgador_type"
    t.index ["divulgador_id"], name: "index_divulgador_vouchers_on_divulgador_id"
  end

  create_table "divulgadors", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "da01_email", default: false
    t.boolean "da01_push", default: false
    t.boolean "da02_email", default: false
    t.boolean "da02_push", default: false
    t.boolean "da03_email", default: false
    t.boolean "da03_push", default: false
    t.boolean "da04_email", default: false
    t.boolean "da04_push", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_master_id"
    t.index ["account_id"], name: "index_divulgadors_on_account_id"
    t.index ["account_master_id"], name: "damid"
  end

  create_table "domains", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "fqdn"
    t.string "title"
    t.string "description"
    t.string "keywords"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.boolean "open_franchise_page", default: false
    t.boolean "open_account_page", default: false
    t.boolean "tls", default: false
    t.boolean "not_default_subdomain", default: false
    t.index ["account_id"], name: "index_domains_on_account_id"
    t.index ["account_master_id"], name: "index_domains_on_account_master_id"
    t.index ["fqdn"], name: "index_domains_on_fqdn"
  end

  create_table "ecleticas", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "rede"
    t.string "loja"
    t.string "login_token"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enabled", default: true
    t.boolean "fast_fila", default: false
    t.index ["account_id"], name: "index_ecleticas_on_account_id"
  end

  create_table "emailage_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.integer "score"
    t.index ["account_master_id"], name: "index_emailage_clients_on_account_master_id"
    t.index ["client_id"], name: "index_emailage_clients_on_client_id"
    t.index ["email"], name: "index_emailage_clients_on_email", unique: true
  end

  create_table "emailage_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "access_token"
    t.string "refresh_token"
    t.datetime "expires_at"
    t.string "id_user"
    t.string "id_client"
    t.string "client_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bcrypt_password"
    t.string "username"
    t.string "id_client_mutation"
    t.integer "score_limit"
  end

  create_table "emailage_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.integer "account_id"
    t.integer "client_id"
    t.text "sended_body"
    t.text "received_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_emailage_logs_on_account_id"
    t.index ["account_master_id"], name: "index_emailage_logs_on_account_master_id"
    t.index ["client_id"], name: "index_emailage_logs_on_client_id"
  end

  create_table "evo_cards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.string "number"
    t.integer "payment_method"
    t.string "token"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_evo_cards_on_client_id"
  end

  create_table "evo_error_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "client_id"
    t.integer "account_id"
    t.text "raised_error"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_evo_error_logs_on_account_id"
    t.index ["client_id"], name: "index_evo_error_logs_on_client_id"
    t.index ["order_id"], name: "index_evo_error_logs_on_order_id"
  end

  create_table "evo_payments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "enable", default: true
    t.string "id_merchant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.index ["account_id"], name: "index_evo_payments_on_account_id"
  end

  create_table "evo_transaction_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.string "evo_transaction_id_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_evo_transaction_orders_on_order_id"
  end

  create_table "evo_transactions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "id_transaction"
    t.string "id_order"
    t.integer "api_operation_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.text "sended_body"
    t.text "received_body"
    t.index ["account_id"], name: "index_evo_transactions_on_account_id"
    t.index ["id_order"], name: "index_evo_transactions_on_id_order"
    t.index ["id_transaction"], name: "index_evo_transactions_on_id_transaction"
  end

  create_table "external_services_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "accon_enabled", default: true
    t.boolean "bematech_enabled", default: true
    t.boolean "boyber_enabled", default: true
    t.boolean "ecletica_enabled", default: true
    t.boolean "regua_linx_enabled", default: true
    t.boolean "loggi_enabled", default: true
    t.boolean "promidia_enabled", default: true
    t.boolean "uber_direct_enabled", default: true
    t.boolean "degust_enabled", default: true
    t.boolean "emailage_enabled", default: true
    t.boolean "linxpay_enabled", default: true
    t.boolean "payu_enabled", default: true
    t.boolean "reshop_enabled", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extra_module_business_plans", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "extra_module_id"
    t.integer "business_plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available", default: false
    t.boolean "enabled", default: false
    t.index ["business_plan_id"], name: "index_extra_module_business_plans_on_business_plan_id"
    t.index ["extra_module_id"], name: "index_extra_module_business_plans_on_extra_module_id"
  end

  create_table "extra_module_terms_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_dashboard_id"
    t.integer "admin_master_id"
    t.integer "admin_user_id"
    t.string "ip_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extra_modules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "icon"
    t.string "title"
    t.text "description"
    t.decimal "original_value", precision: 14, scale: 2
    t.decimal "promotional_value", precision: 14, scale: 2
    t.string "link"
    t.boolean "deliveryapp"
    t.boolean "abrafood"
    t.text "body"
    t.string "periodicity"
    t.string "text_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available_plano_pro", default: true
    t.boolean "available_plano_start", default: true
    t.boolean "enabled_plano_pro"
    t.boolean "enabled_plano_start"
    t.string "subtitle"
    t.string "name"
    t.boolean "available_plano_business", default: true
    t.boolean "enabled_plano_business"
    t.boolean "available_plano_beginner", default: true
    t.boolean "enabled_plano_beginner"
    t.boolean "open_activation_modal", default: false
    t.text "modal_activation_description"
    t.integer "linx_charging_item_id"
    t.index ["linx_charging_item_id"], name: "index_extra_modules_on_linx_charging_item_id"
  end

  create_table "fidelity_program_brindes", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "fidelity_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fidelity_program_id"], name: "index_fidelity_program_brindes_on_fidelity_program_id"
  end

  create_table "fidelity_program_extra_awards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "fidelity_program_id"
    t.string "discount"
    t.integer "modality_buying_type"
    t.string "modality_buying_value"
    t.integer "awards_modality_type"
    t.string "awards_modality_value"
    t.text "description"
    t.decimal "score_overflow", precision: 14, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_fidelity_program_extra_awards_on_account_id"
    t.index ["client_id"], name: "index_fidelity_program_extra_awards_on_client_id"
    t.index ["fidelity_program_id"], name: "index_fidelity_program_extra_awards_on_fidelity_program_id"
  end

  create_table "fidelity_program_extra_points", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "fidelity_program_id"
    t.integer "api_key_master_id"
    t.string "integration_name"
    t.decimal "points", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["api_key_master_id"], name: "index_fidelity_program_extra_points_on_api_key_master_id"
    t.index ["client_id"], name: "index_fidelity_program_extra_points_on_client_id"
    t.index ["fidelity_program_id"], name: "index_fidelity_program_extra_points_on_fidelity_program_id"
  end

  create_table "fidelity_program_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "fidelity_program_id"
    t.integer "order_id"
    t.integer "client_id"
    t.integer "account_id"
    t.integer "modality_buying_type"
    t.string "modality_buying_value"
    t.integer "awards_modality_type"
    t.string "awards_modality_value"
    t.string "discount"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_master_id"
    t.decimal "score_overflow", precision: 14, scale: 2
    t.index ["account_id"], name: "index_fidelity_program_orders_on_account_id"
    t.index ["account_master_id"], name: "index_fidelity_program_orders_on_account_master_id"
    t.index ["client_id"], name: "index_fidelity_program_orders_on_client_id"
    t.index ["fidelity_program_id"], name: "index_fidelity_program_orders_on_fidelity_program_id"
    t.index ["order_id"], name: "index_fidelity_program_orders_on_order_id"
  end

  create_table "fidelity_programs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.text "description"
    t.date "initial_date"
    t.date "final_date"
    t.integer "modality_buying_type"
    t.string "modality_buying_value"
    t.integer "awards_modality_type"
    t.string "awards_modality_value"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "deleted", default: false
    t.boolean "include_tax", default: false
    t.integer "account_master_id"
    t.string "ref"
    t.index ["account_id"], name: "index_fidelity_programs_on_account_id"
    t.index ["account_master_id"], name: "index_fidelity_programs_on_account_master_id"
  end

  create_table "financial_holidays", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.date "initial_date"
    t.date "final_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firebase_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.string "android_key"
    t.string "ios_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_firebase_clients_on_client_id"
  end

  create_table "firebase_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "server_key"
    t.string "json_credentials"
    t.string "id_project"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_firebase_configs_on_account_master_id"
  end

  create_table "franchise_images", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.datetime "received_image_at"
    t.datetime "generated_image_at"
    t.integer "account_master_id"
    t.string "image_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_dashboard_id"
    t.index ["account_master_id"], name: "index_franchise_images_on_account_master_id"
    t.index ["admin_dashboard_id"], name: "index_franchise_images_on_admin_dashboard_id"
  end

  create_table "franchise_task_dones", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "att_ios"
    t.boolean "new_ios"
    t.boolean "new_android"
    t.boolean "att_android"
    t.string "cause"
    t.integer "account_master_id"
    t.integer "admin_dashboard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_franchise_task_dones_on_account_master_id"
    t.index ["admin_dashboard_id"], name: "index_franchise_task_dones_on_admin_dashboard_id"
  end

  create_table "franchise_task_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "stage"
    t.integer "franchise_task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "franchise_task_done_id"
    t.index ["franchise_task_id"], name: "index_franchise_task_logs_on_franchise_task_id"
  end

  create_table "franchise_tasks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "att_ios", default: false
    t.boolean "new_ios", default: false
    t.boolean "att_android", default: false
    t.boolean "new_android", default: false
    t.string "cause"
    t.integer "account_master_id"
    t.integer "admin_dashboard_id"
    t.integer "stage", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "client_logo"
    t.string "client_certificate"
    t.boolean "need_push", default: false
    t.boolean "finished_design", default: false
    t.string "new_client_image"
    t.index ["account_master_id"], name: "index_franchise_tasks_on_account_master_id"
    t.index ["admin_dashboard_id"], name: "index_franchise_tasks_on_admin_dashboard_id"
    t.index ["finished_design"], name: "index_franchise_tasks_on_finished_design"
  end

  create_table "franquia_customizations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "bg_geral"
    t.string "borda_rest"
    t.string "bg_rest"
    t.string "fonte_titulo"
    t.string "fonte_tempo_entrega"
    t.string "fonte_rest_aberto"
    t.string "fonte_rest_fechado"
    t.string "botao_pedir"
    t.string "botao_pedir_fonte"
    t.string "botao_pedir_on"
    t.string "botao_cardapio"
    t.string "botao_cardapio_fonte"
    t.string "bg_img_logo"
    t.string "not_promotion_font"
    t.string "menu_bg"
    t.string "menu_bg_on"
    t.string "menu_fonte"
    t.string "fonte_detalhes_promocao"
    t.string "porcentagem_promocao_fonte"
    t.string "bg_porcentagem_promocao"
    t.boolean "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "caixatexto_bg"
    t.string "caixatexto_borda"
    t.string "caixa_texto_fonte"
    t.string "fonte_um"
    t.string "fonte_dois"
    t.string "fonte_tres"
    t.string "fonte_preco"
    t.string "bg_alternativo_um"
    t.string "bg_alternativo_dois"
    t.index ["account_master_id"], name: "fcamid"
  end

  create_table "friendly_id_slugs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 40
    t.datetime "created_at"
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", unique: true
    t.index ["sluggable_id", "sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_id_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "general_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "use_api_location", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "min_app_version_required_android"
    t.string "min_app_version_alert_android"
    t.string "min_app_version_required_ios"
    t.string "min_app_version_alert_ios"
    t.boolean "use_base_cep", default: false
    t.boolean "send_push_order_status", default: true
    t.boolean "centralize_google_api"
    t.string "divulgador_birthdate_app_version", default: "1"
    t.boolean "online_payment_enable", default: true, null: false
    t.boolean "maxipago_online_payment_enable", default: true, null: false
    t.string "payment_yapay_version"
    t.boolean "google_api", default: true
    t.boolean "here_api", default: false
    t.boolean "use_neemo_addresses_service", default: false
    t.string "addresses_microservice_ip"
    t.boolean "enable_remotely_logs", default: false
    t.boolean "linxpay_zero_dolar", default: false
    t.text "linx_api_token"
    t.datetime "linx_api_token_expiration"
    t.boolean "new_api_stores_search", default: false
    t.boolean "use_api_cache_store_search", default: false
    t.integer "limit_nc_store_search_cache"
    t.boolean "show_alert_new_panel", default: false
    t.boolean "use_elasticsearch_cache", default: false
    t.boolean "enabled_lower_price_cache", default: false
    t.boolean "enabled_complement_cache", default: false
    t.boolean "enabled_payment_online_logs", default: false
    t.boolean "use_redis_in_change_delivery_time", default: false
    t.boolean "allowed_update_geolocation", default: true
    t.boolean "update_geolocation_order_api", default: true
    t.boolean "google_request_log_enabled", default: false
  end

  create_table "global_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "accountable_id"
    t.string "accountable_type"
    t.boolean "enable", default: true
    t.integer "maximum"
    t.integer "minimum"
    t.boolean "required"
    t.string "title"
    t.integer "ordem", default: 1
    t.string "code"
    t.boolean "more_than_one", default: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_id"
    t.integer "category_id"
    t.integer "complement_type", default: 0
    t.string "ref"
    t.decimal "lower_price", precision: 14, scale: 2, default: "0.0"
    t.index ["accountable_id", "accountable_type"], name: "index_gcc"
    t.index ["category_id"], name: "index_global_complement_categories_on_category_id"
    t.index ["menu_id"], name: "index_global_complement_categories_on_menu_id"
  end

  create_table "global_complement_tamanho_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "price", precision: 14, scale: 2
    t.string "ref"
    t.datetime "deleted_at"
    t.integer "pizza_tamanho_id"
    t.integer "global_complement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["global_complement_id"], name: "index_globa_complement_tamanho_prices_on_global_complement_id"
    t.index ["pizza_tamanho_id"], name: "index_globa_complement_tamanho_prices_on_pizza_tamanho_id"
  end

  create_table "global_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "accountable_id"
    t.string "accountable_type"
    t.string "description"
    t.boolean "enable", default: true
    t.decimal "price", precision: 14, scale: 2
    t.string "title"
    t.string "ref"
    t.string "code"
    t.integer "photo_complement_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_id"
    t.integer "complement_type", default: 0
    t.integer "category_id"
    t.boolean "visibility", default: true
    t.string "name_for_pdv"
    t.index ["accountable_id", "accountable_type"], name: "index_global_complements_on_accountable_id_and_accountable_type"
    t.index ["category_id"], name: "index_global_complements_on_category_id"
    t.index ["menu_id"], name: "index_global_complements_on_menu_id"
  end

  create_table "global_group_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "global_complement_category_id"
    t.integer "global_complement_id"
    t.boolean "enable", default: true
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "ordem", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "calculation_type", default: 1
    t.datetime "deleted_at"
    t.index ["accountable_id", "accountable_type"], name: "index_ggc"
    t.index ["global_complement_category_id"], name: "index_global_group_complements_on_global_complement_category_id"
    t.index ["global_complement_id"], name: "index_global_group_complements_on_global_complement_id"
  end

  create_table "google_request_loggers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "reference_that_called"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "google_request_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "log_name"
    t.integer "google_key_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "happy_birthday_dispatches", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "account_master_id"
    t.integer "divulgador_id"
    t.boolean "sended_email", default: false
    t.boolean "sended_push", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_happy_birthday_dispatches_on_account_master_id"
    t.index ["client_id"], name: "index_happy_birthday_dispatches_on_client_id"
    t.index ["divulgador_id"], name: "index_happy_birthday_dispatches_on_divulgador_id"
    t.index ["sended_email"], name: "index_happy_birthday_dispatches_on_sended_email"
    t.index ["sended_push"], name: "index_happy_birthday_dispatches_on_sended_push"
  end

  create_table "heat_maps", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "account_master_id"
    t.integer "client_id"
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "cep"
    t.string "ip"
    t.boolean "meets"
    t.integer "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id", "account_master_id", "created_at", "latitude", "longitude", "meets"], name: "index_acc_mast_creat_lat_lng_meet"
    t.index ["account_id"], name: "index_heat_maps_on_account_id"
    t.index ["account_master_id"], name: "index_heat_maps_on_account_master_id"
    t.index ["client_id"], name: "index_heat_maps_on_client_id"
  end

  create_table "here_address_qualities", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "match_level"
    t.float "district_quality"
    t.float "street_quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "how_you_founds", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hub_registrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_dashboard_id"
    t.integer "account_id"
    t.text "sended_body"
    t.text "received_body"
    t.text "exceptions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_hub_registrations_on_account_id"
    t.index ["admin_dashboard_id"], name: "index_hub_registrations_on_admin_dashboard_id"
  end

  create_table "icg_keys", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "server_ip"
    t.string "folder_path"
    t.string "username"
    t.string "password"
    t.boolean "enabled", default: true
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_icg_keys_on_account_id"
  end

  create_table "integration_api_locks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "token"
    t.datetime "last_call"
    t.integer "api_route"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "response"
    t.index ["token"], name: "index_integration_api_locks_on_token"
  end

  create_table "integrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "external_id"
    t.string "token"
    t.boolean "active"
    t.integer "account_id"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inter_shopping_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "enable", default: true
    t.datetime "enable_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_inter_shopping_accounts_on_account_id"
  end

  create_table "inter_shopping_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.string "id_inter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_inter_shopping_orders_on_order_id"
  end

  create_table "item_availability_schedules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "item_day_week_id"
    t.integer "start_time"
    t.integer "end_time"
    t.integer "start_minute"
    t.integer "end_minute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["item_day_week_id"], name: "index_item_availability_schedules_on_item_day_week_id"
  end

  create_table "item_component_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "price_id"
    t.integer "item_component_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "custom_value"
    t.decimal "value", precision: 14, scale: 2
    t.index ["item_component_id"], name: "icpicid"
    t.index ["price_id"], name: "icppid"
  end

  create_table "item_components", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "component_id"
    t.integer "item_id"
    t.decimal "price", precision: 14, scale: 2
    t.boolean "customize_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["component_id"], name: "index_item_components_on_component_id"
    t.index ["item_id"], name: "index_item_components_on_item_id"
  end

  create_table "item_day_weeks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "day"
    t.integer "item_day_weekssable_id"
    t.string "item_day_weekssable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["day"], name: "index_item_day_weeks_on_day"
    t.index ["item_day_weekssable_id", "item_day_weekssable_type"], name: "index_idw"
    t.index ["item_day_weekssable_id"], name: "index_item_day_weeks_on_item_day_weekssable_id"
  end

  create_table "item_global_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "global_complement_category_id"
    t.integer "item_id"
    t.integer "ordem", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["global_complement_category_id"], name: "index_global_complement_category"
    t.index ["item_id"], name: "index_item_global_complement_categories_on_item_id"
  end

  create_table "item_lower_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "item_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "lower_price_delivery", precision: 14, scale: 2
    t.decimal "lower_price_store", precision: 14, scale: 2
    t.decimal "lower_price_table", precision: 14, scale: 2
    t.index ["account_id"], name: "index_item_lower_prices_on_account_id"
    t.index ["item_id"], name: "index_item_lower_prices_on_item_id"
  end

  create_table "item_order_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "title"
    t.integer "item_order_id"
    t.integer "complement_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complement_categoriable_id"
    t.string "complement_categoriable_type"
    t.index ["complement_categoriable_id", "complement_categoriable_type"], name: "index_iocc"
    t.index ["item_order_id"], name: "index_item_order_complement_categories_on_item_order_id"
  end

  create_table "item_order_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.decimal "price_un", precision: 14, scale: 2
    t.integer "quantity"
    t.integer "item_order_complement_category_id"
    t.integer "complement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complementable_id"
    t.string "complementable_type"
    t.integer "promotion_item_option_id"
    t.index ["complementable_id", "complementable_type"], name: "index_ioc"
    t.index ["item_order_complement_category_id"], name: "item_order_complement_on_item_order_complement_category_id"
    t.index ["promotion_item_option_id"], name: "index_item_order_complements_on_promotion_item_option_id"
  end

  create_table "item_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "item_id"
    t.integer "order_id"
    t.decimal "quantity", precision: 10
    t.decimal "price_un", precision: 14, scale: 2
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
    t.string "item_title"
    t.integer "price_id"
    t.boolean "promotion", default: false
    t.integer "point", default: 1
    t.integer "promotion_item_id"
    t.integer "promotion_item_option_id"
    t.integer "voucher_id"
    t.integer "promotion_group_order_id"
    t.index ["item_id"], name: "index_item_orders_on_item_id"
    t.index ["order_id"], name: "index_item_orders_on_order_id"
    t.index ["promotion_item_id"], name: "index_item_orders_on_promotion_item_id"
    t.index ["promotion_item_option_id"], name: "index_item_orders_on_promotion_item_option_id"
    t.index ["voucher_id"], name: "index_item_orders_on_voucher_id"
  end

  create_table "item_vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "item_id"
    t.integer "voucher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_vouchers_on_item_id"
    t.index ["voucher_id"], name: "index_item_vouchers_on_voucher_id"
  end

  create_table "items", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.integer "category_id"
    t.text "intro"
    t.boolean "enable"
    t.string "content"
    t.string "photo"
    t.string "outid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "out_id"
    t.integer "account_id"
    t.integer "ordem", default: 1
    t.date "promotion_data_inicio"
    t.date "promotion_data_fim"
    t.string "promotion_title"
    t.string "promotion_photo"
    t.boolean "promotion_destaque", default: false
    t.boolean "promotion_enabled", default: false
    t.integer "point", default: 1
    t.boolean "balcao", default: false
    t.boolean "new_rule_promotion", default: false
    t.datetime "deleted_at"
    t.boolean "only_scheduling", default: false
    t.integer "accountable_id"
    t.string "accountable_type"
    t.boolean "enable_cupom", default: false
    t.boolean "disable_menu", default: false
    t.decimal "lower_price", precision: 14, scale: 2
    t.decimal "lower_price_delivery", precision: 14, scale: 2
    t.decimal "lower_price_store", precision: 14, scale: 2
    t.decimal "lower_price_table", precision: 14, scale: 2
    t.string "name_for_pdv"
    t.index ["account_id"], name: "index_items_on_account_id"
    t.index ["accountable_id", "accountable_type"], name: "index_items_on_accountable_id_and_accountable_type"
    t.index ["category_id"], name: "index_items_on_category_id"
  end

  create_table "lgpd_client_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.text "prev_config"
    t.text "new_config"
    t.text "web_navigator"
    t.text "mobile_data"
    t.string "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_lgpd_client_logs_on_client_id"
  end

  create_table "liberacao_painel_extra_modules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "liberacao_painel_id"
    t.integer "extra_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["extra_module_id"], name: "index_liberacao_painel_extra_modules_on_extra_module_id"
    t.index ["liberacao_painel_id"], name: "index_liberacao_painel_extra_modules_on_liberacao_painel_id"
  end

  create_table "liberacao_painels", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_task_runrunit"
    t.string "plano"
    t.boolean "nova_loja"
    t.integer "account_manager"
    t.string "name_franquia"
    t.string "app_name"
    t.string "client_name"
    t.string "phone"
    t.string "city_name"
    t.string "abbreviation"
    t.string "address"
    t.string "email_send"
    t.string "email_admin_access"
    t.string "email_master_access"
    t.string "smartlink"
    t.boolean "ios"
    t.boolean "status"
    t.integer "id_superlogica"
    t.string "number"
    t.string "bairro"
    t.string "complement"
    t.string "cep"
    t.integer "account_master_confirmation"
    t.boolean "send_admin_access"
    t.boolean "send_master_access"
    t.boolean "is_franquia"
    t.decimal "implantation_value", precision: 14, scale: 2
    t.integer "salespeoples_id"
    t.integer "deployment_analyst_id"
    t.integer "menu_registrant_id"
    t.integer "linx_client_id"
    t.text "get_erros"
    t.text "comments"
    t.integer "linx_contract_id"
    t.boolean "linx_automation", default: false
    t.integer "linx_item_id"
    t.string "justification"
    t.boolean "need_to_approve", default: false
    t.index ["linx_item_id"], name: "index_liberacao_painels_on_linx_item_id"
  end

  create_table "linx_charging_items", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "item_code"
    t.boolean "old_charging_item", default: false
    t.integer "new_linx_charging_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_type"
    t.boolean "tarifacao", default: false
    t.boolean "product_plan", default: false
    t.boolean "extra_module", default: false
    t.index ["item_code"], name: "index_linx_charging_items_on_item_code"
    t.index ["new_linx_charging_item_id"], name: "index_linx_charging_items_on_new_linx_charging_item_id"
    t.index ["old_charging_item"], name: "index_linx_charging_items_on_old_charging_item"
  end

  create_table "linx_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "client_code", limit: 6
    t.string "fantasy_name"
    t.string "cnpj_cpf", limit: 19
    t.string "phone", limit: 20
    t.string "address"
    t.string "number", limit: 10
    t.string "complement"
    t.string "cep", limit: 9
    t.string "neighborhood"
    t.string "city", limit: 35
    t.string "state", limit: 2
    t.text "comments"
    t.string "business_relationship", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "registration_date"
    t.string "email"
    t.string "contract_group"
    t.index ["client_code"], name: "index_linx_clients_on_client_code"
    t.index ["cnpj_cpf"], name: "index_linx_clients_on_cnpj_cpf"
  end

  create_table "linx_contract_responsibles", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "linx_contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linx_contract_id"], name: "index_linx_contract_responsibles_on_linx_contract_id"
  end

  create_table "linx_contracts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "contract_id", limit: 25
    t.integer "linx_client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_linx_contracts_on_contract_id"
    t.index ["linx_client_id"], name: "index_linx_contracts_on_linx_client_id"
  end

  create_table "linx_franchisee_admin_dashboards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_dashboard_id"
    t.integer "linx_franchisee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_dashboard_id"], name: "index_linx_franchisee_admin_dashboards_on_admin_dashboard_id"
    t.index ["linx_franchisee_id"], name: "index_linx_franchisee_admin_dashboards_on_linx_franchisee_id"
  end

  create_table "linx_franchisees", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linx_items", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "item_id", limit: 4
    t.string "item_code", limit: 50
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "status", limit: 40
    t.string "representative"
    t.string "manager"
    t.integer "linx_contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "should_create_panel", default: false
    t.integer "quantity"
    t.string "price_unit"
    t.string "contract_value"
    t.string "oportunity_group"
    t.string "sub_oportunity_group"
    t.string "oportunity"
    t.index ["item_code"], name: "index_linx_items_on_item_code"
    t.index ["item_id"], name: "index_linx_items_on_item_id"
    t.index ["linx_contract_id"], name: "index_linx_items_on_linx_contract_id"
  end

  create_table "linx_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "response_error"
    t.integer "objectable_id"
    t.string "objectable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "notify_by_email", default: false
    t.index ["objectable_id"], name: "index_linx_logs_on_objectable_id"
  end

  create_table "linx_opportunities", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "linx_item_id"
    t.string "opportunity_group"
    t.string "sub_opportunity_group"
    t.string "opportunity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linx_item_id"], name: "index_linx_opportunities_on_linx_item_id"
    t.index ["opportunity_id"], name: "index_linx_opportunities_on_opportunity_id"
  end

  create_table "linx_pay_deliveryapps", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "consumer_key"
    t.string "app_key"
    t.string "secret_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linx_pay_transactions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "account_id"
    t.text "send_body"
    t.text "received_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_linx_pay_transactions_on_account_id"
    t.index ["order_id"], name: "index_linx_pay_transactions_on_order_id"
  end

  create_table "linx_pays", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "app_key"
    t.string "consumer_key"
    t.string "secret_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enabled", default: true
    t.index ["account_id"], name: "index_linx_pays_on_account_id"
  end

  create_table "linx_points", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "point_id"
    t.string "point_name"
    t.string "point_cnpj_cpf"
    t.integer "linx_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "linx_opportunity_id"
    t.index ["linx_opportunity_id"], name: "index_linx_points_on_linx_opportunity_id"
    t.index ["point_id"], name: "index_linx_points_on_point_id"
  end

  create_table "linx_reduction_rescissions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "solicitation_id"
    t.string "reason"
    t.string "status"
    t.boolean "item_quantity_reduction", default: false
    t.boolean "value_reduction", default: false
    t.boolean "contract_rescission", default: false
    t.integer "linx_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["linx_item_id"], name: "index_linx_reduction_rescissions_on_linx_item_id"
    t.index ["reason"], name: "index_linx_reduction_rescissions_on_reason"
    t.index ["solicitation_id"], name: "index_linx_reduction_rescissions_on_solicitation_id"
    t.index ["status"], name: "index_linx_reduction_rescissions_on_status"
  end

  create_table "linx_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "api_charging_engine_settings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "api_contract_settings"
  end

  create_table "linxpay_cards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "bandeira"
    t.string "numero_cartao"
    t.integer "client_id"
    t.string "token"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bin"
    t.index ["account_id"], name: "index_linxpay_cards_on_account_id"
    t.index ["client_id"], name: "index_linxpay_cards_on_client_id"
  end

  create_table "locations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "latitude", precision: 14, scale: 8
    t.decimal "longitude", precision: 14, scale: 8
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "lock_transaction_zero_dollars", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.datetime "time_locked"
    t.boolean "lock_enabled", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_lock_transaction_zero_dollar_on_client_id"
  end

  create_table "log_integrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "integration_id"
    t.text "body"
    t.text "response"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["integration_id"], name: "index_log_integrations_on_integration_id"
    t.index ["order_id"], name: "index_log_integrations_on_order_id"
  end

  create_table "loggi_api_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "url"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loggis", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_extra_module_id"
    t.string "user"
    t.string "pass"
    t.integer "account_id"
    t.integer "id_loggi_shop"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_extra_module_id"], name: "index_loggis_on_account_extra_module_id"
    t.index ["account_id"], name: "index_loggis_on_account_id"
    t.index ["id_loggi_shop"], name: "index_loggis_on_id_loggi_shop"
  end

  create_table "machines", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "nc_version"
    t.string "os_name"
    t.string "os_version"
    t.string "os_arch"
    t.string "mac_address"
    t.string "ip_address"
    t.string "java_version"
    t.integer "screen_width"
    t.integer "screen_height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mac_address"], name: "index_machines_on_mac_address"
  end

  create_table "massa_tamanho_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_massa_id"
    t.integer "pizza_tamanho_id"
    t.decimal "price", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["pizza_massa_id"], name: "index_massa_tamanho_prices_on_pizza_massa_id"
    t.index ["pizza_tamanho_id"], name: "mtpptid"
  end

  create_table "master_extra_modules", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "icon"
    t.string "title"
    t.text "description"
    t.decimal "original_value", precision: 14, scale: 2
    t.decimal "promotional_value", precision: 14, scale: 2
    t.string "link"
    t.text "body"
    t.string "periodicity"
    t.string "text_value"
    t.boolean "available"
    t.boolean "enabled"
    t.string "subtitle"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "max_pagos", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "merchant_id"
    t.string "merchant_key"
    t.integer "account_id"
    t.string "card_operator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_max_pagos_on_account_id"
  end

  create_table "maxipago_cards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "bandeira"
    t.string "numero_cartao"
    t.integer "client_id"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_maxipago_cards_on_account_id"
    t.index ["client_id"], name: "index_maxipago_cards_on_client_id"
  end

  create_table "maxipago_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "account_id"
    t.integer "id_maxipago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_maxipago_clients_on_account_id"
    t.index ["client_id"], name: "index_maxipago_clients_on_client_id"
  end

  create_table "menu_registrants", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "deployment_analyst_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_dashboard_id"
    t.string "ddd", limit: 2
    t.string "phone", limit: 10
    t.boolean "enabled", default: true
    t.index ["admin_dashboard_id"], name: "index_menu_registrants_on_admin_dashboard_id"
  end

  create_table "menus", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.boolean "shared"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_master_id"
    t.boolean "enable", default: true
    t.string "description"
    t.string "photo"
    t.index ["account_master_id"], name: "index_menus_on_account_master_id"
  end

  create_table "motoboy_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "motoboy_id", null: false
    t.integer "order_id", null: false
    t.integer "account_id", null: false
    t.decimal "received_commission", precision: 14, scale: 2
    t.integer "payment_method"
    t.decimal "commission", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_motoboy_orders_on_account_id"
    t.index ["motoboy_id"], name: "index_motoboy_orders_on_motoboy_id"
    t.index ["order_id"], name: "index_motoboy_orders_on_order_id"
  end

  create_table "motoboys", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "payment_method"
    t.boolean "enable", default: true
    t.decimal "commission", precision: 14, scale: 2
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_motoboys_on_account_id"
  end

  create_table "mundipagg_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "mundipagg_id"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable_alelo", default: false
    t.boolean "enable_sodexo", default: false
    t.boolean "enable_vr", default: false
    t.integer "merchant_type"
    t.index ["account_id"], name: "index_mundipagg_accounts_on_account_id"
    t.index ["mundipagg_id"], name: "index_mundipagg_accounts_on_mundipagg_id"
  end

  create_table "mundipagg_card_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "account_id"
    t.integer "account_master_id"
    t.string "token_mundipagg_card"
    t.string "payment_method"
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_mundipagg_card_clients_on_account_id"
    t.index ["account_master_id"], name: "index_mundipagg_card_clients_on_account_master_id"
    t.index ["client_id"], name: "index_mundipagg_card_clients_on_client_id"
  end

  create_table "mundipagg_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "mundipagg_id"
    t.string "mundipagg_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_mundipagg_clients_on_client_id"
    t.index ["mundipagg_id"], name: "index_mundipagg_clients_on_mundipagg_id"
  end

  create_table "mundipagg_deliveryapps", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "amk_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "amk_key_other_acquirers"
  end

  create_table "mundipagg_partner_registrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "corporate_name"
    t.string "document_number"
    t.string "stone_sak"
    t.string "address_number"
    t.string "address_neighborhood"
    t.string "address_complement"
    t.string "address_zip_code"
    t.string "address_city"
    t.string "address_state"
    t.string "address_country", default: "BR"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address_street"
    t.string "cielo_store_access_key"
    t.string "cielo_store_code"
    t.string "rede_pv"
    t.string "rede_token"
    t.string "getnet_accredit_number"
    t.string "getnet_logical_number"
    t.string "getnet_transaction_user"
    t.string "getnet_transaction_password"
    t.integer "merchant_type"
    t.index ["account_id"], name: "index_mundipagg_partner_registrations_on_account_id"
  end

  create_table "mundipagg_payments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "payment_id"
    t.integer "account_id"
    t.boolean "enable_alelo", default: false
    t.boolean "enable_sodexo", default: false
    t.boolean "enable_vr", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_mundipagg_payments_on_account_id"
    t.index ["payment_id"], name: "index_mundipagg_payments_on_payment_id"
  end

  create_table "mundipagg_transaction_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "client_id"
    t.text "sended_body"
    t.text "received_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "api_errors"
    t.index ["client_id"], name: "index_mundipagg_transaction_logs_on_client_id"
    t.index ["order_id"], name: "index_mundipagg_transaction_logs_on_order_id"
  end

  create_table "mundipaggs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "public_key"
    t.string "secret_key"
    t.string "account_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "id_merchant"
  end

  create_table "nc_store_search_caches", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "response", size: :medium
    t.string "neemo_connect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "parameters"
    t.integer "total_identifiers"
    t.boolean "cache_updated", default: false
    t.index ["neemo_connect_id"], name: "index_nc_store_search_caches_on_neemo_connect_id"
  end

  create_table "neemo_connect_account_identifiers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "neemo_connect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_neemo_connect_account_identifiers_on_account_id"
    t.index ["neemo_connect_id"], name: "index_neemo_connect_account_identifiers_on_neemo_connect_id"
  end

  create_table "neemo_connect_auto_update_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "client_system"
    t.string "current_version"
    t.string "new_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neemo_connect_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "stable_version"
    t.string "current_version"
    t.boolean "downgrade_enabled", default: false
    t.boolean "update_enabled", default: true
    t.string "download_url_base"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoods", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "city_franquia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_franquia_id"], name: "index_neighborhoods_on_city_franquia_id"
  end

  create_table "no_operation_places", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "no_operation_time_id"
    t.integer "delivery_place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_place_id"], name: "nopdpid"
    t.index ["no_operation_time_id"], name: "nopnotid"
  end

  create_table "no_operation_times", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "operation_id"
    t.integer "start_hour"
    t.integer "start_min"
    t.integer "end_hour"
    t.integer "end_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["operation_id"], name: "index_no_operation_times_on_operation_id"
  end

  create_table "novidades", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "photo"
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "one_signal_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.string "ios_key"
    t.string "android_key"
    t.string "web_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_one_signal_clients_on_client_id"
  end

  create_table "one_signal_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "id_app"
    t.string "rest_api_key"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "circle_background"
    t.string "circle_foreground"
    t.string "dialog_button_background"
    t.string "dialog_button_background_hovering"
    t.string "dialog_button_background_active"
    t.string "dialog_button_foreground"
    t.string "pulse_color"
    t.string "badge_background"
    t.string "badge_foreground"
    t.string "badge_bordercolor"
    t.string "safari_push_icon"
    t.string "google_project_number"
    t.index ["account_master_id"], name: "index_one_signal_configs_on_account_master_id"
  end

  create_table "operation_times", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "start_hour"
    t.integer "start_min"
    t.integer "end_hour"
    t.integer "end_min"
    t.integer "operation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["operation_id"], name: "index_operation_times_on_operation_id"
  end

  create_table "operations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "day_week"
    t.boolean "opened"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_operations_on_account_id"
    t.index ["day_week"], name: "index_operations_on_day_week"
  end

  create_table "order_additional_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "additional_category_id"
    t.string "title", default: ""
    t.boolean "text_input", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["additional_category_id"], name: "index_order_additional_categories_on_additional_category_id"
    t.index ["order_id"], name: "index_order_additional_categories_on_order_id"
  end

  create_table "order_additionals", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_additional_category_id"
    t.integer "additional_id"
    t.integer "quantity", default: 1
    t.decimal "price_un", precision: 14, scale: 2, default: "0.0"
    t.string "text_input", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", default: ""
    t.index ["additional_id"], name: "index_order_additionals_on_additional_id"
    t.index ["order_additional_category_id"], name: "index_order_additionals_on_order_additional_category_id"
  end

  create_table "order_central_deliveries", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "promotion_type"
    t.decimal "promotion_value", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_central_deliveries_on_order_id"
  end

  create_table "order_delivery_trackings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "delivery_tracking_url"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.string "external_id"
    t.index ["account_id"], name: "index_order_delivery_trackings_on_account_id"
    t.index ["external_id"], name: "index_order_delivery_trackings_on_external_id"
    t.index ["order_id"], name: "index_order_delivery_trackings_on_order_id"
  end

  create_table "order_history_statuses", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "status"
    t.datetime "date"
    t.integer "admin_extranet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_integration_errors", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "integration_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.string "message"
    t.index ["account_id"], name: "index_order_integration_errors_on_account_id"
    t.index ["integration_id"], name: "index_order_integration_errors_on_integration_id"
    t.index ["order_id"], name: "index_order_integration_errors_on_order_id"
  end

  create_table "order_integration_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "integration_id"
    t.text "response"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "raw"
    t.index ["integration_id"], name: "oiliid"
    t.index ["order_id"], name: "oiloid"
  end

  create_table "order_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "order_id"
    t.integer "order_number"
    t.datetime "date"
    t.integer "status"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_order_logs_on_account_id"
    t.index ["order_id"], name: "index_order_logs_on_order_id"
  end

  create_table "order_reshops", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.string "nsu_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_order_reshops_on_account_id"
    t.index ["order_id"], name: "index_order_reshops_on_order_id"
  end

  create_table "order_scheduling_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "min_hours"
    t.integer "max_hours"
    t.boolean "enabled", default: true
    t.integer "timeout_hours", default: 12
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "interval_min", default: 30
    t.index ["account_id"], name: "index_order_scheduling_configs_on_account_id"
  end

  create_table "order_scheduling_operation_times", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "start_hour"
    t.integer "start_min"
    t.integer "end_hour"
    t.integer "end_min"
    t.integer "order_scheduling_operation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_scheduling_operation_id"], name: "osot_oso"
  end

  create_table "order_scheduling_operations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "day_week"
    t.boolean "opened"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_order_scheduling_operations_on_account_id"
  end

  create_table "order_schedulings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.datetime "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id", "created_at"], name: "index_order_schedulings_on_account_id_and_created_at"
    t.index ["account_id"], name: "index_order_schedulings_on_account_id"
    t.index ["order_id"], name: "index_order_schedulings_on_order_id", unique: true
  end

  create_table "order_tax_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.string "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_tax_logs_on_order_id"
  end

  create_table "order_users", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "order_userable_id"
    t.string "order_userable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_users_on_order_id"
    t.index ["order_userable_id", "order_userable_type"], name: "index_order_users_on_order_userable_id_and_order_userable_type"
  end

  create_table "order_vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "voucher_id"
    t.decimal "voucher_discount", precision: 14, scale: 2
    t.string "voucher_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brinde"
    t.integer "voucher_brinde_id"
    t.decimal "tax_entrega", precision: 14, scale: 2
    t.boolean "item_voucher", default: false
    t.index ["order_id"], name: "index_order_vouchers_on_order_id"
    t.index ["voucher_brinde_id"], name: "index_order_vouchers_on_voucher_brinde_id"
    t.index ["voucher_id"], name: "index_order_vouchers_on_voucher_id"
  end

  create_table "orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "notes"
    t.integer "status"
    t.string "order_unique_id"
    t.decimal "tax", precision: 14, scale: 2
    t.string "selected_location"
    t.datetime "date"
    t.string "outid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.string "cep"
    t.string "number"
    t.string "city"
    t.string "email"
    t.string "neighborhood"
    t.boolean "visualized"
    t.string "cpf"
    t.string "complement"
    t.integer "forma_entrega", default: 1
    t.integer "origin"
    t.integer "order_number"
    t.integer "client_id"
    t.decimal "troco", precision: 14, scale: 2
    t.boolean "payment_online", default: false
    t.string "verification_number"
    t.decimal "lat", precision: 14, scale: 10
    t.decimal "lng", precision: 14, scale: 10
    t.string "cpf_in_note"
    t.integer "voucher_id"
    t.decimal "voucher_discount", precision: 14, scale: 2
    t.string "voucher_code"
    t.datetime "scheduling"
    t.string "reference_point"
    t.string "app_version"
    t.boolean "printed", default: false
    t.integer "reproved_reason"
    t.decimal "fidelity_program_discount", precision: 14, scale: 2, default: "0.0"
    t.string "maioridade_rg"
    t.string "maioridade_cpf"
    t.date "maioridade_birthdate"
    t.decimal "taxa_extra", precision: 14, scale: 2
    t.string "taxa_extra_title"
    t.boolean "lancado", default: false
    t.decimal "total", precision: 14, scale: 2
    t.integer "id_repeated_order_origin"
    t.boolean "repeatable", default: true
    t.string "client_ip"
    t.integer "min_time"
    t.integer "max_time"
    t.integer "id_on_integration", default: 0
    t.index ["account_id", "client_id"], name: "index_orders_on_account_id_and_client_id"
    t.index ["account_id", "status", "date"], name: "index_orders_on_account_id_and_status_and_date"
    t.index ["account_id"], name: "index_orders_on_account_id"
    t.index ["client_id"], name: "index_orders_on_client_id"
    t.index ["created_at", "verification_number"], name: "index_orders_on_created_at_and_verification_number"
    t.index ["created_at"], name: "index_orders_on_created_at"
    t.index ["date"], name: "index_orders_on_date"
    t.index ["status"], name: "index_orders_on_status"
    t.index ["updated_at"], name: "index_orders_on_updated_at"
  end

  create_table "partners", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "logo"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "site"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_partners_on_account_id"
  end

  create_table "payment_methods", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.string "icone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_methods_payments", id: false, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "payment_method_id"
    t.integer "payment_id"
    t.index ["payment_id"], name: "pmppid"
    t.index ["payment_method_id", "payment_id"], name: "pmppmidpid"
    t.index ["payment_method_id"], name: "pmppmid"
  end

  create_table "payment_online_errors", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "payment_type"
    t.text "body"
    t.text "response"
    t.integer "order_id"
    t.integer "transaction_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_payment_online_errors_on_account_id"
    t.index ["order_id"], name: "index_payment_online_errors_on_order_id"
    t.index ["transaction_id"], name: "index_payment_online_errors_on_transaction_id"
  end

  create_table "payment_online_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "order_id"
    t.integer "client_id"
    t.text "response_log"
    t.integer "origin"
    t.integer "first_payment_online_log_id"
    t.integer "gateway_type"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_payment_online_logs_on_account_id"
    t.index ["client_id"], name: "index_payment_online_logs_on_client_id"
    t.index ["first_payment_online_log_id"], name: "index_payment_online_logs_on_first_payment_online_log_id"
    t.index ["gateway_type"], name: "index_payment_online_logs_on_gateway_type"
    t.index ["order_id"], name: "index_payment_online_logs_on_order_id"
    t.index ["origin"], name: "index_payment_online_logs_on_origin"
  end

  create_table "payments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "tax", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_option"
    t.string "order_email"
    t.string "order_user"
    t.string "order_pass"
    t.text "locations"
    t.string "moeda"
    t.integer "account_id"
    t.decimal "minimum_order", precision: 14, scale: 2, default: "0.0"
    t.boolean "include_tax", default: true
    t.boolean "pizza_maior_valor", default: false
    t.boolean "payment_online", default: false
    t.boolean "cobra_taxa", default: true
    t.boolean "pizza_complement_media_valor", default: true
    t.boolean "voucher_with_fidelity_program", default: false
    t.decimal "minimum_order_tax", precision: 14, scale: 2
    t.integer "gateway"
    t.decimal "taxa_extra", precision: 14, scale: 2
    t.boolean "include_taxa_extra", default: true
    t.string "taxa_extra_title"
    t.decimal "tax_by_order_percent", precision: 14, scale: 2
    t.boolean "use_general_voucher_delivery_central", default: true
    t.integer "business_rules", default: 2
    t.boolean "accept_only_online_payment_for_table_order", default: false
    t.boolean "enable_pix", default: false
    t.string "pix_type"
    t.string "pix_value"
    t.boolean "payment_offline_on_first_order", default: false
    t.index ["account_id"], name: "index_payments_on_account_id"
  end

  create_table "payu_cards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.string "number"
    t.integer "payment_method"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "identification_number"
    t.index ["client_id"], name: "index_payu_cards_on_client_id"
  end

  create_table "payu_error_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "client_id"
    t.integer "account_id"
    t.text "raised_error"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_payu_error_logs_on_account_id"
    t.index ["client_id"], name: "index_payu_error_logs_on_client_id"
    t.index ["order_id"], name: "index_payu_error_logs_on_order_id"
  end

  create_table "payu_transaction_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "account_id"
    t.integer "client_id"
    t.text "sended_body"
    t.text "received_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_payu_transaction_logs_on_account_id"
    t.index ["client_id"], name: "index_payu_transaction_logs_on_client_id"
    t.index ["order_id"], name: "index_payu_transaction_logs_on_order_id"
  end

  create_table "payus", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "enable", default: true
    t.string "api_key"
    t.string "api_login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_account"
    t.integer "id_merchant"
    t.index ["account_id"], name: "index_payus_on_account_id"
  end

  create_table "pending_order_rating_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "account_id"
    t.integer "client_id"
    t.datetime "rating_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_pending_order_rating_logs_on_account_id"
    t.index ["client_id"], name: "index_pending_order_rating_logs_on_client_id"
    t.index ["created_at"], name: "index_pending_order_rating_logs_on_created_at"
    t.index ["order_id"], name: "index_pending_order_rating_logs_on_order_id"
    t.index ["rating_created_at"], name: "index_pending_order_rating_logs_on_rating_created_at"
  end

  create_table "pending_order_ratings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "account_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.boolean "rated", default: false
    t.index ["account_id"], name: "index_pending_order_ratings_on_account_id"
    t.index ["client_id"], name: "index_pending_order_ratings_on_client_id"
    t.index ["created_at"], name: "index_pending_order_ratings_on_created_at"
    t.index ["order_id"], name: "index_pending_order_ratings_on_order_id"
  end

  create_table "phones", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "ddd", limit: 2, null: false
    t.string "number", limit: 10, null: false
    t.integer "phoneable_id"
    t.string "phoneable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "whatsapp", default: false
    t.index ["phoneable_id", "phoneable_type"], name: "index_phones_on_phoneable_id_and_phoneable_type"
    t.index ["phoneable_id"], name: "index_phones_on_phoneable_id"
  end

  create_table "photo_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "menu_id"
    t.index ["account_id"], name: "index_photo_complements_on_account_id"
  end

  create_table "pic_pay_integrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "payment_id"
    t.boolean "enabled", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_pic_pay_integrations_on_account_id"
    t.index ["enabled"], name: "index_pic_pay_integrations_on_enabled"
    t.index ["payment_id"], name: "index_pic_pay_integrations_on_payment_id"
  end

  create_table "pin_lat_lng_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "client_id"
    t.string "old_lat"
    t.string "old_lng"
    t.string "new_lat"
    t.string "new_lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_id"], name: "index_pin_lat_lng_logs_on_accountable_id"
    t.index ["accountable_type"], name: "index_pin_lat_lng_logs_on_accountable_type"
    t.index ["client_id"], name: "index_pin_lat_lng_logs_on_client_id"
  end

  create_table "pizza_massa_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_order_id"
    t.integer "pizza_massa_id"
    t.string "title"
    t.decimal "price", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_massa_id"], name: "pmopmid"
    t.index ["pizza_order_id"], name: "index_pizza_massa_orders_on_pizza_order_id"
  end

  create_table "pizza_massas", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.decimal "price", precision: 14, scale: 2
    t.boolean "enable", default: true
    t.integer "ordem"
    t.integer "category_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.index ["account_id"], name: "index_pizza_massas_on_account_id"
    t.index ["category_id"], name: "index_pizza_massas_on_category_id"
  end

  create_table "pizza_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "quantity"
    t.decimal "total_un", precision: 14, scale: 2
    t.integer "account_id"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "pizza_maior_valor"
    t.integer "point", default: 1
    t.boolean "pizza_sabor_complemento_media"
    t.integer "promotion_item_id"
    t.integer "promotion_group_order_id"
    t.index ["account_id"], name: "index_pizza_orders_on_account_id"
    t.index ["order_id"], name: "index_pizza_orders_on_order_id"
    t.index ["promotion_item_id"], name: "index_pizza_orders_on_promotion_item_id"
  end

  create_table "pizza_sabor_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable", default: true
    t.integer "maximum"
    t.integer "minimum"
    t.string "ref"
    t.integer "pizza_sabor_id"
    t.string "title"
    t.integer "ordem", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "more_than_one", default: true
    t.datetime "deleted_at"
    t.index ["pizza_sabor_id"], name: "index_pizza_sabor_complement_categories_on_pizza_sabor_id"
  end

  create_table "pizza_sabor_complement_tamanho_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_sabor_complement_id"
    t.integer "pizza_tamanho_id"
    t.decimal "price", precision: 14, scale: 2
    t.string "ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["pizza_sabor_complement_id"], name: "psabor_comp_tam_price_on_psabor_comp_id"
    t.index ["pizza_tamanho_id"], name: "psabor_comp_tam_price_on_ptamanho_id"
  end

  create_table "pizza_sabor_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.boolean "enable", default: true
    t.string "ref"
    t.integer "pizza_sabor_complement_category_id"
    t.integer "ordem", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.boolean "visibility", default: true
    t.index ["pizza_sabor_complement_category_id"], name: "psabor_comp_on_psabor_comp_cat_id"
  end

  create_table "pizza_sabor_global_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_sabor_id"
    t.integer "global_complement_category_id"
    t.integer "ordem", default: 0
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["global_complement_category_id"], name: "psgcc_gcc"
    t.index ["pizza_sabor_id"], name: "psgcc_ps"
  end

  create_table "pizza_sabor_order_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_sabor_complement_category_id"
    t.integer "pizza_sabor_order_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complement_categoriable_id"
    t.string "complement_categoriable_type"
    t.index ["pizza_sabor_complement_category_id"], name: "psabor_order_comp_cat_on_psabor_comp_cat_id"
    t.index ["pizza_sabor_order_id"], name: "psabor_order_comp_cat_on_psabor_order_id"
  end

  create_table "pizza_sabor_order_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_sabor_complement_id"
    t.integer "pizza_sabor_order_complement_category_id"
    t.decimal "price_un", precision: 14, scale: 2
    t.integer "quantity"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complementable_id"
    t.string "complementable_type"
    t.integer "promotion_item_option_id"
    t.index ["pizza_sabor_complement_id"], name: "psabor_order_comp_on_psabor_comp_id"
    t.index ["pizza_sabor_order_complement_category_id"], name: "psabor_order_comp_on_psabor_order_comp_cat_id"
    t.index ["promotion_item_option_id"], name: "index_pizza_sabor_order_complements_on_promotion_item_option_id"
  end

  create_table "pizza_sabor_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_order_id"
    t.integer "pizza_sabor_id"
    t.string "title"
    t.decimal "price", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.integer "promotion_item_option_id"
    t.index ["pizza_order_id"], name: "index_pizza_sabor_orders_on_pizza_order_id"
    t.index ["pizza_sabor_id"], name: "index_pizza_sabor_orders_on_pizza_sabor_id"
    t.index ["promotion_item_option_id"], name: "index_pizza_sabor_orders_on_promotion_item_option_id"
  end

  create_table "pizza_sabors", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "title"
    t.string "description"
    t.string "photo"
    t.boolean "enable", default: true
    t.integer "ordem"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.datetime "deleted_at"
    t.index ["account_id"], name: "index_pizza_sabors_on_account_id"
    t.index ["category_id"], name: "index_pizza_sabors_on_category_id"
  end

  create_table "pizza_tamanho_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable", default: true
    t.string "title"
    t.integer "minimum"
    t.integer "maximum"
    t.string "ref"
    t.integer "pizza_tamanho_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "more_than_one", default: true
    t.datetime "deleted_at"
    t.integer "tipo", default: 1
  end

  create_table "pizza_tamanho_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.boolean "enable", default: true
    t.string "title"
    t.string "description"
    t.string "ref"
    t.decimal "price", precision: 14, scale: 2
    t.integer "pizza_tamanho_complement_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.boolean "visibility", default: true
    t.index ["pizza_tamanho_complement_category_id"], name: "ptamanho_comp_on_ptamanho_comp_cat_id"
  end

  create_table "pizza_tamanho_global_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_tamanho_id"
    t.integer "global_complement_category_id"
    t.integer "ordem", default: 0
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["global_complement_category_id"], name: "ptgcc_gcc"
    t.index ["pizza_tamanho_id"], name: "ptgcc_pt"
  end

  create_table "pizza_tamanho_order_complement_categories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_tamanho_order_id"
    t.string "title"
    t.integer "pizza_tamanho_complement_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complement_categoriable_id"
    t.string "complement_categoriable_type"
    t.index ["pizza_tamanho_complement_category_id"], name: "ptamanho_order_comp_cat_on_ptamanho_comp_cat_id"
    t.index ["pizza_tamanho_order_id"], name: "ptamanho_order_comp_cat_on_ptamanho_order_id"
  end

  create_table "pizza_tamanho_order_complements", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_tamanho_order_complement_category_id"
    t.decimal "price_un", precision: 14, scale: 2
    t.integer "quantity"
    t.string "title"
    t.integer "pizza_tamanho_complement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "complementable_id"
    t.string "complementable_type"
    t.integer "promotion_item_option_id"
    t.index ["pizza_tamanho_complement_id"], name: "ptamanho_order_comp, :ptamanho_comp_id"
    t.index ["pizza_tamanho_order_complement_category_id"], name: "ptamanho_order_comp_on_ptamanho_order_comp_cat_id"
    t.index ["promotion_item_option_id"], name: "index_ptoc_pio"
  end

  create_table "pizza_tamanho_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_order_id"
    t.integer "pizza_tamanho_id"
    t.string "title"
    t.integer "qtd_sabor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_order_id"], name: "index_pizza_tamanho_orders_on_pizza_order_id"
    t.index ["pizza_tamanho_id"], name: "ptoptid"
  end

  create_table "pizza_tamanhos", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.boolean "dois_sabor"
    t.boolean "tres_sabor"
    t.boolean "quatro_sabor"
    t.boolean "enable", default: true
    t.integer "ordem"
    t.integer "category_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.boolean "balcao", default: false
    t.datetime "deleted_at"
    t.boolean "promotion", default: false
    t.index ["account_id"], name: "index_pizza_tamanhos_on_account_id"
    t.index ["category_id"], name: "index_pizza_tamanhos_on_category_id"
  end

  create_table "points", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.decimal "latitude", precision: 14, scale: 10
    t.decimal "longitude", precision: 14, scale: 10
    t.integer "delivery_place_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delivery_place_id"], name: "index_points_on_delivery_place_id"
  end

  create_table "policy_terms", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.text "termos_uso"
    t.text "politica_canc"
    t.text "politica_arrep"
    t.text "politica_priv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_policy_terms_on_account_master_id"
  end

  create_table "posts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "intro"
    t.string "link"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "outid"
    t.integer "account_id"
    t.integer "order_show"
    t.index ["account_id"], name: "index_posts_on_account_id"
  end

  create_table "pre_liberacao_painels", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "cnpj_cpf"
    t.integer "salespeoples_id"
    t.integer "deployment_analyst_id"
    t.integer "account_manager_id"
    t.integer "menu_registrant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_manager_id"], name: "index_pre_liberacao_painels_on_account_manager_id"
    t.index ["cnpj_cpf"], name: "index_pre_liberacao_painels_on_cnpj_cpf"
    t.index ["deployment_analyst_id"], name: "index_pre_liberacao_painels_on_deployment_analyst_id"
    t.index ["menu_registrant_id"], name: "index_pre_liberacao_painels_on_menu_registrant_id"
    t.index ["salespeoples_id"], name: "index_pre_liberacao_painels_on_salespeoples_id"
  end

  create_table "prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.decimal "value", precision: 14, scale: 2
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "promotional_price", limit: 53
    t.boolean "promotion_enable", default: false
    t.string "ref"
    t.boolean "enable", default: true
    t.datetime "deleted_at"
    t.decimal "value_delivery", precision: 14, scale: 2
    t.decimal "value_store", precision: 14, scale: 2
    t.decimal "value_table", precision: 14, scale: 2
    t.decimal "promotion_value_delivery", precision: 14, scale: 2
    t.decimal "promotion_value_store", precision: 14, scale: 2
    t.decimal "promotion_value_table", precision: 14, scale: 2
    t.boolean "enable_delivery", default: true
    t.boolean "enable_store", default: true
    t.boolean "enable_table", default: true
    t.string "ref_delivery"
    t.string "ref_store"
    t.string "ref_table"
    t.boolean "price_custom", default: false
    t.string "name_for_pdv"
    t.index ["item_id"], name: "index_prices_on_item_id"
  end

  create_table "printers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "tipo"
    t.boolean "enable"
    t.string "hostname", default: "localhost"
    t.string "local"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_printers_on_account_id"
  end

  create_table "products", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.string "introduction"
    t.string "description"
    t.string "ativo"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promidia_keys", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.boolean "enable"
    t.string "url"
    t.string "usuario"
    t.string "senha"
    t.string "terminal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_promidia_keys_on_account_id"
  end

  create_table "promotion_group_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "promotion_group_id"
    t.integer "order_id"
    t.integer "promotion_type"
    t.decimal "promotion_value", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "photo"
    t.integer "client_limit"
    t.integer "calculation_type"
    t.decimal "calculation_value", precision: 14, scale: 2
    t.integer "bonus_type"
    t.string "bonus_value"
    t.integer "accountable_id"
    t.string "accountable_type"
    t.integer "quantity"
    t.string "notes"
    t.string "ref"
    t.index ["accountable_id", "accountable_type"], name: "index_pgo_a"
    t.index ["order_id"], name: "index_promotion_group_orders_on_order_id"
    t.index ["promotion_group_id"], name: "index_promotion_group_orders_on_promotion_group_id"
  end

  create_table "promotion_groups", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.boolean "enable", default: true
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "photo"
    t.integer "client_limit"
    t.integer "calculation_type"
    t.string "calculation_value"
    t.integer "bonus_type"
    t.string "bonus_value"
    t.integer "promotion_type"
    t.string "promotion_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "accountable_id"
    t.string "accountable_type"
    t.string "ref"
    t.datetime "deleted_at"
    t.decimal "computed_value", precision: 14, scale: 2
    t.text "computed_json"
    t.index ["accountable_id", "accountable_type"], name: "index_pg"
  end

  create_table "promotion_item_option_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "promotion_item_option_id"
    t.integer "promotion_item_order_id"
    t.integer "promotion_type"
    t.decimal "promotion_value", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.index ["promotion_item_option_id"], name: "index_promotion_item_option_orders_on_promotion_item_option_id"
    t.index ["promotion_item_order_id"], name: "index_promotion_item_option_orders_on_promotion_item_order_id"
  end

  create_table "promotion_item_options", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "promotion_item_id"
    t.integer "promotionable_id"
    t.string "promotionable_type"
    t.integer "promotion_type"
    t.string "promotion_value"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer "global_complement_category_id"
    t.integer "target_id"
    t.index ["global_complement_category_id"], name: "index_promotion_item_options_on_global_complement_category_id"
    t.index ["promotion_item_id"], name: "index_promotion_item_options_on_promotion_item_id"
    t.index ["promotionable_id", "promotionable_type"], name: "index_pio"
    t.index ["target_id"], name: "index_promotion_item_options_on_target_id"
  end

  create_table "promotion_item_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "promotion_item_id"
    t.integer "promotion_group_order_id"
    t.integer "promotion_type"
    t.decimal "promotion_value", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "pizza_tamanho_id"
    t.integer "pizza_sabor_quantity"
    t.integer "complement_promotion_type"
    t.integer "complement_promotion_value"
    t.integer "calculation_type"
    t.string "name"
    t.index ["promotion_group_order_id"], name: "index_promotion_item_orders_on_promotion_group_order_id"
    t.index ["promotion_item_id"], name: "index_promotion_item_orders_on_promotion_item_id"
  end

  create_table "promotion_items", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "promotion_group_id"
    t.integer "promotionable_id"
    t.string "promotionable_type"
    t.integer "promotion_type"
    t.string "promotion_value"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "pizza_tamanho_id"
    t.integer "pizza_sabor_quantity"
    t.datetime "deleted_at"
    t.integer "complement_promotion_type"
    t.string "complement_promotion_value"
    t.integer "calculation_type"
    t.integer "order", default: 0
    t.index ["category_id"], name: "index_promotion_items_on_category_id"
    t.index ["pizza_tamanho_id"], name: "index_promotion_items_on_pizza_tamanho_id"
    t.index ["promotion_group_id"], name: "index_promotion_items_on_promotion_group_id"
    t.index ["promotionable_id", "promotionable_type"], name: "index_promotion_items_on_promotionable_id_and_promotionable_type"
  end

  create_table "push_notification_abrafoods", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "message"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "pnacid"
  end

  create_table "push_notification_masters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "message"
    t.integer "code"
    t.integer "account_master_id"
    t.integer "admin_master_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_push_notification_masters_on_account_master_id"
    t.index ["admin_master_id"], name: "index_push_notification_masters_on_admin_master_id"
  end

  create_table "push_notifications", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "message"
    t.integer "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_push_notifications_on_account_id"
  end

  create_table "pwa_master_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.boolean "enable_android", default: false
    t.boolean "enable_ios", default: false
    t.string "app_name"
    t.string "appicon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "use_account_logo", default: false
    t.index ["account_master_id"], name: "index_pwa_master_settings_on_account_master_id"
  end

  create_table "queue_reports", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "report_type"
    t.string "link"
    t.integer "accountable_id"
    t.string "accountable_type"
    t.boolean "finished", default: false
    t.boolean "downloaded", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accountable_id"], name: "index_queue_reports_on_accountable_id"
    t.index ["downloaded"], name: "index_queue_reports_on_downloaded"
    t.index ["report_type"], name: "index_queue_reports_on_report_type"
  end

  create_table "rating_replies", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "rating_id"
    t.string "user_email"
    t.integer "user_id"
    t.string "message"
    t.string "userable_type"
    t.integer "userable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rating_id"], name: "index_rating_replies_on_rating_id"
    t.index ["userable_id", "userable_type"], name: "index_rating_replies_on_userable_id_and_userable_type"
  end

  create_table "ratings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "order_id"
    t.integer "account_id"
    t.integer "packing"
    t.integer "food"
    t.integer "delivery_time"
    t.integer "cost"
    t.text "message"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_ratings_on_account_id"
    t.index ["client_id"], name: "index_ratings_on_client_id"
    t.index ["order_id"], name: "index_ratings_on_order_id", unique: true
  end

  create_table "recaptcha_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.text "response_log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recaptcha_tokens", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "token"
    t.string "recaptcha_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.integer "client_id"
    t.index ["account_id"], name: "index_recaptcha_tokens_on_account_id"
    t.index ["client_id"], name: "index_recaptcha_tokens_on_client_id"
    t.index ["recaptcha_type"], name: "index_recaptcha_tokens_on_recaptcha_type"
  end

  create_table "report_ip_apis", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_report_ip_apis_on_account_master_id"
  end

  create_table "reproved_ratings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "rating_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rating_id"], name: "index_reproved_ratings_on_rating_id"
  end

  create_table "reshop_account_icons", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "reshop_icon"
    t.string "icon_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reshop_accounts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "codigo_loja"
    t.string "username"
    t.string "password"
    t.text "access_token"
    t.datetime "access_token_expiration_at"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "loyalty_name"
    t.string "icon_name"
    t.string "point_name", default: "Meus pontos"
    t.boolean "send_point", default: true
    t.integer "reshop_account_icon_id"
    t.index ["account_id"], name: "index_reshop_accounts_on_account_id"
  end

  create_table "sabor_tamanho_prices", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "pizza_sabor_id"
    t.integer "pizza_tamanho_id"
    t.integer "category_id"
    t.decimal "price", precision: 14, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.integer "point", default: 1
    t.datetime "deleted_at"
    t.index ["category_id"], name: "index_sabor_tamanho_prices_on_category_id"
    t.index ["pizza_sabor_id"], name: "index_sabor_tamanho_prices_on_pizza_sabor_id"
    t.index ["pizza_tamanho_id"], name: "index_sabor_tamanho_prices_on_pizza_tamanho_id"
  end

  create_table "salespeoples", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ddd", limit: 2
    t.string "phone", limit: 10
    t.integer "linx_franchisee_id"
    t.boolean "enabled", default: true
  end

  create_table "salespeoples_account_managers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_manager_id"
    t.integer "salespeoples_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_manager_id"], name: "index_salespeoples_account_managers_on_account_manager_id"
    t.index ["salespeoples_id"], name: "index_salespeoples_account_managers_on_salespeoples_id"
  end

  create_table "salespeoples_admin_dashboards", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "admin_dashboard_id"
    t.integer "salespeoples_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_dashboard_id"], name: "index_salespeoples_admin_dashboards_on_admin_dashboard_id"
    t.index ["salespeoples_id"], name: "index_salespeoples_admin_dashboards_on_salespeoples_id"
  end

  create_table "scheduled_panels", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.date "data_envio"
    t.string "email_access"
    t.string "password_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name_loja"
  end

  create_table "segments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id"
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "newrelic_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.integer "delivery_time"
    t.string "pesquisa_satisfacao"
    t.integer "end_delivery_time"
    t.integer "time_zone"
    t.text "pixel_code"
    t.string "pixel_name"
    t.string "pixel_category"
    t.text "google_analytics"
    t.integer "min_time_balcao"
    t.integer "max_time_balcao"
    t.boolean "auto_printer", default: true
    t.integer "quantity_cumulative_voucher", default: 1
    t.integer "order_calculate_voucher_discount", default: 1
    t.boolean "include_delivery_free", default: false
    t.integer "base_value_discount", default: 1
    t.text "gtm_body"
    t.text "gtm_head"
    t.index ["account_id"], name: "index_settings_on_account_id"
  end

  create_table "settings_franquia", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "logo"
    t.string "color_header"
    t.string "solid_background"
    t.string "bg_image_one"
    t.string "bg_image_two"
    t.string "bg_image_three"
    t.integer "account_master_id"
    t.integer "bg_option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "show_link_store"
    t.boolean "rating_enable", default: true
    t.boolean "permit_account_send_push", default: true
    t.boolean "choose_cep_first", default: true
    t.boolean "client_birthdate", default: false
    t.boolean "client_birthdate_required", default: false
    t.string "term_establishment_singular", default: "Restaurante"
    t.string "term_establishment_plural", default: "Restaurantes"
    t.integer "term_establishment_genre", default: 1
    t.string "name"
    t.boolean "show_open_categories", default: true
    t.string "qrcode"
    t.boolean "auto_ratings_approval", default: false
    t.string "message_ratings_approval"
    t.string "font_color_header"
    t.index ["account_master_id"], name: "index_settings_franquia_on_account_master_id"
  end

  create_table "settings_webdeliveries", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "logo"
    t.string "header_color"
    t.boolean "choose_cep_first"
    t.boolean "show_link_store"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "link"
    t.string "qrcode"
    t.string "description"
    t.string "name"
    t.integer "main_segment"
    t.string "bg_color"
    t.integer "bg_option"
    t.string "bg_image_one"
    t.string "bg_image_two"
    t.string "bg_image_three"
    t.boolean "new_version", default: true
    t.boolean "show_logo_integration", default: false
    t.integer "account_master_id"
    t.index ["account_id"], name: "swaid"
  end

  create_table "siscon_incidentes", charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "siscon_local_id"
    t.integer "siscon_product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "siscon_locals", charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "siscon_pragas", charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "siscon_local_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "siscon_products", charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "siscon_local_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "siscon_users", charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.integer "siscon_local_id"
    t.string "senha_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "state_franquia", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.integer "account_master_id"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_state_franquia_on_account_master_id"
  end

  create_table "state_franquia_vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "state_franquia_id"
    t.integer "voucher_id"
    t.boolean "enabled", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_franquia_id"], name: "index_state_franquia_vouchers_on_state_franquia_id"
    t.index ["voucher_id"], name: "index_state_franquia_vouchers_on_voucher_id"
  end

  create_table "states", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enable", default: true
  end

  create_table "status_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "try_integration"
    t.index ["created_at"], name: "index_status_orders_on_created_at"
    t.index ["order_id"], name: "index_status_orders_on_order_id"
  end

  create_table "table_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "table_id"
    t.string "table_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_table_orders_on_order_id"
    t.index ["table_id"], name: "index_table_orders_on_table_id"
  end

  create_table "tables", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "qrcode"
    t.text "description"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "enabled", default: true
    t.string "code"
    t.index ["account_id"], name: "index_tables_on_account_id"
    t.index ["code", "account_id"], name: "index_tables_on_code_and_account_id", unique: true
    t.index ["code"], name: "index_tables_on_code"
  end

  create_table "tags", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.text "head_code"
    t.text "body_code"
    t.integer "account_master_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_tags_on_account_master_id"
  end

  create_table "tax_delivery_areas", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "delivery_area_type"
    t.integer "delivery_area_id"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_tax_delivery_areas_on_address_id"
    t.index ["delivery_area_id"], name: "index_tax_delivery_areas_on_delivery_area_id"
    t.index ["delivery_area_type"], name: "index_tax_delivery_areas_on_delivery_area_type"
  end

  create_table "tax_orders", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.integer "objectable_id"
    t.string "objectable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["objectable_id"], name: "index_tax_orders_on_objectable_id"
    t.index ["objectable_type"], name: "index_tax_orders_on_objectable_type"
    t.index ["order_id"], name: "index_tax_orders_on_order_id"
  end

  create_table "template_deliveries", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.integer "settings_webdelivery_id"
    t.string "url_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_master_id"
    t.index ["account_id"], name: "tdaid"
    t.index ["settings_webdelivery_id"], name: "tdswid"
  end

  create_table "template_franquia", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "url_photo"
    t.integer "settings_franquia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "tfamid"
    t.index ["settings_franquia_id"], name: "tfsfid"
  end

  create_table "texts", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "reference"
    t.text "text"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active_photo"
  end

  create_table "transactions", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "token_account"
    t.string "payment_payment_method"
    t.integer "id_transaction"
    t.string "status_name"
    t.integer "id_status"
    t.string "token_transaction"
    t.text "payment_response"
    t.integer "account_id"
    t.integer "order_id"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token_affiliate"
    t.boolean "maxipago", default: false
    t.string "id_card_real"
    t.boolean "linx_pay", default: false
    t.boolean "payu", default: false
    t.boolean "evo_payment", default: false
    t.boolean "mundipagg", default: false
    t.boolean "payu_pse", default: false
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["client_id"], name: "index_transactions_on_client_id"
    t.index ["order_id"], name: "index_transactions_on_order_id"
  end

  create_table "tray_checkout_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uber_credentials", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_master_id"
    t.string "client_id"
    t.string "client_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_uber_credentials_on_account_master_id"
  end

  create_table "uber_directs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "store_id"
    t.integer "account_extra_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_extra_module_id"], name: "index_uber_directs_on_account_extra_module_id"
  end

  create_table "voucher_brindes", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "voucher_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ref"
    t.index ["voucher_id"], name: "index_voucher_brindes_on_voucher_id"
  end

  create_table "voucher_clients", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "voucher_id"
    t.integer "client_id"
    t.boolean "enable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_voucher_clients_on_client_id"
    t.index ["voucher_id"], name: "index_voucher_clients_on_voucher_id"
  end

  create_table "vouchers", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.date "initial_date"
    t.date "final_date"
    t.boolean "enable", default: true
    t.string "voucher_code"
    t.boolean "add_tax"
    t.decimal "value", precision: 14, scale: 2
    t.integer "value_type"
    t.integer "account_id"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "all_clients", default: false
    t.boolean "use_with_promotion", default: false
    t.boolean "divulgador", default: false
    t.decimal "minimum_order_value", precision: 14, scale: 2, default: "0.0"
    t.boolean "first_order"
    t.boolean "show_in_list", default: false
    t.boolean "voucher_destaque", default: false
    t.string "photo"
    t.boolean "enabled_for_all_shops", default: true
    t.string "ref"
    t.boolean "only_store", default: false
    t.boolean "only_delivery", default: false
    t.boolean "voucher_by_cpf", default: false
    t.boolean "remove_promotion_value", default: false
    t.boolean "unlimited_use_clients", default: false, null: false
    t.index ["account_id"], name: "index_vouchers_on_account_id"
    t.index ["accountable_id", "accountable_type"], name: "index_vouchers_on_accountable_id_and_accountable_type"
    t.index ["final_date"], name: "index_vouchers_on_final_date"
    t.index ["initial_date"], name: "index_vouchers_on_initial_date"
  end

  create_table "we_are_worried_dispatches", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "client_id"
    t.integer "account_master_id"
    t.integer "divulgador_id"
    t.boolean "sended_email", default: false
    t.boolean "sended_push", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_master_id"], name: "index_we_are_worried_dispatches_on_account_master_id"
    t.index ["client_id"], name: "index_we_are_worried_dispatches_on_client_id"
    t.index ["divulgador_id"], name: "index_we_are_worried_dispatches_on_divulgador_id"
    t.index ["sended_email"], name: "index_we_are_worried_dispatches_on_sended_email"
    t.index ["sended_push"], name: "index_we_are_worried_dispatches_on_sended_push"
  end

  create_table "webdelivery_customizations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "bg_geral"
    t.string "borda_geral"
    t.string "fonte_um"
    t.string "fonte_dois"
    t.string "fonte_tres"
    t.string "fonte_preco"
    t.string "bg_alternativo_um"
    t.string "bg_alternativo_dois"
    t.string "botao_acao_bg"
    t.string "botao_acao_fonte"
    t.string "caixatexto_bg"
    t.string "caixatexto_borda"
    t.string "caixa_texto_fonte"
    t.string "cabecalho_fonte"
    t.string "categoria_bg_on"
    t.string "categoria_bg_off"
    t.string "categoria_fonte_on"
    t.string "categoria_fonte_off"
    t.string "promocao_bg"
    t.string "promocao_fonte"
    t.string "botaopedir_bg_on"
    t.string "botaopedir_bg_off"
    t.string "botaopedir_fonte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "ativo"
    t.string "bg_alternativo_tres"
    t.integer "account_master_id"
    t.index ["account_id"], name: "wcaid"
  end

  create_table "webdelivery_segments", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "segment_id"
    t.integer "settings_webdelivery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["segment_id"], name: "wssid"
    t.index ["settings_webdelivery_id"], name: "wsswid"
  end

  create_table "webhook_archives", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "code"
    t.string "description"
    t.string "name"
    t.string "url"
    t.string "image"
    t.integer "account_webhook_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.index ["account_webhook_id"], name: "index_webhook_archives_on_account_webhook_id"
    t.index ["order_id"], name: "index_webhook_archives_on_order_id"
  end

  create_table "webhook_queues", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "tries"
    t.integer "account_webhook_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
    t.index ["account_webhook_id"], name: "index_webhook_queues_on_account_webhook_id"
    t.index ["order_id"], name: "index_webhook_queues_on_order_id"
  end

  create_table "webhooks", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.boolean "enable"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authorization_header"
    t.string "url_token"
  end

  create_table "whatsapp_contact_infos", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "phone_number"
    t.text "message"
    t.boolean "enabled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_whatsapp_contact_infos_on_account_id"
  end

  create_table "whatsapp_integrations", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "account_id"
    t.string "link_to_open"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.boolean "enabled", default: true
    t.boolean "order_follow_up", default: true
    t.index ["account_id"], name: "index_whatsapp_integrations_on_account_id"
    t.index ["token"], name: "index_whatsapp_integrations_on_token"
  end

  create_table "white_label_configs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "domain"
    t.string "host"
    t.string "page_title"
    t.string "logo_admin"
    t.string "email_from"
    t.string "payment_terms_of_use_link"
    t.boolean "enable_payment_online", default: false
    t.boolean "enable_divulgador", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "new_dash_help_link"
  end

  create_table "world_time_zones", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "abbreviation"
    t.string "name"
    t.string "time_zone"
    t.string "locality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["abbreviation"], name: "index_world_time_zones_on_abbreviation"
    t.index ["locality"], name: "index_world_time_zones_on_locality"
    t.index ["name"], name: "index_world_time_zones_on_name"
    t.index ["time_zone"], name: "index_world_time_zones_on_time_zone"
  end

  create_table "yapay_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "email"
    t.string "cpf"
    t.string "client_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zamper_auto_update_logs", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "token"
    t.boolean "remind_me_later", default: false
    t.string "client_system"
    t.string "current_version"
    t.string "new_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_zamper_auto_update_logs_on_token"
  end

  create_table "zamper_client_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "whatsapp_integration_id"
    t.boolean "send_sorry_message", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "send_rating_message", default: true
    t.index ["send_rating_message"], name: "index_zamper_client_settings_on_send_rating_message"
  end

  create_table "zamper_notification_histories", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "order_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_zamper_notification_histories_on_order_id"
  end

  create_table "zamper_remind_me_laters", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.integer "whatsapp_integration_id"
    t.string "zamper_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["whatsapp_integration_id"], name: "index_zamper_remind_me_laters_on_whatsapp_integration_id"
  end

  create_table "zamper_settings", id: :integer, charset: "utf8", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "release_version"
    t.string "stable_version"
    t.string "current_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "release_date"
    t.string "download_url_base"
    t.boolean "update_enabled"
    t.boolean "downgrade_enabled"
    t.time "remind_me_later_time"
    t.integer "remind_me_later_limit"
  end

end
