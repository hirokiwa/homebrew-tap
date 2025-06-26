class Hzplayer < Formula
  include Language::Python::Virtualenv

  desc "Plays infinite sine tone (default 40Hz) for focus or relaxation"
  homepage "https://github.com/hirokiwa/hzplayer"
  url "https://github.com/hirokiwa/hzplayer/releases/download/v0.1.0/hzplayer-0.1.0.tar.gz"
  sha256 "c35d335d8c77a9ce7d5eeb3aabb4ebe573731369d4b61331b49c6a65c9bc9a87"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
    bin.install "bin/hzplayer"
  end

  test do
    assert_match "Playing", shell_output("#{bin}/hzplayer 1000", 1)
  end
end
