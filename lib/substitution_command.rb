class SubstitutionCommand

  def self.parse(str)
    parts = str.split('/')
    pattern = parts[1]
    replacement = parts[2]
    [ Regexp.new(pattern), replacement ]
  end

end
