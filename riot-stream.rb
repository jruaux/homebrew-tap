class RiotStream < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.3.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-stream-#{version}.zip"
    sha256 "6844371499ec44ac855bf92c8502c0b35cb049cb51135dfabfc1733f2f70640a"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-stream"
    end
  end
