cask "pgutils" do
  version "2.4.0.2"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "e87270c24b0b9f1f07b30229dcb876a355d6a5f20846bf58d762bae357822809"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "ccbb4128285c6b35f424bcbf5fa5ba40a74a6ad12cff3e463150536abc2443f3"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
