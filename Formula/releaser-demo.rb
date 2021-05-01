class ReleaserDemo < Formula
  desc "Releaser Demo Application"
  homepage "https://redislabs.com/releaser-demo"
  version "0.0.2"
  url "https://github.com/jruaux/releaser-demo/releases/download/v0.0.2/releaser-demo-0.0.2.zip"
  sha256 "64b19cc203193fdfa23ae7635e1cc25ea7d1c2602154bbac23d822f0559765fe"
  license "Apache-2.0"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/releaser-demo"
  end

  test do
    output = shell_output("#{bin}/releaser-demo --version")
    assert_match "0.0.2", output
  end
end