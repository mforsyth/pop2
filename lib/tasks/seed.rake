task :seed_resources => :environment do
  Resource.destroy_all
  CSV.read(Rails.root.to_s + '/doc/initial_resources.csv')[1..-1].each { |row|
    puts "section is #{row[4]}"
    Resource.create!(organization: row[0],
                     description: row[1],
                     nature: row[2],
                     audience: row[3],
                     section: row[4],
                     external_url: row[5])
  }
end
