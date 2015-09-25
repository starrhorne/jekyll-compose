class Jekyll::Compose::FileInfo
  attr_reader :params
  def initialize(params)
    @params = params
  end

  def file_name
    name = Jekyll::Utils.slugify params.title
    "#{name}.#{params.type}"
  end

  def content
    <<-CONTENT.gsub /^\s+/, ''
      ---
      layout: #{params.layout}
      title: #{params.title}
      author: starr # ben josh
      excerpt: ''
      categories:
        #- Ruby
        #- Rails
        #- Elixir
        #- Javascript
        #- Go
        #- News
        #- Features
      ---
    CONTENT
  end
end
