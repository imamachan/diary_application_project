require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded any time
  config.cache_classes = false  # クラスのリロードを有効に
  config.eager_load = false  # コードの遅延読み込み
  config.consider_all_requests_local = true  # エラー詳細表示
  config.server_timing = true  # サーバータイミングの有効化

  # Caching setup
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = { "Cache-Control" => "public, max-age=#{2.days.to_i}" }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Active Storage
  config.active_storage.service = :local

  # Action Mailer
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }
  config.action_mailer.perform_caching = false

  # Deprecation and migration
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true

  # Assets
  config.assets.debug = false
  config.assets.compile = true  # 開発環境でのアセットコンパイルを有効に
  config.assets.digest = true
  config.assets.quiet = false  # アセットのログを表示

  # Annotate views with filenames
  config.action_view.annotate_rendered_view_with_filenames = true

  # Enable verbose logs for background jobs
  config.active_job.verbose_enqueue_logs = true

  # Raise error for missing callbacks in controller
  config.action_controller.raise_on_missing_callback_actions = true
end
