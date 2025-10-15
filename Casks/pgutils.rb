cask "pgutils" do
  version "2.1.14.1"
  sha256 "9a830eaf3cd079dedd262b25e13949281c910d5475ed267f0765cb15b5b0daf0"

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
