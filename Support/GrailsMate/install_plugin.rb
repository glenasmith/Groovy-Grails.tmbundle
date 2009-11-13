gc = GrailsCommand.new("install-plugin") do |default|
  TextMate::UI.request_string( 
    :title => "Install Grails Plug-in",
    :prompt => "Enter the Plug-in name",
    :default => default
  )
end

gc.colorisations['green'] << /Plugin (.)+ installed/
gc.colorisations['red'] << /Plugin (.)+ was not found in repository/
gc.run