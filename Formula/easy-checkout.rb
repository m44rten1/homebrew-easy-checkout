class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "1.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-arm64"
    sha256 "22d8612d9aeb97bde40168d8112cca5cfabf581978dd07f70248a3070eee6b19"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-amd64"
    sha256 "f305579691bfee98a004e9bc6399a649acfe155f006b61b7e2a2c993699c2231"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-v#{version}-darwin-arm64" : "easy-checkout-v#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end