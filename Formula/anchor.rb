# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anchor < Formula
  desc ""
  homepage "https://anchor.dev/"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.7/anchor_Darwin_arm64.tar.gz"
      sha256 "9db50c3f7a1164c00aeb43603c5cc0655688dc71a992580ad68c0c8cf6980f93"

      def install
        bin.install "anchor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.7/anchor_Darwin_x86_64.tar.gz"
      sha256 "d76b6879790571ba95ca031151c9c56a39e1f793e7ba2ebcb3c4a75b60761e21"

      def install
        bin.install "anchor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.7/anchor_Linux_arm64.tar.gz"
      sha256 "55afe7fbab8a192821ced95d236ed3c2181ff8aa106a2d4a68ffc3faf6c31231"

      def install
        bin.install "anchor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.7/anchor_Linux_x86_64.tar.gz"
      sha256 "5ef6daf51a8772877b5e35be1710b3c3bc064650a416f9cdf9db6fc8931be1f2"

      def install
        bin.install "anchor"
      end
    end
  end

  test do
    assert_match "anchor is a command line interface for the Anchor certificate management platform.",
                 shell_output("#{bin}/anchor")
  end
end
