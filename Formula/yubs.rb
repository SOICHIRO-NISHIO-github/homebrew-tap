VERSION="1.0.0"
class Yubs < Formula
desc "URL shortener via bit.ly, etc."
homepage "https://github.com/SOICHIRO-NISHIO-github/yubs"
url "https://github.com/SOICHIRO-NISHIO-github/yubs/archive/refs/tags/v1.0.0.tar.gz" 
version VERSION
sha256 "e2c322f66226651641cd8dc207d2de9fdedb224a5909e3a501e6e9464d34c8f6"
license "MIT"
option "without-completions", "Disable bash completions"
depends_on "bash-completion@2" => :optional
def install
    bin.install "yubs"
    bash_completion.install "completions/bash/yubs" if build.with? "completions" 
end
  test do
    system bin/"yubs", "--version"
  end
end
