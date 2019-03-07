require "topological_inventory/mock_source/openshift/entity"

module TopologicalInventory
  module MockSource
    module Openshift
      class Entity::Template < Entity
        attr_reader :namespace

        def initialize(_id, _entity_type)
          super
          @namespace = link_to(:namespaces, :ref => :name)
        end
      end
    end
  end
end