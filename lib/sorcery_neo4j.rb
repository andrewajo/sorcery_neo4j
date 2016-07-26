require "sorcery_neo4j/version"

module SorceryNeo4j
  if defined?(Neo4j)
    require 'sorcery_neo4j/adapter'

    Neo4j::ActiveNode::ClassMethods.send :include, Sorcery::Model

    Neo4j::ActiveNode.send :define_method, :sorcery_adapter do
      @sorcery_adapter ||= SorceryNeo4j::Neo4jAdapter.new(self)
    end

    Neo4j::ActiveNode::ClassMethods.send :define_method, :sorcery_adapter do
      SorceryNeo4j::Neo4jAdapter.from(self)
    end
  end
end
