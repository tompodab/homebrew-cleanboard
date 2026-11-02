cask "cleanboard" do
  version "2.5.6"
  sha256 "2330b9889b43aea9cf45cac6a9f483cef88094dc4cab1b7f127f0ec67234a158"

  url "https://github.com/tompodab/cleanboard/releases/download/#{version}/CleanBoard-#{version}.dmg"
  name "CleanBoard"
  desc "Lightweight app that removes formatting from copied text by hitting copy twice"
  homepage "https://cleanboard.app/"

  auto_updates true

  app "CleanBoard.app"

  zap trash: [
    "~/Library/Application Support/CleanBoard",
    "~/Library/Caches/com.cleanboard.app",
    "~/Library/Preferences/com.cleanboard.app.plist",
  ]
end
