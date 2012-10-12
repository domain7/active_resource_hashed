Active Resource Hashed
======================

Gem extends active resource to consume [devise_hash_token_authenticatble](https://github.com/domain7/devise_hash_token_authenticatable) services.  Devise Hash Token Authenticatable is a Token based authentication strategy for the [Devise](http://github.com/plataformatec/devise).

Working example:
---------------

Suppose I have an api at https://mypim.com/api/v1/contacts that exposes restful services using devise_hash_token_autheticatable.  I have a user account with and id=57 and hash key of: 3c5abf29fafe6e528f88391f034f013gggg17b38acf49b9cc43f28f09d8101f2

First I create the following model to consume my service


    #app/models/contact.rb
    class Contact < ActiveResourceHashed
      self.site = 'https://mypim.com/api/v1/'
      self.hash_id = 57
      self.hash_key = '3c5abf29fafe6e528f88391f034f013gggg17b38acf49b9cc43f28f09d8101f2'
      self.element_name = "contact"
    
      def self.search(q = nil)
        self.find(:all, {params:{q:"#{search_phrase}"}})
      end
    end

Then I can consume the service as I would using active resource. For example:

    contact_8899 =  Contact.find(8899)
    contact_8899.id  # 8899
    contact_8899.full_name  # John Smith

    johns = Contact.search('John')
    johns.first.full_name   # John Smith
    johns.last.full_name    # Sally Smith


Prerequisites
-------------
 * service running devise_hash_token_authenticatable
 * active_resource

Usage
-----
Add this line to your application's Gemfile:

    gem 'active_resource_hashed'

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


References
----------
* [devise_hash_token_authenticatble](https://github.com/domain7/devise_hash_token_authenticatable) 
* [Devise](http://github.com/plataformatec/devise)
* [Warden](http://github.com/hassox/warden)
* [ActiveResource](https://github.com/rails/activeresource)

Released under the MIT license

Copyright (c) 2012 [Domain7](http://www.domain7.com)
