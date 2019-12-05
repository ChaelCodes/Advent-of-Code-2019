module Nutcracker
  def self.split_int(file)
    file.split.map!(&:to_i)
  end

  def self.comma_delimeted_int(file)
    file.split(',').map!(&:to_i)
  end
end
