cask "pgutils" do
  version "2.1.14.1"
  sha256 "f43c5908e1d6b50723ccf92ec24fcd89a567fdc016198224d9e51bc2c6e39bc7"

  url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  depends_on arch: :arm64

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
