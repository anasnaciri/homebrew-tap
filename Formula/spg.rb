class Spg < Formula
  desc "Command-line tool for initializing Spring Boot projects"
  homepage "https://github.com/anasnaciri/spg"
  url "https://github.com/anasnaciri/spg/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0fdf92abdfb80c8a91ccae68838cb3928ae50e0636c647fb42939fed490b1581"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/anasnaciri/spg.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spg --version")
  end
end
