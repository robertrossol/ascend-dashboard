namespace :db do
  desc "Reseed database task"
  x = File.exist?('lib/data.xlsx') ? [ 'db:drop', 'db:create', 'db:migrate', 'import:data' ] : [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ]
  task reseed: x do
    puts 'Reseeding completed.'
  end
end