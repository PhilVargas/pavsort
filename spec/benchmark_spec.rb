require_relative './spec_helper'
describe 'Benchmarks' do
  let(:ordered){[]}
  let(:random){[]}
  let(:reverse){[]}
  before(:each) do
    File.open("spec/wordlists/random_wordlist.txt", "r").each_line do |line|
      random << line.chomp
    end

    File.open("spec/wordlists/reversed_wordlist.txt", "r").each_line do |line|
      reverse << line.chomp
    end

    File.open("spec/wordlists/sorted_wordlist.txt", "r").each_line do |line|
      ordered << line.chomp
    end
  end

  context 'Sort::Merge.sort' do
    it 'should finish ordered within 10 seconds' do
      start = Time.now
      Sort::Merge.sort(ordered)
      finish = Time.now
      expect( finish - start ).to be < 10
    end

    it 'should finish random within 10 seconds' do
      start = Time.now
      Sort::Merge.sort(random)
      finish = Time.now
      expect( finish - start ).to be < 10
    end

    it 'should finish reverse within 10 seconds' do
      start = Time.now
      Sort::Merge.sort(reverse)
      finish = Time.now
      expect( finish - start ).to be < 10
    end
  end

  context 'Sort::Quick.sort' do
    it 'should finish ordered within 10 seconds' do
      start = Time.now
      Sort::Quick.sort(ordered)
      finish = Time.now
      expect( finish - start ).to be < 10
    end

    it 'should finish random within 10 seconds' do
      start = Time.now
      Sort::Quick.sort(random)
      finish = Time.now
      expect( finish - start ).to be < 10
    end

    it 'should finish reverse within 10 seconds' do
      start = Time.now
      Sort::Quick.sort(reverse)
      finish = Time.now
      expect( finish - start ).to be < 10
    end
  end
end