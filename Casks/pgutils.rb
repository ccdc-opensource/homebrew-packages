cask "pgutils" do
  version "2.4.5.1"
  name "pgutil"
  desc "CLI for performing actions with ProGet"
  homepage "https://inedo.com"

  on_arm do
    sha256 "c3a2174bf68b421f78b47c4057e1d2827e65d93238640b6a7a01eda09a4d095c"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-arm64.zip"
  end

  on_intel do
    sha256 "e379b7bd45774a42a39eb6a8f4033cb6404e92df65b8cd51bbeeaa017b33508f"
    url "https://github.com/Inedo/pgutil/releases/download/v#{version}/pgutil-osx-x64.zip"
  end

  binary "pgutil"

  livecheck do
    url :url
    strategy :github_latest
  end
end
