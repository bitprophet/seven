module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods
    attr_accessor :headers, :contents

    def initialize
      read
    end

    def parse_line(line)
      line.chomp.split(',')
    end

    def read
      @contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = parse_line(file.gets)

      file.each do |row|
        @contents << parse_line(row)
      end
    end

    def each(&block)
      @contents.each do |line|
        block.call(CsvRow.new(line, @headers))
      end
    end
  end
end

class CsvRow
  def initialize(row, headers)
    @headers = headers.map {|x| x.downcase}
    @row = row
  end

  def method_missing(name, *args)
    index = @headers.index(name.to_s.downcase)
    @row[index] unless index.nil?
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
m.each do |row|
  p row.name
end
