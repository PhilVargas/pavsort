require_relative './spec_helper'
describe Pavsort::Merge do
  let(:case_test){%w{D c B a}}
  let(:case_sorted){%w{a B c D}}
  let(:num_test){[3,7,2,9]}
  let(:num_sorted){[2,3,7,9]}
  context '.sort' do
    it "is case insesitive" do
      expect(Pavsort::Merge.sort(case_test)).to eq case_sorted
    end

    it 'sorts numbers' do 
      expect(Pavsort::Merge.sort(num_test)).to eq num_sorted
    end

    it 'sorts an array with numbers and strings' do
      expect(Pavsort::Merge.sort(case_test+num_test)).to eq (num_sorted+case_sorted)
    end
  end
end