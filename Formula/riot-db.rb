class RiotDb < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.5.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-db-#{version}.zip"
    sha256 "3138804bddf835718eb8f8ce14b9b7056799a79b427445c80585a41cbc262aa8"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-db"
    end
  end
