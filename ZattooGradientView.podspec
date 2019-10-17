Pod::Spec.new do |s|
    s.name = 'ZattooGradientView'
    s.author = 'Zattoo'
    s.version = '1.0.0'
    s.license = 'MIT'
    s.summary = 'GradientView for iOS and tvOS'
    s.homepage = 'https://github.com/zattoo/GradientView'
    s.source = { :git => 'https://github.com/zattoo/GradientView', :tag => s.version }
    s.tvos.deployment_target = '11.0'
    s.ios.deployment_target = '10.3'
    s.source_files = 'Sources/**/*.swift'
  end
