class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.4.1"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "5ed8fc55c9e81efb85b9775d8e2adc352b7d7cffd130ef3f14fe8bc6f5b58804"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
