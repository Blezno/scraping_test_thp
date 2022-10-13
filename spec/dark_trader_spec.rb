require_relative ("../lib/dark_trader.rb")

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

describe "Test scrapping on cryptos" do
    it "Is ok if final is displayed" do
        expect(final(page)).to_not be_nil
    end
end