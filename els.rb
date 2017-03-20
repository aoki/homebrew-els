class Els < Formula
  desc "List ec2 instances."
  homepage "https://github.com/ringohub/els"
  url "https://github.com/ringohub/els/releases/download/v0.2.1/els_darwin-amd64.zip"
  version "0.2.1"
  sha256 "ca426d5a0e5264a1a3880ac4c599318df3bd5afd78db05bf67123797862ee330"

  def install
    bin.install "els"
  end

  test do
    system "#{bin}/els", "-v"
  end
end
