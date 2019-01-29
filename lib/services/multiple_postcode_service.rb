# pulling the gem into this file 
require 'httparty'
require 'json'

class MultiplePostcodeService
  
  # brings this module into the class
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def multiple_postcode_request(postcodes_array)
    @multiple_postcode_data = JSON.parse(self.class.post('/postcodes', body: {'postcodes' => postcodes_array}).body)
  end

  def print_response
    p @multiple_postcode_data
  end

  def retrieve_status_code
    @multiple_postcode_data['status']
  end

  def retrieve_result
    @multiple_postcode_data['result']
  end

  def retrieve_query
    retrieve_result[0].first
  end

  def retrieve_result_result
    retrieve_result[0]['result']
  end


  def retrieve_postcode
    retrieve_result_result['postcode']
  end

  def retrieve_quality
    retrieve_result_result['quality']
  end

  def retrieve_eastings
    retrieve_result_result['eastings']
  end

  def retrieve_northings
    retrieve_result_result['northings']
  end

  def retrieve_country
    retrieve_result_result['country']
  end

  def retrieve_nhs_ha
    retrieve_result_result['nhs_ha']
  end

  def retrieve_longitude
    retrieve_result_result['longitude']
  end

  def retrieve_latitude
    retrieve_result_result['latitude']
  end

  def retrieve_european_electoral_region
    retrieve_result_result['european_electoral_region']
  end

  def retrieve_primary_care_trust
    retrieve_result_result['primary_care_trust']
  end

  def retrieve_region
    retrieve_result_result['region']
  end

  def retrieve_lsoa
    retrieve_result_result['lsoa']
  end

  def retrieve_msoa
    retrieve_result_result['msoa']
  end

  def retrieve_incode
    retrieve_result_result['incode']
  end

  def retrieve_outcode
    retrieve_result_result['outcode']
  end

  def retrieve_parliamentary_constituency
    retrieve_result_result['parliamentary_constituency']
  end

  def retrieve_admin_district
    retrieve_result_result['admin_district']
  end

  def retrieve_parish
    retrieve_result_result['parish']
  end

  def retrieve_admin_county
    retrieve_result_result['admin_county']
  end

  def retrieve_admin_ward
    retrieve_result_result['admin_county']
  end

  def retrieve_ced
    retrieve_result_result['ced']
  end

  def retrieve_ccg
    retrieve_result_result['ccg']
  end

  def retrieve_nuts
    retrieve_result_result['nuts']
  end

  def retrieve_codes
    retrieve_result_result['codes']
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

  def retrieve_query_1
    retrieve_result[1].first
  end

  def retrieve_result_result_1
    retrieve_result[1]['result']
  end

  def retrieve_postcode_1
    retrieve_result_result_1['postcode']
  end

  def retrieve_quality_1
    retrieve_result_result_1['quality']
  end

  def retrieve_eastings_1
    retrieve_result_result_1['eastings']
  end

  def retrieve_northings_1
    retrieve_result_result_1['northings']
  end

  def retrieve_country_1
    retrieve_result_result_1['country']
  end

  def retrieve_nhs_ha_1
    retrieve_result_result_1['nhs_ha']
  end

  def retrieve_longitude_1
    retrieve_result_result_1['longitude']
  end

  def retrieve_latitude_1
    retrieve_result_result_1['latitude']
  end

  def retrieve_european_electoral_region_1
    retrieve_result_result_1['european_electoral_region']
  end

  def retrieve_primary_care_trust_1
    retrieve_result_result_1['primary_care_trust']
  end

  def retrieve_region_1
    retrieve_result_result_1['region']
  end

  def retrieve_lsoa_1
    retrieve_result_result_1['lsoa']
  end

  def retrieve_msoa_1
    retrieve_result_result_1['msoa']
  end

  def retrieve_incode_1
    retrieve_result_result_1['incode']
  end

  def retrieve_outcode_1
    retrieve_result_result_1['outcode']
  end

  def retrieve_parliamentary_constituency_1
    retrieve_result_result_1['parliamentary_constituency']
  end

  def retrieve_admin_district_1
    retrieve_result_result_1['admin_district']
  end

  def retrieve_parish_1
    retrieve_result_result_1['parish']
  end

  def retrieve_admin_county_1
    retrieve_result_result_1['admin_county']
  end

  def retrieve_admin_ward_1
    retrieve_result_result_1['admin_county']
  end

  def retrieve_ced_1
    retrieve_result_result_1['ced']
  end

  def retrieve_ccg_1
    retrieve_result_result_1['ccg']
  end

  def retrieve_nuts_1
    retrieve_result_result_1['nuts']
  end

  def retrieve_codes_1
    retrieve_result_result_1['codes']
  end

  def retrieve_codes_admin_district_1
    retrieve_codes_1['admin_district']
  end

  def retrieve_codes_admin_county_1
    retrieve_codes_1['admin_county']
  end
  
  def retrieve_codes_admin_ward_1
    retrieve_codes_1['admin_ward']
  end

  def retrieve_codes_parish_1
    retrieve_codes_1['parish']
  end

  def retrieve_codes_parliamentary_constituency_1
    retrieve_codes_1['parliamentary_constituency']
  end

  def retrieve_codes_ccg_1
    retrieve_codes_1['ccg']
  end

  def retrieve_codes_ced_1
    retrieve_codes_1['ced']
  end

  def retrieve_codes_nuts_1
    retrieve_codes_1['nuts']
  end
end

# test = MultiplePostcodeService.new 
# test.multiple_postcode_request(["KT36HB", "KT36EX"])
# p test.retrieve_result_result_1