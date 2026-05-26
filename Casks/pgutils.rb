cask "pgutils" do
  version "2.2.10.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "57f7e57c39dfde5e8dec96c485c1097dd66b43d24b965629d38ad384f9082117"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "a4f7720ff790b2399f23037e396f106e4b91f47a476be1158ecfe8f1d3e27d9d"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
