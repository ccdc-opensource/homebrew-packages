cask "pgutils" do
  version "2.4.3.3"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "d69deb2216a8c8423614bd62e61add3b390854d9008adcc03ed4af705c7754b9"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "a2351d643f9174d6a8f894e45a2fda6283ab6f95866392f9acc9d0aed01bd398"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
