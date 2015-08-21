# coding: utf-8
# Be sure to restart your server when you modify this file.

require 'redis-rails'

# Rails.application.config.session_store :cookie_store, key: '_base_app_session'

# Redis session_store
Rails.application.config.session_store :redis_store, servers: {
    host:         (ENV['REDIS_HOST'] || 'localhost'),
    port:         (ENV['REDIS_PORT'] || 6379),
    db:           (ENV['REDIS_DB'] || 0),
    namespace:    'session',
    password:     (ENV['REDIS_PASS'] || nil),
    expires_in:   90.minutes
  },
  expires_in: 90.minutes
