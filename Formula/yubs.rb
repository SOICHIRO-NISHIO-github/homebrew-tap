VERSION="1.0.0"
class yubs < Formula
desc "URL shortener via bit.ly, etc."
homepage "https://github.com/SOICHIRO-NISHIO-github/yubs"
url "https://github.com/SOICHIRO-NISHIO-github/yubs/releases/download/v#{VERSION}/yubs-#{VERSION}_darwin_amd64.tar.gz" version VERSION
sha256 "308046086a8531f162b3096002951adb629c55a6c99e7d335f7f60732ff93a67"
license ”MIT"
option "without-completions", "Disable bash completions"
depends_on "bash-completion@2" => :optional
def install
    bin.install ”yubs"
bash_completion.install "completions/bash/yubs" if build.with? "completions" end
  test do
    system bin/”yubs", "--version"
end end