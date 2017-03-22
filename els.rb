class Els < Formula
  desc "List ec2 instances."
  homepage "https://github.com/ringohub/els"
  url "https://github.com/ringohub/els/releases/download/v0.2.3/els_darwin-amd64.zip"
  version "0.2.3"
  sha256 "4d0dc5b0e5b35d839e5d6e9f98c91b70e94235ea805eff7416732e55f4bcf38b"

  def install
    bin.install "els"
  end

  test do
    system "#{bin}/els", "-v"
  end
end
