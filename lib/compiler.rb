require 'fileutils'
require 'yaml'
require 'active_support/hash_with_indifferent_access'
require_relative 'context'

class Compiler
  def self.build!(path)
    new(path).compile!
  end

  def initialize(path)
    @path = path
  end

  def compile!
    I18n.available_locales.each do |lang|
      I18n.locale = lang.to_sym
      compile_erb!
    end
  end

private

  def path_for_language
    if I18n.locale == :en
      File.join(@path, 'index.html')
    else
      File.join(@path, I18n.locale.to_s, 'index.html')
    end
  end

  def compile_erb!
    FileUtils.mkdir_p File.dirname(path_for_language)
    File.open(path_for_language, 'w+') do |f|
      f.write compile_template
    end
  end

  def compile_template
    binding = Context.new.get_binding
    ERB.new(template).result(binding)
  end

  def template
    File.read(File.join(@path, 'templates', 'index.html.erb'))
  end
end
