class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "v1.2.10"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v1.2.10/easy-checkout-v1.2.10-darwin-arm64"
    sha256 "e1e65392e29b284b7991ef10c84c0480b89f130b208edca8993bf80dda865382"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v1.2.10/easy-checkout-v1.2.10-darwin-amd64"
    sha256 "c7a0e05c7a4d628c8d420314e61c60e42d89b1a2d8ae3bf1a2d340ce006e2163"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-v#{version}-darwin-arm64" : "easy-checkout-v#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end