class RiotRedis < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.8.0"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-redis-#{version}.zip"
    sha256 "8b9030c94d9560dd9e05f337f5d6429f3155ff50b578fa857696b5cb0819cdc1"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-redis"
    end
  end
