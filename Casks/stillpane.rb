cask "stillpane" do
  version "0.1.0"
  sha256 "6114394f2d5e0295dfd5ae6c66fb475a5ebcd552b1358e2752f0ae4d547047ea"

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
