class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.5.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "a90e9e0d066bb1b1840e1bd0c4c23712c4abb5b0a3ebf3fb0366818e0ba04d31"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
