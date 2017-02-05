# Original: https://github.com/onk/onkcop
#
# The MIT License (MIT)
# 
# Copyright (c) 2015 Takafumi ONAKA
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
require 'fileutils'

module Meowcop
  class CLI
    CONFIG_FILE_NAME = ".rubocop.yml".freeze

    def self.start(args)
      action_name = args.shift || 'help'

      instance = self.new
      unless instance.public_methods(false).include?(action_name.to_sym)
        puts "Could not find command #{action_name}."
        action_name = 'help'
      end

      instance.public_send(action_name, args)
    end

    def init(_args)
      template_path = File.expand_path("../../examples", __dir__)
      action = File.exist?(CONFIG_FILE_NAME) ? "overwrited" : "created"
      FileUtils.copy_file(File.join(template_path, CONFIG_FILE_NAME), CONFIG_FILE_NAME)
      puts "Meow! #{CONFIG_FILE_NAME} has been #{action} successfully."
    end

    def help(_args)
      msg = <<-END
MeowCop commands:
  init - Setup .rubocop.yml
  help - Show this message
      END
      puts msg
    end
  end
end
