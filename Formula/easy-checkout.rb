class EasyCheckout < Formula
  desc "CLI tool for managing git branches and checkouts"
  homepage "https://github.com/m44rten1/easy-checkout"
  version "1.2.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-arm64"
    sha256 "e7d07428c3482109368c7696a7e4f3eb2a3c696c1e170f53219bba7252db6ebc"
  else
    url "https://github.com/m44rten1/easy-checkout/releases/download/v#{version}/easy-checkout-v#{version}-darwin-amd64"
    sha256 "59dcb9b3822f5c337e9da178405105c446e41b0319b21a5b30b8786987f4e6c7"
  end

  def install
    binary_name = Hardware::CPU.arm? ? "easy-checkout-v#{version}-darwin-arm64" : "easy-checkout-v#{version}-darwin-amd64"
    bin.install binary_name => "easy-checkout"
  end

  test do
    system "#{bin}/easy-checkout", "--version"
  end
end