module RailsDb
  module Adapters

    class Sqlite < BaseAdapter

      def self.execute(sql)
        t0 = Time.now
        sql.split(";\n").each do |statement|
          connection.execute(statement)
        end
        Time.now - t0
      end

      def self.adapter_name
        'sqlite'
      end

    end

  end
end