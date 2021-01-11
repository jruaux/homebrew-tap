class RiotStream < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/redis-developer/riot"
    version "2.4.1"
    url "https://github.com/redis-developer/riot/releases/download/v#{version}/riot-stream-#{version}.zip"
    sha256 "0321c284b4b44111970a5b236f2e3021653f1beccc4d8a670c43494a1fada6f4"
  
    depends_on "openjdk@8"
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot-stream"
    end
  end
