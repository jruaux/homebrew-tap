class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.8.0"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "a44247066405953c9b36b0ce4fb151fafe0036de62a930e474ed4b390295a2a0"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
