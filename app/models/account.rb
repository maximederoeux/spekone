class Account < ApplicationRecord

  def generate_subdomain
  	resto_name.parameterize.gsub(/-/,'')
  end
  
end
