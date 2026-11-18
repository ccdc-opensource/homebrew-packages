cask "pgutils" do
  version "2.4.6.2"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "de0d7ac1c9ba9cf8a771f19f280767d5aa43e37af1f8ac1d2d4298f184fa96a3"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "6e269c3cbac20080978313d47f3b824f62210a0860e7e010833e24469d16aae8"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
