# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skt < Formula
  desc "SaaSKit CLI tool for various helpful commands"
  homepage "https://github.com/saltandpepperstudios/saaskitcli"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.11.0/saaskitcli_Darwin_x86_64.tar.gz"
      sha256 "cc4513bf4b887cf45a5fa88cdb1b675be3cf9e954c084558cc1a07574372baa7"

      def install
        bin.install "skt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.11.0/saaskitcli_Darwin_arm64.tar.gz"
      sha256 "79da4f7051894631a72b8c72af0ec8b33523a02815427d71831983b2d1e2dae3"

      def install
        bin.install "skt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.11.0/saaskitcli_Linux_x86_64.tar.gz"
        sha256 "921875362449bf53a5d89e99421dcf25b35622a27e11879271c10cc80085a9d2"

        def install
          bin.install "skt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.11.0/saaskitcli_Linux_arm64.tar.gz"
        sha256 "9fba7b097cc0948149dffe5cd192db8d42985f0e737dc801f0624bdfdf935663"

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
