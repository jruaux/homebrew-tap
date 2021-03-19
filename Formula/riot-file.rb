class RiotFile < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.8.0"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-file-#{version}.zip"
    sha256 "d97e67b95a8c0422b26e0e28a9cf8ba64bd24bd2ae7ea1ef752d9effc1e0180b"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-file"
    end
  end
