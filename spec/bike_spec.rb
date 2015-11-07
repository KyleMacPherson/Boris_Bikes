require 'bike'

describe Bike do
    it { is_expected.to respond_to :working? }

    it 'is working when created' do
      expect(subject.working?).to eq(true)
    end

    it 'can be reported broken' do
      subject.report_broken
      expect(subject.working?).to eq(false)
    end

    it 'it is broken if not working' do
      subject.report_broken
      expect(subject.broken?).to eq(true)
    end


      # expect broken? to be true if working? is false
#    end


end
