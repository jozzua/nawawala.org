require 'spec_helper'

describe Report do

  before do
    @report = Report.new(person:"Random Person",details:"This person has been missing since...")
  end

  subject { @report }

  it { should respond_to(:person) }
  it { should respond_to(:details) }

  it { should be_valid }

  describe "when person is not present" do
    before { @report.person = " " }
    it { should_not be_valid }
  end

  describe "when details are not present" do
    before { @report.details = " " }
    it { should_not be_valid }
  end

  describe "when person is already taken" do
    before do
      report_with_same_person = @report.dup
      report_with_same_person.person = @report.person.upcase
      report_with_same_person.save
    end

    it { should_not be_valid }
  end


end

