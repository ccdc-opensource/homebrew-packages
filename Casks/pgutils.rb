cask "pgutils" do
  version "2.4.1.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "2d4208a867b37c29d3393f648c9e5a5356a3f233bff7c2acc824c5b01d8ddff4"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "98e1c46733d3a28919bd001a95c61f2823f8f1a0dc3d48b0ddee76afb24d8ae8"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
