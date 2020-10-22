class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.2.6"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "d7f77cf875bb0455bc6924c12bd8bab6fc6ee82b754471ec0570677f4debb897"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
