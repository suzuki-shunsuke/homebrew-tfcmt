# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfcmt < Formula
  desc "Fork of mercari/tfnotify. tfcmt enhances tfnotify in many ways, including Terraform >= v0.15 support and advanced formatting options
"
  homepage "https://github.com/suzuki-shunsuke/tfcmt"
  version "4.14.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.14.5/tfcmt_darwin_amd64.tar.gz"
      sha256 "65f7376fcdda133bf684f8086bace480c3ca710cf972a2b139d8a011b20886e1"

      def install
        bin.install "tfcmt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.14.5/tfcmt_darwin_arm64.tar.gz"
      sha256 "cc444430f9575e36c050960a29e84a8e5cbb16e6b3b35641f5d8cbc13ae03871"

      def install
        bin.install "tfcmt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.14.5/tfcmt_linux_amd64.tar.gz"
        sha256 "689062c1b82b826c0275df1a16f0e5167cb5fe8b9a5b296500958b00180ab551"

        def install
          bin.install "tfcmt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.14.5/tfcmt_linux_arm64.tar.gz"
        sha256 "0bf32c9f706e8dc008c2d79d94aa24f02e5cbcfc1bbde8572830d02bae807f26"

        def install
          bin.install "tfcmt"
        end
      end
    end
  end

  test do
    system "#{bin}/tfcmt --version"
  end
end
