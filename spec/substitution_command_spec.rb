require 'spec_helper'
require 'rspec/given'
require 'substitution_command'

describe 'SubstitutionCommand.parse' do

  context "with a straight substitution" do
    Given(:cmd) { 's/_/-/' }
    When(:result) { SubstitutionCommand.parse(cmd) }
    Then { expect(result).to be == [ /_/, '-' ] }
  end

  context "with a back reference" do
    Given(:cmd) { 's/cgo0003_(\d{8}).pdf/cgo-0003-\1.pdf/' }
    When(:result) { SubstitutionCommand.parse(cmd) }
    Then { expect(result).to be == [ /cgo0003_(\d{8}).pdf/, 'cgo-0003-\1.pdf' ] }
  end

  context "without the s prefix" do
    Given(:cmd) { '/_/-/' }
    When(:result) { SubstitutionCommand.parse(cmd) }
    Then { expect(result).to be == [ /_/, '-' ] }
  end

end

