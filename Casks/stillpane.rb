cask "stillpane" do
  version "1.0.0"
  sha256 "62c8ae2299dc7648ac274dc3ebe3bbd7ae36dfa3e49e3dee91f1e80f1d44e385"

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
