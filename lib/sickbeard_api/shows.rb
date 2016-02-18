module SickbeardApi
  module Shows
    def get_show(tvdbid:)
    end

    def add_existing_show(tvdbid:,location:,flatten_folders:nil,initial:nil,archive:nil)
    end

    def add_new_show(tvdbid:,location:nil,lang:nil,flatten_folders:nil,status:nil,initial:nil,archive:nil)
    end

    def check_show_image_cache(tvdbid:)
    end

    def delete_show(tvdbid:)
    end

    def get_show_banner(tvdbid:)
    end

    def get_show_poster(tvdbid:)
    end

    def get_show_quality(tvdbid:)
    end

    def pause_show(tvdbid:,pause:nil)
    end

    def refresh_show(tvdbid:)
    end

    def get_show_season_list(tvdbid:,sort:nil)
    end

    def get_episodes_for_show(tvdbid:,season:nil)
    end

    def set_show_quality(tvdbid:,initial:nil,archive:nil)
    end

    def get_stats_for_show(tvdbid:)
    end

    def update_show(tvdbid:)
    end

    def get_shows(sort:nil,paused:nil)
    end

    def get_show_stats
    end
  end
end