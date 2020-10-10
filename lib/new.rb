module New
  def new(args)
    case args.first_option
    when "component"
      if args.at(2)
        component(args.at(2))
      else
        puts "You must enter a name".red
      end
    when "rails"
      rails name
    when "node"
      default name
    else
      if args.first_option
        default args.first_option
      else
        puts "You must enter a name".red
      end
    end
  end

  private

  def default(name)
    system("npx degit sveltejs/template #{name}")
    puts "Created #{name}".green
  end

  def rails(name)
    system("npx degit sveltejs/template #{name}")
    puts "Created #{name}".green
  end

  def component(name)
    system("touch src/#{name.capitalize}.svelte")
    puts "Created component #{name}".green
  end
end
