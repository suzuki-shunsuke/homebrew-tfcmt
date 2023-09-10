# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfcmt < Formula
  desc "Fork of mercari/tfnotify. tfcmt enhances tfnotify in many ways, including Terraform >= v0.15 support and advanced formatting options
"
  homepage "https://github.com/suzuki-shunsuke/tfcmt"
  version "4.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.5.1/tfcmt_darwin_amd64.tar.gz"
      sha256 "0029f88e92b0241edc9958dd98f2526b67132f740f4b38cf5d3774d80811cf00"

      def install
        bin.install "tfcmt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.5.1/tfcmt_darwin_arm64.tar.gz"
      sha256 "3ea0159ba9ba771f24ff336102ef4b79aa1dbac1408a3109fb61a1dcce8a5021"

      def install
        bin.install "tfcmt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.5.1/tfcmt_linux_amd64.tar.gz"
      sha256 "fc113a8fd043e9280c3f1428fb5f7992db0159fd6978bdcd1d0c44b3456a5e12"

      def install
        bin.install "tfcmt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.5.1/tfcmt_linux_arm64.tar.gz"
      sha256 "ff6f2ccb73a0f962589779d97553da71cb550ce1fcb6166cf062a39f8661da12"

      def install
        bin.install "tfcmt"
      end
    end
  end

  test do
    system "#{bin}/tfcmt --version"
  end
end
