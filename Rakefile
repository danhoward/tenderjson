

rule '.rb' => '.y' do |t|
	sh "racc -l -o #{t.name} #{t.source}"
end

task compile: 'lib/tender_json/parser.rb'

task test: :compile