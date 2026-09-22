class Mqvpn < Formula
  desc "Multipath VPN using MASQUE CONNECT-IP (RFC 9484) and Multipath QUIC"
  homepage "https://github.com/mp0rta/mqvpn"
  version "0.16.3"
  url "https://github.com/mp0rta/mqvpn/releases/download/v#{version}/mqvpn_#{version}_darwin_arm64.tar.gz"
  sha256 "9366bf9e49e7f3154bf9a6dba1c459b4a79e0cc4aa749153f5f38f6b8e08639b"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  def install
    bin.install "mqvpn"
    doc.install "README.txt", "client.conf.example"
    prefix.install "LICENSE", "NOTICE", "third-party"
  end

  def caveats
    <<~EOS
      mqvpn needs root to create the utun interface:
        sudo mqvpn --mode client --server HOST:443 --auth-key KEY

      An example client config is installed at:
        #{doc}/client.conf.example
    EOS
  end

  test do
    assert_match "mqvpn #{version}", shell_output("#{bin}/mqvpn --version")
  end
end
