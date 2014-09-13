namespace :nist do
  desc "Import NIST Members"
  task :data => :environment do
  	s = Roo::Excelx.new("public/list.xlsx")
  	rf = s.first_row
  	rl = s.last_row

  	for i in rf+1..rl
  		@member = Member.create(:address => s.cell(i,'C'), :city => s.cell(i,'D'), :code => s.cell(i,'A'),
  		 :mobile => s.cell(i,'F'), :name => s.cell(i,'B'), :pincode => s.cell(i,'E'))
  		p @member
  	end
  end

end
