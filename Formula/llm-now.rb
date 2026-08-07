# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.3.0/llm-now-v2.3.0-macos-arm64.zip"
      sha256 "785c381f5d60c40b1c3b43bf3c397927c8e06f8230d7ef09293990a6d8d8007e"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.3.0/llm-now-v2.3.0-macos-x64.zip"
      sha256 "69fa16611ce4fe2a051e930d1ab8924259d444645375f276d497ef99bce798bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.3.0/llm-now-v2.3.0-linux-arm64.zip"
      sha256 "1c8f03d5bc57eca740f5f55c833dde85aca63e911d6fc902a67f8e6e6ab43b4f"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v2.3.0/llm-now-v2.3.0-linux-x64.zip"
      sha256 "b009e6b0d17d3a6bff67634205e4480d72c2f072a9a0e51fc6410bf69fbcd274"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
