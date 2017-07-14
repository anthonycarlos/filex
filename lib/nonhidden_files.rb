class NonhiddenFiles

  def self.get(dir)
    Dir.entries(dir).select{|entry| entry[0] != '.'}
  end

end

