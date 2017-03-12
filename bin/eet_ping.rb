# bundle exec ruby ./bin/eet_ping.rb

require 'eet_cz'

client = EET_CZ::Client.new.tap do |c|
  c.endpoint              = EET_CZ::PG_EET_URL # or EET_CZ::PROD_EET_URL
  # c.endpoint              = EET_CZ::PROD_EET_URL
  c.ssl_cert_file         = File.expand_path('cert/EET_CA1_Playground-CZ00000019.p12', File.dirname(__FILE__)) # or 'pem' supported
  c.ssl_cert_key_file     = File.expand_path('cert/EET_CA1_Playground-CZ00000019.p12', File.dirname(__FILE__)) # or 'pem'
  c.ssl_cert_key_password = 'eet'
  # OR specify:
  #  c.ssl_cert_type         = 'pem' # Defaults to extname from file or 'p12'
  #  c.ssl_cert_string       = 'certificate as String'
  #  c.ssl_cert_key_type     = 'pem' # Defaults to extname from file or 'p12'
  #  c.ssl_cert_key_string   = 'certificate as String'
  c.overovaci_mod         = false # It sends attribute: overeni='true' Or explicitly specify 'false'. `default: true`
  c.debug_logger          = Logger.new('log/eet.log') # or Logger.new($stdout) in tests?
  c.dic_popl              = 'CZ00000019' # dic_popl
  c.id_provoz             = '555' # id_provoz
  c.zjednoduseny_rezim    = false # `default: false`
end

receipt = client.build_receipt(dat_trzby:  Time.current,
                              id_pokl:    '1234',
                              porad_cis:  '1234',
                              celk_trzba: 25.5,
                              zakl_nepodl_dph: '', # Optional
                              zakl_dan1: '', # Optional
                              dan1: '' # Optional
                              #... etc all possible Data attributes. See `EET_CZ::Receipt`
  )

request = client.build_request(receipt, prvni_zaslani: true) # default true

response = EET_CZ::Request.real! do
  request.run
end

puts JSON.pretty_generate(response.as_json)
