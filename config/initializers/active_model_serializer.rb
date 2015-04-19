ActiveModel::Serializer.setup do |config|
  config.embed = :ids
  config.include = true
  config.embed_in_root = true
end
