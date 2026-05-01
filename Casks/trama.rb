cask "trama" do
  version "0.1.1"
  sha256 "783fd42f3175d10fbc38d10a8f6dcd9a7e6d708566b019b665b83c2959b0bf40"

  url "https://pub-e980205d52d54c93a2a279e7b0b62766.r2.dev/v#{version}/Trama_#{version}_aarch64.dmg"
  name "Trama"
  desc "Orchestrate AI coding agents on a canvas"
  homepage "https://github.com/Trama-Dev/trama"

  app "Trama.app"

  # Trama is not Apple-signed (see ADR-0008 D64). Brew applies the
  # macOS quarantine attribute to anything it downloads, and macOS
  # Sequoia rejects unsigned + quarantined apps with "Trama is
  # damaged". This postflight strips the attribute right after
  # install so the user can open the app immediately.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Trama.app"]
  end

  zap trash: [
    "~/Library/Application Support/app.apollo.trama",
  ]
end
