Pod::Spec.new do |spec|
  spec.name                  = 'Comprehension'
  spec.version               = '0.0.2'
  spec.license               = { :type => 'MIT' }
  spec.homepage              = 'https://github.com/dduan/comprehension'
  spec.authors               = { 'Daniel Duan' => 'daniel@duan.ca' }
  spec.summary               = 'Provide list comprehension in Swift.'
  spec.source                = { :git => 'https://github.com/dduan/comprehension.git', :tag => spec.version.to_s }
  spec.osx.deployment_target = "10.10"
  spec.source_files          = 'Sources/**/*.swift'
  spec.module_name           = 'Comprehension'
end
