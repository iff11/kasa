require 'eet_cz'

class EetService
  attr_accessor :revenue, :entity

  def initialize(params)
    @revenue = params[:revenue]
    @entity = params[:entity]
  end

  def call
    if @revenue.eet_response.nil?
      send_eet
    end
  end

  private
    def send_eet
      client = EET_CZ::Client.new.tap do |c|
        c.endpoint              = EET_CZ::PG_EET_URL # or EET_CZ::PROD_EET_URL
        # c.endpoint              = EET_CZ::PROD_EET_URL
        #  c.ssl_cert_type         = 'pem' # Defaults to extname from file or 'p12'
        c.ssl_cert_string       = @entity.certificate
        #  c.ssl_cert_key_type     = 'pem' # Defaults to extname from file or 'p12'
        c.ssl_cert_key_string   = @entity.certificate
        c.ssl_cert_key_password = @entity.certificate_password
        c.overovaci_mod         = false # It sends attribute: overeni='true' Or explicitly specify 'false'. `default: true`
        c.debug_logger          = Logger.new('log/eet.log') # or Logger.new($stdout) in tests?
        c.dic_popl              = @entity.vatid # dic_popl
        c.id_provoz             = @entity.premisesid # id_provoz
        c.zjednoduseny_rezim    = false # `default: false`
      end

      receipt = client.build_receipt(
        dat_trzby:  Time.current,
        id_pokl:    @entity.registerid,
        porad_cis:  @revenue.id,
        celk_trzba: @revenue.amount,
        zakl_nepodl_dph: '', # Optional
        zakl_dan1: '', # Optional
        dan1: '' # Optional
        #... etc all possible Data attributes. See `EET_CZ::Receipt`
      )

      request = client.build_request(receipt, prvni_zaslani: true) # default true

      response = EET_CZ::Request.real! do
        request.run
      end

      response_json = response.as_json

      @revenue.eet_response = response_json
      @revenue.eet_fik = response_json['fik']
      @revenue.save!

      puts JSON.pretty_generate(response.as_json)
    end
end
