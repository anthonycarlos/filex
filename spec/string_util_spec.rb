require 'spec_helper'
require 'rspec/given'
require 'string_util'

describe 'StringUtil.gsub' do

  context "Straight gsub" do
    Given(:result) { StringUtil.gsub('van_1234_20071231.pdf', /_/, '-') }
    Then { expect(result).to be == 'van-1234-20071231.pdf' }
  end

  context "Splitting on a word boundary with a back reference" do
    Given(:result) { StringUtil.gsub('cgo0003_20050602.pdf', /cgo0003_(\d{8}).pdf/, 'cgo-0003-\1.pdf') }
    Then { expect(result).to be == 'cgo-0003-20050602.pdf' }
  end
end

