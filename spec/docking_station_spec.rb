require 'docking_station'



describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'can pass capacity on initialization' do

      subject.capacity = 50
      expect(subject.capacity).to eq(50)
    end

    it 'releases a bike' do
      subject.dock Bike.new
      bike = subject.release_bike
      expect(bike).to respond_to :working?
    end

context '#release_bike' do
    it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
    end


    it 'will not release a broken bike' do
      bike = double :bike, working?: false
      subject.dock bike
      expect {subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'releases working bikes' do
      bike = double :bike, working?: true
      subject.dock bike
      expect(subject.release_bike).to be bike
    end


end
      describe '#dock' do
        it 'raises an error when full' do
          subject.capacity = 50
          subject.capacity.times { subject.dock Bike.new }
          expect { subject.dock Bike.new }.to raise_error 'Docking station full'
        end
      end



end
