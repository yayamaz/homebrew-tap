cask "stillpane" do
  version "0.2.0"
  sha256 "15d196256befde5895c3f26ff95275ac97cee250518a460b68a9ffafff6b14e3"

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
