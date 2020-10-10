require "rubiclifier"
require_relative "new.rb"
include New

module Rubiclifier
  class Args
    def all
      args
    end
    def at(index)
      args[index]
    end
  end
end

class SvelteCli < Rubiclifier::BaseApplication
  def show_help
    puts
    puts("Svelte-CLI makes creating new svelte applications a breeze")
    puts
    puts("Usage:")
    puts("  svelte_cli --help                      | Shows this help menu")
    puts("  svelte_cli command --option <argument> | Executes command")
    puts
    exit
  end

  def run_application
    show_help if args.none?

    case args.command
    when "new"
      New.new args
    end
  end
end
