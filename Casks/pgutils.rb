cask "pgutils" do
  version "2.2.0.3"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "f43c5908e1d6b50723ccf92ec24fcd89a567fdc016198224d9e51bc2c6e39bc7"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "6e84db6fc249428635e935cfc0c69232defacfd5a87e664749efc56f51eef14d"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
