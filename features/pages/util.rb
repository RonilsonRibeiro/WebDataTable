require 'yaml' 

class Util < SitePrism:: Page


	def write(column, line, data)
		DATATABLE[column][line]= data
		File.open("./features/fixtures/data_table.yml", 'w') {|f| YAML.dump(DATATABLE, f)}
	end

end