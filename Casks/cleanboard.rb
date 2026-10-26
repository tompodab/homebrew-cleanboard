cask "cleanboard" do
  version "2.5.1"
  sha256 "632cbcf20468e777277924d1e6a907a5e51a29527920ecefe29507a2f710d734"

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
