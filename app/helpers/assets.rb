module Assets
  class << self
    def init(context)
      @context = context
      @assets = ['events']
    end
    def sync(&block)
      pull @assets, do |rsp|
        block.call rsp
      end
    end
    def pull(assets, &block)
      unless assets.kind_of?(Array)
        assets = assets.split(',')
      end
      Api.get 'assets', {assets: assets.join(','),via:'android'} do |rsp|
        unless rsp.is_err
          assets.each do |asset|
            unless rsp.nil? || rsp[asset].nil?
              if self.respond_to? 'process_'+asset
                puts 'process'
                self.send('process_'+asset, rsp[asset])
              else
                puts 'just set'
                set asset, rsp[asset]
              end
            end
          end
        end
        unless block.nil?
          block.call rsp.is_err
        end
      end
    end
    def process_events(events)
      eventsById = {}
      inx = 0
      while inx < events.length do
        event = events.get inx
        puts inx.to_s+ ' of ' + events.length.to_s
        eventsById['event_'+event.get('event_id').to_s] = event
        if event.get('type') == 'meetup'
        end
        inx += 1
      end
    end
  end
end