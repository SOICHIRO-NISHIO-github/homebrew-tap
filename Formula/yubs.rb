VERSION="1.0.0"
class Yubs < Formula
desc "URL shortener via bit.ly, etc."
homepage "https://github.com/SOICHIRO-NISHIO-github/yubs"
url "https://github.com/SOICHIRO-NISHIO-github/yubs/releases/download/v#{VERSION}/yubs-#{VERSION}_darwin_amd64.tar.gz" 
version VERSION
sha256 "c015ada80570a976a28e23e54db50de665c581883e9ffa8566a1b1fbd6003788"
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
