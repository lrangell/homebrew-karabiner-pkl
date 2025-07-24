class KarabinerPkl < Formula
  desc "Configuration tool for Karabiner-Elements using Pkl"
  homepage "https://github.com/lrangell/karabiner-pkl"
  url "https://github.com/lrangell/karabiner-pkl.git",
      tag: "null",
      revision: "ed156c4738c0e01dbdfba7f20df3356b5dd4f28a"
  version "null"
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
