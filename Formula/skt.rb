# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Skt < Formula
  desc "SaaSKit CLI tool for various helpful commands"
  homepage "https://github.com/saltandpepperstudios/saaskitcli"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.9.0/saaskitcli_Darwin_x86_64.tar.gz"
      sha256 "27ae7aa4cc2511eb4659bc11879bc22dc6636e0f3db96bc234783f768eba4b38"

      def install
        bin.install "skt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.9.0/saaskitcli_Darwin_arm64.tar.gz"
      sha256 "0085d3ee4dbbf49d47d56aad9593fcf812a92dadd4f1f60bed6d7e5cb8d39ea4"

      def install
        bin.install "skt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.9.0/saaskitcli_Linux_x86_64.tar.gz"
        sha256 "c21aed979e128a5bf0a60edb65a6ff58b19d063c42375b3b07b78489369f9a23"

        def install
          bin.install "skt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/saltandpepperstudios/saaskitcli/releases/download/v0.9.0/saaskitcli_Linux_arm64.tar.gz"
        sha256 "3c72a7bf28d35643616f993d8aa03f9bca0d075dfab6754819cec26a92897fd8"

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
