module SprocketsHelper
  def sprockets_include_tag(name)
    javascript_include_tag("/javascripts/#{name}")
  end
end