# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anchor < Formula
  desc "Command-line tools for Anchor.dev"
  homepage "https://anchor.dev/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/anchordotdev/cli/releases/download/v0.1.0/anchor_MacOS_x86_64.zip"
      sha256 "1e150eecb209d21e6b3f5246c2034c52cd4321042d732e7e9ef28253003636e6"

      def install
        bin.install "anchor"
      end
    end
    on_arm do
      url "https://github.com/anchordotdev/cli/releases/download/v0.1.0/anchor_MacOS_arm64.zip"
      sha256 "c6dbc14c9abc414db6457022581f5f6a3205643cfeb4d48ea9025c65719d95b9"

      def install
        bin.install "anchor"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchordotdev/cli/releases/download/v0.1.0/anchor_Linux_x86_64.tar.gz"
        sha256 "20b4b69aeb6bed1d9cbd985b6684cef0f23030a0946c45dd1b1ebb55df173c1a"

        def install
          bin.install "anchor"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/anchordotdev/cli/releases/download/v0.1.0/anchor_Linux_arm64.tar.gz"
        sha256 "6ed952aceec83bc62b69c47e70d31159efec9b051221f5b3fe7d693813dda6f5"

        def install
          bin.install "anchor"
        end
      end
    end
  end

  test do
    assert_match "anchor is a command line interface for the Anchor certificate management platform.", shell_output("#{bin}/anchor")
  end
end
