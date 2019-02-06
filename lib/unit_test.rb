class FileSystem
  attr_reader :storage

  def initialize
    @storage = []
  end

  def display_files
    storage
  end

  def store(file)
    storage.push(file)
  end
end
