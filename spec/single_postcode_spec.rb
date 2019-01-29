require 'spec_helper'

describe Postcodesio do 

  context 'requesting information from the single service works correctly' do 
    before(:all) do 
      @single_postcode_service = Postcodesio.new.single_postcode_service
      @single_postcode_service.single_postcode_request('KT36HB')
    end

    it 'should retrieve postcode as a string' do
      expect(@single_postcode_service.retrieve_postcode).to be_kind_of(String)
    end

    it 'should retrieve result as a hash' do
      expect(@single_postcode_service.retrieve_result).to be_kind_of(Hash)
    end

    it 'should respond with a status code of 200' do 
      expect(@single_postcode_service.retrieve_status_code).to eq(200)
    end

    it 'should retrieve quality as an integer' do
      expect(@single_postcode_service.retrieve_quality).to be_kind_of(Integer)
    end

    it 'should retrieve eastings as an integer' do
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer) | be(nil)
    end

    it 'should retrieve northings as an integer' do 
      expect(@single_postcode_service.retrieve_northings).to be_kind_of(Integer) | be(nil)
    end

    it 'should retrieve country as a string' do 
      expect(@single_postcode_service.retrieve_country).to be_kind_of(String)
    end

    it 'should retrieve NHS Health Authority as a string' do 
      expect(@single_postcode_service.retrieve_nhs_ha).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve longitude as a float' do 
      expect(@single_postcode_service.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should retrieve latitude as a float' do 
      expect(@single_postcode_service.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should retrieve european_electoral_region as a string' do 
      expect(@single_postcode_service.retrieve_european_electoral_region).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve primary_care_trust as a string' do 
      expect(@single_postcode_service.retrieve_primary_care_trust).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve region as a string' do 
      expect(@single_postcode_service.retrieve_region).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve lsoa as a string' do 
      expect(@single_postcode_service.retrieve_lsoa).to be_kind_of(String)
    end

    it 'should retrieve msoa as a string' do 
      expect(@single_postcode_service.retrieve_lsoa).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve incode as a string' do 
      expect(@single_postcode_service.retrieve_outcode).to be_kind_of(String)
    end

    it 'should retrieve parliamentary_constituency as a string' do 
      expect(@single_postcode_service.retrieve_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should retrieve admin district as a string' do 
      expect(@single_postcode_service.retrieve_admin_district).to be_kind_of(String) | be(nil)
    end
    
    it 'should retrieve parish as a string' do 
      expect(@single_postcode_service.retrieve_parish).to be_kind_of(String)
    end

    it 'should retrieve admin county as a string' do 
      expect(@single_postcode_service.retrieve_admin_county).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve admin ward as a string' do 
      expect(@single_postcode_service.retrieve_admin_ward).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve ced as a string' do 
      expect(@single_postcode_service.retrieve_ced).to be_kind_of(String) | be(nil) 
    end

    it 'should retrieve ccg as a string' do 
      expect(@single_postcode_service.retrieve_ccg).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve nuts as a string' do 
      expect(@single_postcode_service.retrieve_nuts).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve codes as a string' do 
      expect(@single_postcode_service.retrieve_codes).to be_kind_of(Hash)
    end

    it 'should retrieve admin district from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_admin_district).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve admin county from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_admin_county).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve admin ward from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_admin_ward).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve parish from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_parish).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve retrieve codes parliamentary constituency from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_parliamentary_constituency).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve ccg from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_ccg).to be_kind_of(String)
    end

    it 'should retrieve ced from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_ced).to be_kind_of(String)
    end

    it 'should retrieve nuts from the codes hash as a string' do
      expect(@single_postcode_service.retrieve_codes_nuts).to be_kind_of(String) | be(nil)
    end

    it 'should retrieve postcode with characters no more or equal to 8' do
      expect(@single_postcode_service.retrieve_postcode.split(" ").length).to be <= 8
    end

    it 'should retrieve postcode with atleast 5 characters long' do
      expect(@single_postcode_service.retrieve_postcode.length).to be >= 5
    end
  
    it 'should retrieve quality number between 1 and 9' do
      expect(@single_postcode_service.retrieve_quality).to be_between(1, 9)
    end

    it 'should retrieve incode equal to 3 characters long' do
      expect(@single_postcode_service.retrieve_incode.length).to eq 3
    end

    it 'should retrieve outcode between 2 and 4 characters long' do
      expect(@single_postcode_service.retrieve_outcode.length).to be_between(2, 4)
    end

  end
end
