class NonhiddenFiles

  def self.get(dir)
    { dir => Dir.entries(dir).select{|entry| entry[0] != '.' && FileTest.file?(File.join(dir, entry))} }
  end

  def self.recursive_get(directory)
    dirs = FileUtil.recursive_dirs(directory)
    puts "dirs: #{dirs.inspect}"
    dirs.inject([]) do |accum, dir|
      puts "accum: #{accum.inspect}"
      puts "dir: #{dir.inspect}"
      puts "NonhiddenFiles.get(#{dir}): #{self.get(dir)}"
      accum << self.get(dir)
    end
  end

end

