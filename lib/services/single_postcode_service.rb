# Calling API (SOM = Service Object Model)

require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty
  
  # include the base URI
  base_uri 'https://api.postcodes.io'

  def single_postcode_request(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def print_results
    p @single_postcode_data
  end

  def retrieve_result
    @single_postcode_data['result']
  end

  def retrieve_postcode
    retrieve_result['postcode']
  end

  def retrieve_status_code
    @single_postcode_data['status']
  end

  def retrieve_quality
    retrieve_result['quality']
  end

  def retrieve_eastings
    retrieve_result['eastings']
  end

  def retrieve_northings
    retrieve_result['northings']
  end

  def retrieve_country
    retrieve_result['country']
  end

  def retrieve_nhs_ha
    retrieve_result['nhs_ha']
  end

  def retrieve_longitude
    retrieve_result['longitude']
  end

  def retrieve_latitude
    retrieve_result['latitude']
  end

  def retrieve_european_electoral_region
    retrieve_result['european_electoral_region']
  end

  def retrieve_primary_care_trust
    retrieve_result['primary_care_trust']
  end

  def retrieve_region
    retrieve_result['region']
  end

  def retrieve_lsoa
    retrieve_result['lsoa']
  end

  def retrieve_msoa
    retrieve_result['msoa']
  end

  def retrieve_incode
    retrieve_result['incode']
  end

  def retrieve_outcode
    retrieve_result['outcode']
  end

  def retrieve_parliamentary_constituency
    retrieve_result['parliamentary_constituency']
  end

  def retrieve_admin_district
    retrieve_result['admin_district']
  end

  def retrieve_parish
    retrieve_result['parish']
  end

  def retrieve_admin_county
    retrieve_result['admin_county']
  end

  def retrieve_admin_ward
    retrieve_result['admin_ward']
  end

  def retrieve_ced
    retrieve_result['ced']
  end

  def retrieve_ccg
    retrieve_result['ccg']
  end

  def retrieve_nuts
    retrieve_result['nuts']
  end

  def retrieve_codes
    retrieve_result['codes']
  end

  def retrieve_codes_admin_district
    retrieve_codes['admin_district']
  end

  def retrieve_codes_admin_county
    retrieve_codes['admin_county']
  end
  
  def retrieve_codes_admin_ward
    retrieve_codes['admin_ward']
  end

  def retrieve_codes_parish
    retrieve_codes['parish']
  end

  def retrieve_codes_parliamentary_constituency
    retrieve_codes['parliamentary_constituency']
  end

  def retrieve_codes_ccg
    retrieve_codes['ccg']
  end

  def retrieve_codes_ced
    retrieve_codes['ced']
  end

  def retrieve_codes_nuts
    retrieve_codes['nuts']
  end
  

end

# test = SinglePostcodeService.new
# test.single_postcode_request('kt36hb')
# p test.retrieve_postcode