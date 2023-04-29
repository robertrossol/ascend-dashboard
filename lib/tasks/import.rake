require 'roo'
namespace :import do
  desc "Import data from spreadsheet" # update this line
  task data: :environment do
    puts 'Importing Data' # add this line
    data = Roo::Spreadsheet.open('lib/data.xlsx') # open spreadsheet
    headers = data.row(1).map(&:downcase) #get header row
    data.each_with_index do |row,idx|
      next if idx == 0 # skip headers
      # create hash
      applicant_data = Hash[[headers, row].transpose]
      # next if applicant exists
      if Applicant.exists?(name: applicant_data['name'])
        puts 'Applicant already exists'
        next
      end

      applicant = Applicant.new(applicant_data)
      puts "Saving Applicant"
      applicant.save!
    end
  end
end
