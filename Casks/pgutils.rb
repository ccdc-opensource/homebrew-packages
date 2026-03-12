cask "pgutils" do
  version "2.2.6.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "fdcd5d4539c66d9dfa466568dafe97fd4e1161689685b2a1103a2dea76269c2f"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "7da488ed4cbbb1c8b04d661459142b214aefa9e97d181c6ec38d6a9bc38412e8"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
