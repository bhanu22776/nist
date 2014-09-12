namespace :nist do
  desc "Import NIST Members"
  task :data => :environment do
  	s = Roo::Excelx.new("public/file.xlsx")
  	rf = s.first_row
  	rl = s.last_row

  	for i in rf+1..rl
  		@member = Member.create(:address => s.cell(i,'D'), :city => s.cell(i,'E'), :code => s.cell(i,'B'),
  		 :mobile => s.cell(i,'G'), :name => s.cell(i,'C'), :pincode => s.cell(i,'F'))
  		p @member
  	end
  end

end
