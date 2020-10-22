class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.2.6"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "dc4f3bb8d3428c9cdf328c66a66eb55f6ba58020bb4413e7f087d64d8da9b9a6"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
