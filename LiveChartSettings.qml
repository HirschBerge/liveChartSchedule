import QtQuick
import Quickshell

import qs.Common
import qs.Widgets
import qs.Modules.Plugins

PluginSettings {
    id: root
    pluginId: "liveChartSchedule"

    SelectionSetting {
        settingKey: "dankbarDisplay"
        label: "Dankbar Widget"
        description: "What information to show in the Dankbar pill."
        options: [
            { label: "Total Shows", value: "total_count" },
            { label: "Today's Shows", value: "today_count" },
            { label: "Next Airing", value: "next_airing" },
            { label: "Recently Aired", value: "recently_aired" },
            { label: "Dynamic (Next/Recent)", value: "dynamic" }
        ]
        defaultValue: "total_count"
    }

    SelectionSetting {
        settingKey: "dankbarLimit"
        label: "Dankbar Limit"
        description: "How many shows to display in Next/Recent modes."
        options: [
            { label: "1 Show", value: "1" },
            { label: "2 Shows", value: "2" },
            { label: "3 Shows", value: "3" },
            { label: "4 Shows", value: "4" },
            { label: "5 Shows", value: "5" }
        ]
        defaultValue: "1"
    }

    SelectionSetting {
        settingKey: "browser"
        label: "Browser Session"
        description: "Which browser's cookies to use for authentication and filtering. (Make sure you are logged into livechart.me)"
        options: [
            { label: "Firefox", value: "firefox" },
            { label: "Chrome", value: "chrome" },
            { label: "Chrome Beta", value: "chrome_beta" }
        ]
        defaultValue: "firefox"
    }

    SelectionSetting {
        settingKey: "timeFormat"
        label: "Time Format"
        description: "Choose between 12-hour and 24-hour time display."
        options: [
            { label: "12 Hours", value: "12h" },
            { label: "24 Hours", value: "24h" }
        ]
        defaultValue: "12h"
    }

    ToggleSetting {
        settingKey: "showSeconds"
        label: "Show Seconds"
        description: "Display seconds in the current time highlighter."
        defaultValue: false
    }

    StringSetting {
        settingKey: "updateInterval"
        label: "Update Interval (s)"
        description: "How often to refresh the schedule."
        defaultValue: "3600"
    }

    SelectionSetting {
        settingKey: "daysToShow"
        label: "Days to Show"
        description: "Number of days of schedule to display."
        options: [
            { label: "1 Day", value: "1" },
            { label: "2 Days", value: "2" },
            { label: "3 Days", value: "3" },
            { label: "5 Days", value: "5" },
            { label: "7 Days", value: "7" }
        ]
        defaultValue: "7"
    }

    SelectionSetting {
        settingKey: "startDay"
        label: "Start Day"
        description: "Which day the schedule should start from."
        options: [
            { label: "Day Before Yesterday", value: "-2" },
            { label: "Yesterday", value: "-1" },
            { label: "Today", value: "0" },
            { label: "Tomorrow", value: "1" }
        ]
        defaultValue: "0"
    }

    SelectionSetting {
        settingKey: "cardClickAction"
        label: "Anime Card"
        description: "Action when clicking the background of an anime card."
        options: [
            { label: "Disable", value: "none" },
            { label: "Watch Page", value: "watch_page" },
            { label: "Anime Entry", value: "anime_entry" }
        ]
        defaultValue: "anime_entry"
    }

    SelectionSetting {
        settingKey: "coverTitleClickAction"
        label: "Cover"
        description: "Action when clicking the cover image of an anime."
        options: [
            { label: "Disable", value: "none" },
            { label: "Anime Entry", value: "anime_entry" }
        ]
        defaultValue: "anime_entry"
    }

    SelectionSetting {
        settingKey: "watchStreamClickAction"
        label: "Watch Stream"
        description: "Action when clicking the source favicon/link."
        options: [
            { label: "Disable", value: "none" },
            { label: "Watch Page", value: "watch_page" }
        ]
        defaultValue: "watch_page"
    }

    SelectionSetting {
        settingKey: "livechartIconClickAction"
        label: "LiveChart.me Icon"
        description: "Action when clicking the top LiveChart logo."
        options: [
            { label: "Schedule", value: "schedule" },
            { label: "LiveChart.me", value: "livechart" }
        ]
        defaultValue: "schedule"
    }
}
