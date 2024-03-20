# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Anchor < Formula
  desc "Command-line tools for Anchor.dev"
  homepage "https://anchor.dev/"
  version "0.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.17/anchor_Darwin_arm64.tar.gz"
      sha256 "a446bfc31199451388b4affd23a6017e1c16eb2b8a39ab6ec06ccd6691a91697"

      def install
        bin.install "anchor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.17/anchor_Darwin_x86_64.tar.gz"
      sha256 "dd18e6c572b319360975647df35afd8570a4b2d9111de59b7bc048b0d3a802c5"

      def install
        bin.install "anchor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.17/anchor_Linux_arm64.tar.gz"
      sha256 "80550293603ee86e0b83db597d6028c0c00af4c472955497a567a5764c2cd9e4"

      def install
        bin.install "anchor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/anchordotdev/cli/releases/download/v0.0.17/anchor_Linux_x86_64.tar.gz"
      sha256 "c9a38288dd6b687b1966e313bd946768a9145aa73fc172ef03cb708d9da04225"

      def install
        bin.install "anchor"
      end
    end
  end

  test do
    assert_match "anchor is a command line interface for the Anchor certificate management platform.", shell_output("#{bin}/anchor")
  end
end
