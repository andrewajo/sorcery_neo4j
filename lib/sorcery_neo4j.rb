require "sorcery_neo4j/version"

module SorceryNeo4j
  if defined?(Neo4j)
    require 'sorcery_neo4j/adapter'

    Neo4j::ActiveNode::ClassMethods.send :include, Sorcery::Model

    Neo4j::ActiveNode.send :define_method, :sorcery_adapter do
      @sorcery_adapter ||= Adapter.new(self)
    end

    Neo4j::ActiveNode::ClassMethods.send :define_method, :sorcery_adapter do
      Adapter.from(self)
    end
  end
end
