# typed: false
# frozen_string_literal: true

class LlmNow < Formula
  desc "Make one text-generation call through an available LLM provider"
  homepage "https://github.com/swartzrock/llm-now"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/swartzrock/llm-now/releases/download/v0.1.0/llm-now-v0.1.0-macos-arm64.zip"
      sha256 "0cd234637c747071b665fb63d4cd1841904dbd0a66bc799696633aedde14871f"
    end

    on_intel do
      url "https://github.com/swartzrock/llm-now/releases/download/v0.1.0/llm-now-v0.1.0-macos-x64.zip"
      sha256 "d1db4944ad240550dc00554a92560a867f0fdf367504176da12bf3edfa71de58"
    end
  end

  def install
    bin.install "llm-now"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llm-now --version")
  end
end
