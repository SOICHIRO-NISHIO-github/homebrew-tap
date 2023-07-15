VERSION="0.1.16"
class Yubs < Formula
desc "URL shortener via bit.ly, etc."
homepage "https://github.com/SOICHIRO-NISHIO-github/yubs"
url "https://github.com/SOICHIRO-NISHIO-github/yubs/releases/download/v0.1.16/yubs-0.1.16_darwin_amd64.tar.gz" 
version VERSION
sha256 "9cf9b38cc53b085735905c17db0b39a91bd6e3de527962e670b0b5cf5f2aeac1"
license "MIT"
option "without-completions", "Disable bash completions"
depends_on "bash-completion@2" => :optional
def install
    bin.install "yubs"
    #bashの場合は、コメントアウトをはずし、zshをコメントアウトしてください。
    #bash_completion.install "completions/bash/yubs" if build.with? "completions"
    zsh_completion.install "completions/zsh/yubs" if build.with? "completions"
end
  test do
    system bin/"yubs", "--version"
  end
end
