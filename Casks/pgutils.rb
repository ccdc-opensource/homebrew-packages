cask "pgutils" do
  version "2.2.8.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "2a78377163f47f6874181d7ce12325027368bbaa7c2fc37688523409754afc01"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "c1a6228f6d2c7c22c3ef2429c28a783e33f4ed3e18dd666bf7bf5bb4d210b1a8"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
