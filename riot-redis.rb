class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.3.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "7c6064a7081653d7202e49789123a3e553aa297faada133c005f19f5727cf5ea"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
