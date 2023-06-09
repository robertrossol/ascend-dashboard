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
      if Applicant.exists?(name: applicant_data['name']) || !applicant_data['name']
        puts 'Applicant already exists'
        next
      end
      manager = Manager.find_by(name: applicant_data["manager"]) || Manager.create({name: applicant_data["manager"]})
      mentor = Mentor.find_by(name: applicant_data["mentor"]) || Mentor.create({name: applicant_data["mentor"]})

      p applicant_data
      applicant_data["manager_id"] = manager.id
      applicant_data["mentor_id"] = mentor.id

      applicant_data.delete("manager")
      applicant_data.delete("mentor")

      applicant = Applicant.new(applicant_data)
      puts "Saving Applicant"
      applicant.save!
    end
  end
end
