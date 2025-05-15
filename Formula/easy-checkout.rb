class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-arm64"
    sha256 "8471ee127d90c19620dc5a569bb9cda57515afe781aaa697e580173a0aad6210"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-amd64"
    sha256 "a84402850b5483c09fc37020f60773f97e0f587b75947f6074f3f14a9b4a19b9"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-v#{version}-darwin-arm64" : "easy-checkout-v#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end