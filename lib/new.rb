require "json"

module New
  def new(args)
    if args.first_option == "component"
      if args.at(2)
        component(args.at(2))
      else
        puts "You must enter a name".red
      end
    else
      if args.first_option
        new_default(args.first_option)
      else
        puts "You must enter a name".red
      end
    end
  end

  private

  def component(name)
    if src_path
      File.open("#{src_path}/#{name}.svelte", "w") {|f| f.write(component_template) }
      puts "Created component #{name}".green
    else
      puts "Source path not defined. Make a svelte.config.json to define a path".red
    end
  end

  def new_default(name)
    system("npx degit sveltejs/template #{name}")
    File.open("#{name}/svelte.config.json", "w") {|f| f.write("{\n\"src\":\"src/\"\n}") }
    puts "Created #{name}".green
  end

  def src_path
    begin
      config = JSON.parse(File.read("svelte.config.json"))
      config["src"]
    rescue
      puts "Could not find svelte.config.json".red
      exit
    end
  end

  def component_template
    <<-STRING
<script>
  // Code here
</script>

<style>
  /* Styles here */
</style>

<!-- HTML here -->
    STRING
  end
end
