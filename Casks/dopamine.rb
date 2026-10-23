cask "dopamine" do
  version "1.2.2"
  sha256 "cd7730e1e69abecf8e1a34adb484c90e499a6795fe637c0cc3bbce166df9461b"

  url "https://dopamine.33rd.pro/Dopamine.dmg"
  name "Dopamine"
  desc "Keep-awake power utility with closed-lid display backlight cutoff for Apple Silicon"
  homepage "https://dopamine.33rd.pro"

  auto_updates true
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Dopamine.app"

  zap trash: [
    "~/Library/Application Support/Dopamine",
    "~/Library/Caches/com.alexey.Dopamine",
    "~/Library/HTTPStorages/com.alexey.Dopamine",
    "~/Library/Preferences/com.alexey.Dopamine.plist",
  ]
end
