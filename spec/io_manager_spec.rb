require_relative './../lib/io_manager'
RSpec.describe IOManager do
  describe 'launch' do
    it 'converts 12 C to 53.6 F' do
      io = IOManager.new
      allow(io).to receive(:gets).and_return("12\n", "C\n", "F\n")
      expect(io.launch).to eq 53.6
    end

    it 'converts 320 K to 46.85 C' do
      io = IOManager.new
      allow(io).to receive(:gets).and_return("320\n", "k\n", "c\n")
      expect(io.launch).to eq 46.85
    end

    it 'converts 10 F to -12.22 C' do
      io = IOManager.new
      allow(io).to receive(:gets).and_return("10\n", "f\n", "c\n")
      expect(io.launch).to eq(-12.22)
    end

    it 'converts 0 K to -459.67 F with incorrect degree' do
      io = IOManager.new
      allow(io).to receive(:gets).and_return("aa\n", "0\n", "k\n", "f\n")
      expect(io.launch).to eq(-459.67)
    end

    it 'converts -459.67 F to 0 K with incorrect initial scale' do
      io = IOManager.new
      allow(io).to receive(:gets).and_return("-459.67\n", "12esd\n", "f\n", "k\n")
      expect(io.launch).to eq 0
    end

    it 'converts 46.85 C to 320 K with incorrect target scale' do
      io = IOManager.new
      allow(io).to receive(:gets).and_return("46.85\n", "C\n", "23sfdg\n", "K\n")
      expect(io.launch).to eq 320
    end
  end
end
