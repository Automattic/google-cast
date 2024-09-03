Pod::Spec.new do |s|  
    s.name              = 'google-cast-sdk-no-bluetooth' # Name for your pod
    s.version           = '1.2.0'
    s.summary           = 'Sample Spec'
    s.homepage          = 'https://www.google.com'

    s.author            = { 'Sample' => 'sample@sample.com' }
    s.license = { :type => "MIT", :text => "MIT License" }

    s.platform          = :ios
    # change the source location
    s.source            = { :http => 'http://localhost:8080/XCFrameworkTest.zip' } 
    s.ios.deployment_target = '10.0'
    s.ios.vendored_frameworks = 'GoogleCast.xcframework' # Your XCFramework
end 
