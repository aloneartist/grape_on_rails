module Entity
  class Base < Grape::Entity
    format_with(:iso_timestamp) { |dt| dt.to_i }
    format_with(:to_string) { |dt| dt.to_s }

    def to_xml(options = {})
    	options[:root] = options[:root].downcase.parameterize.gsub(/^entity\-/,'') if(options[:root].present?)
    	options[:root] = self.class.name.downcase.parameterize.gsub(/^entity\-/,'') unless(options[:root])
    	
    	super options
    end
  end
end