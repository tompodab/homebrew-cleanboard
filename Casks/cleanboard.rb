cask "cleanboard" do
  version "2.5.3"
  sha256 "8728a544ddd7bfa2db469e24da180c10a2caf01381cbbdbbb807e7f335836ad8"

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
