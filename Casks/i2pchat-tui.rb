cask "i2pchat-tui" do
  version "1.7.1"

  on_arm do
    sha256 "ddcf0d3e206e264ff67dade8d1191d5c5200df9c348dac8f4bc57856e83ce05d"

    url "https://github.com/MetanoicArmor/I2PChat-ng/releases/download/v#{version}/I2PChat-macOS-arm64-tui-v#{version}.zip"
  end
  on_intel do
    sha256 "75cca5a851e727f699e394528d28c7298a3746e3e606a778e9bab93d56cd8125"

    url "https://github.com/MetanoicArmor/I2PChat-ng/releases/download/v#{version}/I2PChat-macOS-x64-tui-v#{version}.zip"
  end

  name "I2PChat TUI"
  desc "Terminal UI (Textual) for I2PChat — no PyQt GUI binary"
  homepage "https://github.com/MetanoicArmor/I2PChat-ng"

  depends_on macos: :big_sur

  binary "i2pchat-tui"
  artifact "I2PChat", target: "#{HOMEBREW_PREFIX}/opt/i2pchat-tui/I2PChat"

  caveats <<~EOS
    The launcher is copied to your PATH; the PyInstaller bundle is under
    #{HOMEBREW_PREFIX}/opt/i2pchat-tui/I2PChat
    Run: i2pchat-tui [optional profile name]
  EOS
end
