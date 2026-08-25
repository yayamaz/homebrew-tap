cask "stillpane" do
  version "0.1.0"
  sha256 "e24feb654948e7bd5cd00a091bfbd86ba3efbcde3927e003b6b4213fdea4faa6"

  url "https://github.com/yayamaz/stillpane/releases/download/v#{version}/stillpane-#{version}.dmg"
  name "stillpane"
  desc "Press both Option keys and the frontmost window lands in your next Claude Code message"
  homepage "https://github.com/yayamaz/stillpane"

  depends_on macos: :sonoma

  app "stillpane.app"

  zap trash: [
    "~/.claude/stillpane",
    "~/Library/Preferences/app.stillpane.Stillpane.plist",
  ]
end
