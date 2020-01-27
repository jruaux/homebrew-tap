class Riot < Formula
    desc "Redis Input/Output Tool"
    homepage "https://github.com/Redislabs-Solution-Architects/riot"
    version "1.6.4"
    url "https://github.com/Redislabs-Solution-Architects/riot/releases/download/#{version}/riot-#{version}.tgz"
    sha256 "ec4c8beffacecf2c0fa19f506d82f4e93761aa0c0363716d92b3154762acf277"
  
    depends_on :java
  
    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/riot"
      mkdir prefix/"bash"
  
      system "#{bin}/riot generate-completion > #{prefix}/bash/completion.bash"
      bash_completion.install "#{prefix}/bash/completion.bash" => "riot"
  
      system "#{bin}/riot generate-completion > #{prefix}/bash/completion.zsh"
      zsh_completion.install "#{prefix}/bash/completion.zsh" => "_riot"
    end
  end
