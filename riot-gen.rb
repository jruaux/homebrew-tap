class RiotGen < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.3.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-gen-#{version}.zip"
    sha256 "7580bdff59024a0d89f773c3fd37469892659a545c6f58c3b32f70bdc1bab3f2"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-gen"
    end
  end
