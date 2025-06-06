class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "v1.2.12"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v1.2.12/easy-checkout-v1.2.12-darwin-arm64"
    sha256 "2fcd961c64afe0953210862e148360ea573810101929e95877f15e0d58b8ef15"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v1.2.12/easy-checkout-v1.2.12-darwin-amd64"
    sha256 "556a008e7b9920f42e98547b8d1654496bee280ff487c96a1ef64067da71d136"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-#{version}-darwin-arm64" : "easy-checkout-#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end