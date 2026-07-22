# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v1.0.0/llm-now-v1.0.0-macos-arm64.zip"
      sha256 "0e591f0777160bca3bad477859b78567351f7bcaed335ef7766cb9dc4ca0f75b"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v1.0.0/llm-now-v1.0.0-macos-x64.zip"
      sha256 "7aa7dd71acf31a0d9f88a941afce6b8e883a64b8c51e45570932c1b392dc468b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v1.0.0/llm-now-v1.0.0-linux-arm64.zip"
      sha256 "cf833e228c07efa796c87cd8e6d44a52031c332a545d31a22cb692dfd0fe381a"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v1.0.0/llm-now-v1.0.0-linux-x64.zip"
      sha256 "8467896378fa7419aaf38a80ea83a5ca6e6819c8ca4af4751700fd1cbb21a929"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
