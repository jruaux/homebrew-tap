class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.8.0"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "2d4e4c4eb1a966ecfc7008d64450e58462bf0f89253ef60eb49626fa41422d95"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
