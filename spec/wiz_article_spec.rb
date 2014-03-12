require 'rspec'
require_relative '../lib/wiz_article.rb'

describe WizArticle do
  let(:article) {WizArticle.new('Fun Wizard Stuff', 'funwizard.com', 'A rollicking tale from hogwarts')}

  it 'Title of article is a string' do
    expect(article.title.class).to eq(String)
  end

  it 'URL is a string' do
    expect(article.url.class).to eq(String)
  end

  it 'Description is a string' do
    expect(article.description.class).to eq String
  end
end
