class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "v1.2.11"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v1.2.11/easy-checkout-v1.2.11-darwin-arm64"
    sha256 "a069a9f36650f6303b1842c656c3af028377d70494dcd4b6c1006850d6a1a9e7"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v1.2.11/easy-checkout-v1.2.11-darwin-amd64"
    sha256 "5565028df97048b8cf543a34725607d30a2eac509b4e2ebb48b3f03e437c2abd"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-#{version}-darwin-arm64" : "easy-checkout-#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end