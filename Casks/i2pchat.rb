cask "i2pchat" do
  version "1.7.1"

  on_arm do
    sha256 "dbbd8dedfdd4327e4b1752f6bc8e7dbc38908259a98d5ef5599d009f5656478d"

    url "https://github.com/MetanoicArmor/I2PChat-ng/releases/download/v#{version}/I2PChat-macOS-arm64-v#{version}.zip"

    # build-macos.sh packs with `ditto --keepParent` → zip root is I2PChat-macOS-*-bundle/
    app "I2PChat-macOS-arm64-bundle/I2PChat.app"
  end
  on_intel do
    sha256 "7d2aabcde1985e31f3f51827e02902a68301c4dd2c05bf06f100523195fa5c46"

    url "https://github.com/MetanoicArmor/I2PChat-ng/releases/download/v#{version}/I2PChat-macOS-x64-v#{version}.zip"

    app "I2PChat-macOS-x64-bundle/I2PChat.app"
  end

  name "I2PChat"
  desc "Experimental peer-to-peer chat client for the I2P network"
  homepage "https://github.com/MetanoicArmor/I2PChat-ng"

  depends_on macos: :big_sur

  caveats <<~EOS
    Textual TUI only: install the separate cask `i2pchat-tui`, or use I2PChat.app/Contents/MacOS/I2PChat-tui inside this bundle.
  EOS
end
