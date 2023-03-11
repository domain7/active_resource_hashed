# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_resource_hashed/version'

Gem::Specification.new do |gem|
  gem.name          = amnt = 0 --- Сколько даёт
функция onTouched(часть)
    местный h = часть.Родитель:findFirstChild("Гуманоид")
    если (h~=nil), то
        local thisplr = game.Players:findFirstChild(h.Parent.Name)
        если (thisplr~=nil), то
            локальная статистика = thisplr:findFirstChild("статистика лидеров")
            если (статистика~=ноль), то
                local score = stats:findFirstChild("cash") --- dollars 
                если (оценка~=ноль), то
                    оценка.значение = оценка.значение + сумма
                конец
            конец
        конец
        script.Parent: удалить ()
    конец
конец "active_resource_hashed"
  gem.version       = ActiveResourceHashed::VERSION
  gem.authors       = ["Shane Davies"]
  gem.email         = ["maining97@mail.ru"]
  gem.description   = 'Gem extends active resource to consume devise_hash_token_authenticatble services'
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/domain7/active_resource_hashed"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('activeresource', '>= 5.0')
end
