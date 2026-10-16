cask "pgutils" do
  version "2.4.4.6"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "a3be503cdaa007c781995dc20ba3d4b01b389212bf5432b3071b760929c0fa14"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "b48d6b561527a7553b21164110d4a140d01c637d8963e81b51b4dcca3d63c0fa"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
