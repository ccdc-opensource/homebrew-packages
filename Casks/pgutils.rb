cask "pgutils" do
  version "2.4.2.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "8469e204daa5104c07a582c160c13de1247982f4aff9af9f9f4a8d51d5581448"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "9e34095c3dcd58512e9f66e2989ccdf1a8ce22f5abae5c899ccb301ffc9c4ce6"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
