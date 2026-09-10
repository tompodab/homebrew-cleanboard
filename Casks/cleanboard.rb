cask "cleanboard" do
  version "2.4.3"
  sha256 "36df753e1a775d6daf970a38f8e8ff491ebdbe4592d22965f16349deee359cbf"

  url "https://github.com/tompodab/cleanboard/releases/download/#{version}/CleanBoard-#{version}-Installer.dmg"
  name "CleanBoard"
  desc "Lightweight app that removes formatting from copied text by hitting copy twice"
  homepage "https://cleanboard.app/"

  app "CleanBoard.app"

  zap trash: [
    "~/Library/Application Support/CleanBoard",
    "~/Library/Caches/com.cleanboard.app",
    "~/Library/Preferences/com.cleanboard.app.plist",
  ]
end
