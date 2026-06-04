cask "pgutils" do
  version "2.3.0.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "787ff509b7b9214d8ebce0dc05625828f2155f38ce21e41067af373164439b90"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "f441e2f2f2ed3cc40e61c8a8169701aad6dc0dfccc2d0b6fea7b32e7c9cb2e88"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
