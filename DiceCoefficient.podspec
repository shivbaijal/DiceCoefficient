Pod::Spec.new do |s|
  s.name = 'DiceCoefficient'
  s.version = '1.0.0'
  s.summary = 'Calculate the similarity of strings using the Sørensen–Dice coefficient'
  s.license = 'MIT'
  s.homepage = 'https://github.com/shivbaijal/DiceCoefficient'
  s.authors = { 'Shiv Baijal' => "shiv@shivbaijal.com" }
  s.source = { :git => 'https://github.com/shivbaijal/DiceCoefficient.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'Sources/*.swift'
  s.requires_arc = true
end
