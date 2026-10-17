cask "always-clock" do
  version "1.4"
  sha256 "471116db81ac94c2db8af3b84cbc366afeced7092c60bb5876aa56fc25914030"

  url "https://github.com/maimon33/always-clock/releases/download/v#{version}/Always-Clock-v#{version}.dmg"
  name "Always Clock"
  desc "Always-on-top transparent clock for macOS"
  homepage "https://github.com/maimon33/always-clock"

  depends_on macos: ">= :ventura"

  app "Always Clock.app"

  caveats <<~EOS
    If macOS says Always Clock can't be opened, run:
      xattr -dr com.apple.quarantine "/Applications/Always Clock.app"
  EOS

  zap trash: [
    "~/Library/Preferences/com.alwaysclock.app.plist",
  ]
end
