class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.2.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "6e02002a61993a2b11731c8bee1a564c09259fa0f8703ea4a04f69142aa5335d"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
