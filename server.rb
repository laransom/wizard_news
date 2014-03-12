require 'sinatra'
require 'shotgun'
require 'pry'
require 'csv'
require_relative 'lib/wiz_article.rb'

get '/' do
  erb :index
end

post '/articles' do
  title = params['title']
  url = params['url']
  description = params['description']

  File.open('articles.csv', 'a') do |f|
      f.puts "#{title},#{url},#{description}"
  end

  @articles = []
  CSV.foreach('articles.csv', headers: true) do |row|
    @articles << WizArticle.new(row[0], row[1], row[2])
  end

  erb :articles
end
