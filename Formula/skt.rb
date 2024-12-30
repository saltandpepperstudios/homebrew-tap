# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skt < Formula
  desc "SaaSKit CLI tool for various helpful commands"
  homepage "https://github.com/saltandpepperstudios/saaskitcli"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.10.0/saaskitcli_Darwin_x86_64.tar.gz"
      sha256 "7f1b4a34cd545a9f2266aac6119f0a0294e88fe48aa17cc7fbae988cbc2d8e1b"

      def install
        bin.install "skt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.10.0/saaskitcli_Darwin_arm64.tar.gz"
      sha256 "046ebb12bd96555c24b86c494de0caa61d79685e7cab736ee2eac2a9f6d954b9"

      def install
        bin.install "skt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.10.0/saaskitcli_Linux_x86_64.tar.gz"
        sha256 "467b61ad35f2b7e02f7b33d96c203ecf0fa9a1484f6e552fd0d16e01ee2e5c31"

        def install
          bin.install "skt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.10.0/saaskitcli_Linux_arm64.tar.gz"
        sha256 "3fd3b465d031947831d0695de009ca8b7e53d5ff5c31957df89019faff9e5793"

        def install
          bin.install "skt"
        end
      end
    end
  end

  test do
    system "#{bin}/skt --version"
  end
end
