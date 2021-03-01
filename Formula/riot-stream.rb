class RiotStream < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.5.3"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-stream-#{version}.zip"
    sha256 "2e5e80718da10713ffd62e654a8ab2a1353fb7aa32ba6f15e3f550bb3bba1378"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-stream"
    end
  end
