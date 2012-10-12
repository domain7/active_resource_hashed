require "active_resource_hashed/version"
require 'active_resource'

module ActiveResourceHashed
	class Base < ActiveResource::Base
		class << self
			attr_accessor :hash_id
			attr_accessor :hash_key

			def element_path(id, prefix_options = {}, query_options = {})
				query_options.merge!( {hash_id: self.hash_id, hash_key: self.hash_key} )
				path = super.split(self.hash_key)[0] + self.hash_key
				new_hash_key = Digest::SHA256.hexdigest(path)
				query_options.merge!( {hash_id: self.hash_id, hash_key: new_hash_key} )
				super
			end

			def new_element_path(prefix_options = {})
				prefix_options.merge!( {hash_id: self.hash_id, hash_key: self.hash_key} )
				path = super.split(self.hash_key)[0] + self.hash_key
				new_hash_key = Digest::SHA256.hexdigest(path)
				prefix_options.merge!( {hash_id: self.hash_id, hash_key: new_hash_key} )
				super
			end

			def collection_path(prefix_options = {}, query_options = {})
				query_options.merge!( {hash_id: self.hash_id, hash_key: self.hash_key} )
				path = super.split(self.hash_key)[0] + self.hash_key
				new_hash_key = Digest::SHA256.hexdigest(path)
				query_options.merge!( {hash_id: self.hash_id, hash_key: new_hash_key} )
				super
			end
		end
	end
end
