gc = GrailsCommand.new("") do |default|
  TextMate::UI.request_string( 
    :title => "Run Grails Task",
    :prompt => "Enter a command to pass to grails",
    :default => default
  )
end

gc.run