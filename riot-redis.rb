class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "2.0.2"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/v#{version}/riot-redis-#{version}.tgz"
    sha256 "e8144f4fcf2184ecf7a7f03c382e2c0ca8865283c994e361ffbed8a494693f4a"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
