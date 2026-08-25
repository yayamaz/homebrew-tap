cask "stillpane" do
  version "0.1.0"
  sha256 "53039689169c09a0ceac8a410351513597edc583f9a0070375e95feacde45432"

  url "https://github.com/yayamaz/stillpane/releases/download/v#{version}/stillpane-#{version}.dmg"
  name "stillpane"
  desc "Press both Option keys and the frontmost window lands in your next Claude Code message"
  homepage "https://github.com/yayamaz/stillpane"

  depends_on macos: ">= :sonoma"

  app "stillpane.app"

  zap trash: [
    "~/.claude/stillpane",
    "~/Library/Preferences/app.stillpane.Stillpane.plist",
  ]
end
