class Els < Formula
  desc "List ec2 instances."
  homepage "https://github.com/ringohub/els"
  url "https://github.com/ringohub/els/releases/download/v0.2.2/els_darwin-amd64.zip"
  version "0.2.2"
  sha256 "9fe6c8094b45e807e7e2862268b11a144bc73648fb9e508f7e9063a6d14e56ee"

  def install
    bin.install "els"
  end

  test do
    system "#{bin}/els", "-v"
  end
end
