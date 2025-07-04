class Hzplayer < Formula
  desc "Plays infinite sine tone (default 40Hz) for focus or relaxation"
  homepage "https://github.com/hirokiwa/hzplayer"
  url "https://github.com/hirokiwa/hzplayer/releases/download/v0.1.0/hzplayer-0.1.0.tar.gz"
  sha256 "cd88045c77bd70cb756d1ca2b060fc0d90b0f92d56b823fc17ed06b08ba5fff1"
  license "MIT"

  def install
    bin.install "hzplayer-bin/hzplayer"
  end

  def caveats
    <<~EOS
      🎉 'hzplayer' has been installed.

      👉 If 'hzplayer' is not found in your terminal, you may need to add it to your PATH.

      🛠️ Add the following to your shell profile:

          export PATH="#{opt_bin}:$PATH"

      🔁 Then restart your terminal or run:

          source ~/.zshrc    # or ~/.bashrc etc.

      Now you can run 'hzplayer'

      🧭 Basic usage: run:

          hzplayer

            → Plays a continuous 40 Hz sine wave.

      🎛️ Optional usage (specify frequency): run:

          hzplayer 261.63

            → Plays a continuous 261.63 Hz sine wave.

      🎧 Use headphones for best sound quality.
      
      😎 Enjoy your focused listening!
    EOS
  end

  test do
    assert_match "Playing", shell_output("#{bin}/hzplayer 1000", 1)
  end
end
