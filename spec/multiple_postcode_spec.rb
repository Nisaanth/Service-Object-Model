require 'spec_helper'

describe Postcodesio do 

  context 'requesting information from the multiple service works correctly' do 
    before(:all) do 
      @multiple_postcode_service = Postcodesio.new.multiple_postcode_service
      @multiple_postcode_service.multiple_postcode_request(['KT36HB', 'KT36EX'])
    end

    it 'should respond with a status code of 200' do 
      expect(@multiple_postcode_service.retrieve_status_code).to eq(200)
    end
  end
end