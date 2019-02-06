require './lib/unit_test.rb'

describe FileSystem do
  it 'can add items to storage' do
    file_system = FileSystem.new
    file = 'James'
    file_system.store(file)
    expect(file_system.display_files).to include(file)
  end
end
