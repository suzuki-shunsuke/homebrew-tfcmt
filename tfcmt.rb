# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfcmt < Formula
  desc "Fork of mercari/tfnotify. tfcmt enhances tfnotify in many ways, including Terraform >= v0.15 support and advanced formatting options
"
  homepage "https://github.com/suzuki-shunsuke/tfcmt"
  version "4.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.4.1/tfcmt_darwin_arm64.tar.gz"
      sha256 "13a9e258419326d907f632f6e262e88ecf09d7f59e9b2449a481dd7136506ede"

      def install
        bin.install "tfcmt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.4.1/tfcmt_darwin_amd64.tar.gz"
      sha256 "f5dea41c5f3ca8435499800dabccc8e831911b723f4b6ab0e8787efe4281097d"

      def install
        bin.install "tfcmt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.4.1/tfcmt_linux_arm64.tar.gz"
      sha256 "ea2f7f88ff6642022230daf088494915fe685356639bae4f8a0ce6a8b372c5e1"

      def install
        bin.install "tfcmt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.4.1/tfcmt_linux_amd64.tar.gz"
      sha256 "85d643f61b06d2a453d7e7762d64734b70291bffbaf49ea1b59dfbb620997f35"

      def install
        bin.install "tfcmt"
      end
    end
  end

  test do
    system "#{bin}/tfcmt --version"
  end
end
