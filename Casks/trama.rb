cask "trama" do
  version "0.1.1"
  sha256 "0df3af127cc8cf8437577c650c70ff907affbe9199dbdf19a673418be7a29987"

  url "https://pub-e980205d52d54c93a2a279e7b0b62766.r2.dev/v#{version}/Trama_#{version}_aarch64.dmg"
  name "Trama"
  desc "Orchestrate AI coding agents on a canvas"
  homepage "https://github.com/Trama-Dev/trama"

  app "Trama.app"

  zap trash: [
    "~/Library/Application Support/app.apollo.trama",
  ]
end
