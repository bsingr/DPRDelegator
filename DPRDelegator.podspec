Pod::Spec.new do |s|
  s.name         = "DPRDelegator"
  s.version      = "0.1.0"
  s.summary      = "A class that helps dealing with custom delegators."
  s.homepage     = "https://github.com/dpree/DPRDelegator"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.authors       = { "Jens Bissinger" => "mail@jens-bissinger.de" }
  s.source       = { :git => "https://github.com/dpree/DPRDelegator.git",
                     :tag => '0.1.0' }

  s.source_files = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end
