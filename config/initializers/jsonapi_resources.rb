JSONAPI.configure do |config|
  # built in paginators are :none, :offset, :paged
  # config.default_paginator = :offset

  # config.default_page_size = 10
  config.maximum_page_size = 1000

  config.default_processor_klass = JSONAPI::Authorization::AuthorizingProcessor
  config.exception_class_whitelist = [Pundit::NotAuthorizedError]
end
