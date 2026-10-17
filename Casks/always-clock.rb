cask "always-clock" do
  version "1.5"
  sha256 "92b525f32f64a918be890181ff54490dd5cd61be1160b9e301782f65f626ff63"

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
