class RiotStream < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.8.0"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-stream-#{version}.zip"
    sha256 "e441f59f7659493bd1b4421f68e489e79459336d828785d34787239ff7771aa0"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-stream"
    end
  end
