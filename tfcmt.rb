# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfcmt < Formula
  desc "Fork of mercari/tfnotify. tfcmt enhances tfnotify in many ways, including Terraform >= v0.15 support and advanced formatting options
"
  homepage "https://github.com/suzuki-shunsuke/tfcmt"
  version "4.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.10.0/tfcmt_darwin_amd64.tar.gz"
      sha256 "8f1cd899a63775a1bf54a2ce9510678d41851d45e8d175238c52452aeaefa378"

      def install
        bin.install "tfcmt"
      end
    end
    on_arm do
      url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.10.0/tfcmt_darwin_arm64.tar.gz"
      sha256 "4fc2ec96ce00fec070f171afc6a291689aa0970a21bfcbae1dc7967aa0d255a2"

      def install
        bin.install "tfcmt"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.10.0/tfcmt_linux_amd64.tar.gz"
        sha256 "789aca77441403fadc9b5b81fbd17e38fab12fd1196d4999d58ee11faaac8bdb"

        def install
          bin.install "tfcmt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/suzuki-shunsuke/tfcmt/releases/download/v4.10.0/tfcmt_linux_arm64.tar.gz"
        sha256 "25686c4bc00045a83980198971e1d7428c1a039fe176d4a9f4a1dbd39ec479fe"

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
