class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "1.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-arm64"
    sha256 "22c2d145c593833e98c4937f750b73540b81c8add476420de9abc16e25e2d8e3"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-amd64"
    sha256 "c687bfe72fac824247c0579dc381459cdf99b578f8f6cee7dc15f0be7dfcfbb5"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-v#{version}-darwin-arm64" : "easy-checkout-v#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end