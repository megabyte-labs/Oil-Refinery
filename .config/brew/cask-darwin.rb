cask "oil-refinery" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.0"

  if Hardware::CPU.intel?
    sha256 ""
  else
    sha256 ""
  end

  url "https://github.com/ProfessorManhattan/app-oil-refinery/releases/download/v#{version}/oil-refinery-#{version}-darwin-#{arch}.zip",
      verified: "github.com/ProfessorManhattan/app-oil-refinery/"
  name "Oil Refinery"
  desc "Oil Refinery is an Angular/Ionic base project that supports every build target imaginable ⛽🔥🤤"
  homepage "https://megabyte.space"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Oil Refinery.app"
end
