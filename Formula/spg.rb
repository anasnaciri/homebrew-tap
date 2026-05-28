class Spg < Formula
  desc "Command-line tool for initializing Spring Boot projects"
  homepage "https://github.com/anasnaciri/spg"
  url "https://github.com/anasnaciri/spg/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d1a4d4f2da47728ef1632aa38da843ba8137729bcf27584be0e79d60941aea12"
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
