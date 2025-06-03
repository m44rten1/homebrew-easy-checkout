class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "1.2.2"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-arm64"
    sha256 "11dee0e4a40c2d3726ab8d6ec26a457542cc27cb9c9a8ae03d9a038682c8b459"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-amd64"
    sha256 "971c214ce200106e23dd6c900ab4875bdf8bf1813b3a0f4eb36e67abf6b46a5c"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-v#{version}-darwin-arm64" : "easy-checkout-v#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end