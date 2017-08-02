use_frameworks!
inhibit_all_warnings!

target 'TravelerDemoApp' do

  # Pods for TravelerDemoApp

    pod 'Cache', '~> 2.2'
    pod 'CPLoadingView', '~> 2.0'

    pod 'DynamicBlurView', '~> 1.3'

    pod 'GradientView', '~> 2.2'

    pod 'PureLayout', '~> 3.0'

  target 'TravelerDemoAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'TravelerDemoAppUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
