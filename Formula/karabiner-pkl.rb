class KarabinerPkl < Formula
  desc "Configuration tool for Karabiner-Elements using Pkl"
  homepage "https://github.com/lrangell/karabiner-pkl"
  url "https://github.com/lrangell/karabiner-pkl.git",
      tag: "null",
      revision: "dd85db6b85b93dfd2a7a88e336cbb5184480dd7c"
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
