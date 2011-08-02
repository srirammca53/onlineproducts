class Product < ActiveRecord::Base
attr_accessor :avatar


has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
     :storage => :s3,
     :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
     :bucket => "sharmanyros",
      :path => "/sriram/images/:style/:id/:filename" ;

end
