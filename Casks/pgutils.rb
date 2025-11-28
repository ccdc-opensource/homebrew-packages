cask "pgutils" do
  version "2.2.0.3"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "c84ad4248b89e6d8e2def87626ac5039a74258d24b01e7540f73d45e0fe2c05a"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "7ff5acf6c8b1c708c0fc84be77fe6e82fbc540a8b4ea42d60d532a98530b7294"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
