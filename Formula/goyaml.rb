# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./download_strategies/custom_download_strategy"
class Goyaml < Formula
  desc "Utility for performing simple operations on a YAML file."
  homepage "https://github.com/theochva/goyaml"
  version "0.3.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/theochva/goyaml/releases/download/v0.3.0/goyaml_0.3.0_darwin_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "548c75a06a3601ad2fd96373508156857cc74928fef413b44af7de7f02962fba"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/theochva/goyaml/releases/download/v0.3.0/goyaml_0.3.0_linux_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e7ebb256006e03701053937e2c4b296bfd7213be6a47bf0dbdd6ceeee6a7cbba"
  end

  def install
    bin.install "goyaml"
  end

  test do
    system "#{bin}/goyaml --version"
  end
end
