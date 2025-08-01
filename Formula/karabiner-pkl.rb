class KarabinerPkl < Formula
  desc "Configuration tool for Karabiner-Elements using Pkl"
  homepage "https://github.com/lrangell/karabiner-pkl"
  url "https://github.com/lrangell/karabiner-pkl.git",
      tag: "v0.2.0",
      revision: "e4a63e6a0ab74ce9edc3ea1a976fde5ffee01e1d"
  version "0.2.0"
  license "MIT"
  
  depends_on "rust" => :build
  depends_on "pkl"
  
  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
  
  test do
    system "#{bin}/karabiner-pkl", "--version"
  end
end
