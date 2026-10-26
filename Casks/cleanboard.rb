cask "cleanboard" do
  version "2.5.2"
  sha256 "1597152715633366ec28e10f4c7e84028af79af6ec71e8576d0289ca2ec226f4"

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
