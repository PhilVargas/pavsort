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

  context 'Pavsort::Merge.sort' do
    it 'should finish ordered within 10 seconds' do
      start = Time.now
      Pavsort::Merge.sort(ordered)
      finish = Time.now
      runtime = finish - start
      expect( runtime ).to be < 10
      p "Method runtime is: #{runtime} seconds" #display benchmark time on rspec
    end

    it 'should finish random within 10 seconds' do
      start = Time.now
      Pavsort::Merge.sort(random)
      finish = Time.now
      runtime = finish - start
      expect( runtime ).to be < 10
      p "Method runtime is: #{runtime} seconds" #display benchmark time on rspec
    end

    it 'should finish reverse within 10 seconds' do
      start = Time.now
      Pavsort::Merge.sort(reverse)
      finish = Time.now
      runtime = finish - start
      expect( runtime ).to be < 10
      p "Method runtime is: #{runtime} seconds" #display benchmark time on rspec
    end
  end

  context 'Pavsort::Quick.sort' do
    it 'should finish ordered within 10 seconds' do
      start = Time.now
      Pavsort::Quick.sort(ordered)
      finish = Time.now
      runtime = finish - start
      expect( runtime ).to be < 10
      p "Method runtime is: #{runtime} seconds" #display benchmark time on rspec
    end

    it 'should finish random within 10 seconds' do
      start = Time.now
      Pavsort::Quick.sort(random)
      finish = Time.now
      runtime = finish - start
      expect( runtime ).to be < 10
      p "Method runtime is: #{runtime} seconds" #display benchmark time on rspec
    end

    it 'should finish reverse within 10 seconds' do
      start = Time.now
      Pavsort::Quick.sort(reverse)
      finish = Time.now
      runtime = finish - start
      expect( runtime ).to be < 10
      p "Method runtime is: #{runtime} seconds" #display benchmark time on rspec
    end
  end
end