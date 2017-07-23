require 'fileutils'
require 'find'

class FileUtil

  def self.move_file!(existing_filename, new_filename, noop: nil, verbose: true)
    return false if existing_filename == new_filename
    return false unless FileTest.exist?(existing_filename)
    FileUtils.mv(existing_filename, new_filename, noop: noop, verbose: verbose)
  end

  def self.recursive_dirs(starting_dir)
    paths = []
    Find.find(starting_dir) do |path|
      if FileTest.directory?(path)
        if File.basename(path)[0] == ?.
          Find.prune       # Don't look any further into this directory.
        else
          paths << path
          next
        end
      end
    end
    paths
  end

end

