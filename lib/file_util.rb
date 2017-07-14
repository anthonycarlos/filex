require 'fileutils'

class FileUtil

  def self.move_file(existing_filename, new_filename, noop: nil, verbose: true)
    return false if existing_filename == new_filename
    return false unless FileTest.exist?(existing_filename)
    FileUtils.mv(existing_filename, new_filename, noop: noop, verbose: verbose)
  end

end

