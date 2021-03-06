.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation


# static fields
.field public static final ACCESSIBILITY_COLOR_CONFIG_MODE:Ljava/lang/String; = "accessibility_color_config_mode"

.field public static final ACCESSIBILITY_COLOR_CONTRAST:Ljava/lang/String; = "accessibility_color_contrast"

.field public static final ACCESSIBILITY_COLOR_HUE:Ljava/lang/String; = "accessibility_color_hue"

.field public static final ACCESSIBILITY_COLOR_INTENSITY:Ljava/lang/String; = "accessibility_color_intensity"

.field public static final ACCESSIBILITY_COLOR_INVERT_ENABLED:Ljava/lang/String; = "accessibility_color_invert_enabled"

.field public static final ACCESSIBILITY_COLOR_SAT:Ljava/lang/String; = "accessibility_color_sat"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field public static final ACCESSIBILITY_SCREEN_READER_URL:Ljava/lang/String; = "accessibility_script_injection_url"

.field public static final ACCESSIBILITY_SCRIPT_INJECTION:Ljava/lang/String; = "accessibility_script_injection"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"

.field public static final ACCESSIBILITY_WEB_CONTENT_KEY_BINDINGS:Ljava/lang/String; = "accessibility_web_content_key_bindings"

.field public static final ADB_BLOCKED:Ljava/lang/String; = "adb_blocked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADMIN_LOCKED:Ljava/lang/String; = "admin_locked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"

.field public static final APN2DISABLE_MODE_ON:Ljava/lang/String; = "apn2_disable"

.field public static final APN_LOCKED:Ljava/lang/String; = "apn_locked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ASSISTED_GPS_ENABLED:Ljava/lang/String; = "assisted_gps_enabled"

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BOOT_LOCK:Ljava/lang/String; = "boot_lock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"

.field public static final CONTACTS_PREAUTH_URI_EXPIRATION:Ljava/lang/String; = "contacts_preauth_uri_expiration"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ACCEPT_INFO:Ljava/lang/String; = "data_accept_info"

.field public static final DATA_EHRPD_INTERNET_IPV6_ENABLED:Ljava/lang/String; = "data_ehrpd_internet_ipv6_enabled"

.field public static final DATA_ENCRYPTION:Ljava/lang/String; = "data_encryption"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEFAULT_INSTALL_LOCATION:Ljava/lang/String; = "default_install_location"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE:Ljava/lang/String; = "download_manager_recommended_max_bytes_over_mobile"

.field public static final EMERGENCY_LOCK_TEXT:Ljava/lang/String; = "emergency_lock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLE_MENU_WITHOUT_USIM:Ljava/lang/String; = "enable_menu_without_usim"

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field public static final GUARD_DOM_DATA:Ljava/lang/String; = "rguard_domestic_data"

.field public static final GUARD_DOM_DATA_FORCED:Ljava/lang/String; = "rguard_domestic_data_forced"

.field public static final GUARD_DOM_VOICE:Ljava/lang/String; = "rguard_domestic_voice"

.field public static final GUARD_DOM_VOICE_FORCED:Ljava/lang/String; = "rguard_domestic_voice_forced"

.field public static final GUARD_GSM_DATA:Ljava/lang/String; = "rguard_gsm_data"

.field public static final GUARD_GSM_DATA_FORCED:Ljava/lang/String; = "rguard_gsm_data_forced"

.field public static final GUARD_GSM_OUTGOING_SMS:Ljava/lang/String; = "cbox_gsm_sms"

.field public static final GUARD_GSM_OUTGOING_SMS_FORCED:Ljava/lang/String; = "cbox_gsm_sms_forced"

.field public static final GUARD_GSM_VOICE:Ljava/lang/String; = "rguard_gms_voice"

.field public static final GUARD_GSM_VOICE_FORCED:Ljava/lang/String; = "rguard_gms_voice_forced"

.field public static final GUARD_INTL_DATA:Ljava/lang/String; = "rguard_international_data"

.field public static final GUARD_INTL_DATA_FORCED:Ljava/lang/String; = "rguard_international_data_forced"

.field public static final GUARD_INTL_OUTGOING_SMS:Ljava/lang/String; = "cbox_international_sms"

.field public static final GUARD_INTL_OUTGOING_SMS_FORCED:Ljava/lang/String; = "cbox_international_sms_forced"

.field public static final GUARD_INTL_VOICE:Ljava/lang/String; = "rguard_international_voice"

.field public static final GUARD_INTL_VOICE_FORCED:Ljava/lang/String; = "rguard_international_voice_forced"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IRAT_TEST_MODE:Ljava/lang/String; = "irat_test_mode"

.field public static final KT_SHOW_ROAMING_INDEX:Ljava/lang/String; = "kt_roaming_index"

.field public static final KT_SHOW_ROAMING_PREFIX:Ljava/lang/String; = "show_roaming_prefix"

.field public static final KT_SHOW_ROAMING_USER:Ljava/lang/String; = "kt_roaming_user"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"

.field public static final MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field public static final MODEM_TEST_MODE:Ljava/lang/String; = "modem_test_mode"

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OEM_RAD_DIALER_POPUP:Ljava/lang/String; = "oem_rad_dialer_popup"

.field public static final OEM_RAD_SETTING:Ljava/lang/String; = "oem_rad_setting"

.field public static final OEM_RAD_TEST:Ljava/lang/String; = "oem_rad_test"

.field public static final OEM_RAD_TEST_RCV_PRFIX:Ljava/lang/String; = "oem_rad_test_rcv_prfix"

.field public static final OLD_UICC_STATE:Ljava/lang/String; = "old_uicc_state"

.field public static final OTA_DELAY:Ljava/lang/String; = "ota_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTA_USIM_RUNNING:Ljava/lang/String; = "ota_usim_running"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field public static final REVSETTING_HIDDEN:Ljava/lang/String; = "revsetting_hidden"

.field public static final RMODE_DOM_DATA:Ljava/lang/String; = "roaming_mode_domestic_data"

.field public static final RMODE_DOM_DATA_FORCED:Ljava/lang/String; = "roaming_mode_domestic_data_forced"

.field public static final RMODE_DOM_VOICE:Ljava/lang/String; = "roaming_mode_domestic_voice"

.field public static final RMODE_DOM_VOICE_FORCED:Ljava/lang/String; = "roaming_mode_domestic_voice_forced"

.field public static final RMODE_INTL_DATA:Ljava/lang/String; = "roaming_mode_international_data"

.field public static final RMODE_INTL_DATA_FORCED:Ljava/lang/String; = "roaming_mode_international_data_forced"

.field public static final RMODE_INTL_VOICE:Ljava/lang/String; = "roaming_mode_international_voice"

.field public static final RMODE_INTL_VOICE_FORCED:Ljava/lang/String; = "roaming_mode_international_voice_forced"

.field public static final RMODE_SEL_SYSTEM:Ljava/lang/String; = "roaming_mode_selected_system"

.field public static final ROAMING_DUALCLOCK:Ljava/lang/String; = "roaming_dualclock"

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field public static final SCREENSAVER_COMPONENT:Ljava/lang/String; = "screensaver_components"

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field public static final SCREENSHOT_BLOCKED:Ljava/lang/String; = "screenshot_blocked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SD_ENCRYPTION:Ljava/lang/String; = "sd_encryption"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"

.field public static final SENDPDNTABLE_ENABLE_SAVE:Ljava/lang/String; = "SENDPDNTABLE_ENABLE_SAVE"

.field public static final SEND_ACTION_APP_ERROR:Ljava/lang/String; = "send_action_app_error"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SET_INSTALL_LOCATION:Ljava/lang/String; = "set_install_location"

.field public static final SIM_ERR_POPUP_MSG:Ljava/lang/String; = "sim_err_popup_msg"

.field public static final SKT_LTE_NW_INDICATOR:Ljava/lang/String; = "skt_lte_network_indicator"

.field public static final SKT_OTA_USIM_DOWNLOAD:Ljava/lang/String; = "skt_ota_usim_download"

.field public static final SKT_ROAMING_DUALCLOCK:Ljava/lang/String; = "skt_roaming_dualclock"

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_secure_version"

.field public static final SYS_STORAGE_THRESHOLD_PERCENTAGE:Ljava/lang/String; = "sys_storage_threshold_percentage"

.field public static final TETHERING_BLOCKED:Ljava/lang/String; = "tethering_blocked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field public static final USB_BLOCKED:Ljava/lang/String; = "usb_blocked"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USIM_PERSO_CONTROL_KEY:Ljava/lang/String; = "usim_perso_control_key"

.field public static final USIM_PERSO_IMSI:Ljava/lang/String; = "usim_perso_imsi"

.field public static final USIM_PERSO_LOCKED:Ljava/lang/String; = "usim_perso_locked"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_POOR_NETWORK_TEST_ENABLED:Ljava/lang/String; = "wifi_watchdog_poor_network_test_enabled"

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 3130
    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 3134
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v1, "sys.settings_secure_version"

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "GET_secure"

    const-string v4, "PUT_secure"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 3140
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 3146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    .line 3147
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3148
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3149
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    .line 3152
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3153
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3154
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3155
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3156
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3157
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "subscription_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3158
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3159
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_activity_timeout_wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3160
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3161
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "development_settings_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3162
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3163
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "display_density_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3164
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "display_size_forced"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3165
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3166
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3167
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3168
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3169
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3170
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3171
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3172
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_dev_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3173
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3174
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3175
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_poll_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3176
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_report_xt_over_dev"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3177
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_sample_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3178
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_time_cache_max_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3179
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3180
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3181
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3182
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3183
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3184
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3185
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3186
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3187
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "network_preference"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3188
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_diff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3189
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nitz_update_spacing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3190
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3191
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ntp_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3192
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3193
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3194
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3195
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3196
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3197
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sampling_profiler_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3198
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3199
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3200
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3201
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_apn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3202
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_dun_required"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3204
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tethering_pdn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3206
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tether_supported"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3207
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_help_uri"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3208
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_max_ntp_cache_age_sec"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3209
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_notification_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3210
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_polling_sec"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3211
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_reset_day"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3212
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3213
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "throttle_value_kbitsps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3214
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3215
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3216
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "web_autofill_query_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3217
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_country_code"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3218
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3219
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3220
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_idle_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3221
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3222
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3223
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3224
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3225
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3226
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3227
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3228
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_saved_state"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3229
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3230
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_suspend_optimizations_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3231
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3232
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3233
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3234
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "package_verifier_enable"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3235
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_timeout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3236
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "verifier_default_response"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3237
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3238
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3239
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "gprs_register_check_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3240
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "wtf_is_fatal"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3241
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3242
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "battery_discharge_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3243
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "send_action_app_error"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3244
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_age_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3245
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_max_files"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3246
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_kb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3247
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_quota_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3248
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox_reserve_percent"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3249
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "dropbox:"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3250
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3251
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_free_storage_log_interval"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3252
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3253
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3254
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3255
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3256
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3257
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "connectivity_change_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3258
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_detection_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3259
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "captive_portal_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3260
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "nsd_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3261
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3262
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_install_location"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3263
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3264
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3265
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "read_external_storage_enforced_default"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3266
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3267
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_host"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3268
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_port"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3269
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3270
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "set_global_http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3271
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "default_dns_server"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3272
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_network_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3273
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "preferred_cdma_subscription"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3275
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "sd_encryption"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3276
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "data_encryption"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3277
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "boot_lock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3278
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_blocked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3279
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_blocked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3280
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "admin_locked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3281
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "ota_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3282
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "emergency_lock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3283
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "tethering_blocked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3284
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v1, "screenshot_blocked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3285
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "apn_locked"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5000
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bugreport_in_power_menu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "parental_control_enabled"

    aput-object v2, v0, v1

    const-string/jumbo v1, "parental_control_redirect_url"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "usb_mass_storage_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "accessibility_display_magnification_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accessibility_display_magnification_scale"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accessibility_display_magnification_auto_update"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accessibility_script_injection"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "backup_auto_restore"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "enabled_accessibility_services"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "touch_exploration_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accessibility_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "speak_password"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "tts_use_defaults"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "tts_default_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "tts_default_pitch"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "tts_default_synth"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "tts_default_lang"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "tts_default_country"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "tts_enabled_plugins"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "tts_default_locale"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "wifi_networks_available_notification_on"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "wifi_num_open_networks_kept"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "mount_play_not_snd"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "mount_ums_autostart"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "mount_ums_prompt"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "mount_ums_notify_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "ui_night_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "skt_roaming_dualclock"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "show_roaming_prefix"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "kt_roaming_index"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "kt_roaming_user"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "roaming_dualclock"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "lock_screen_owner_info"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "lock_screen_owner_info_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "revsetting_hidden"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3124
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3590
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3556
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"
    .parameter "userHandle"

    .prologue
    .line 3562
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3564
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3566
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 3565
    .restart local p2
    :catch_0
    move-exception v0

    .line 3566
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3596
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3597
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3598
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3601
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3602
    :catch_0
    move-exception v0

    .line 3603
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3417
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3384
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3423
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3425
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"
    .parameter "userHandle"

    .prologue
    .line 3389
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3391
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 3393
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 3392
    .restart local p2
    :catch_0
    move-exception v0

    .line 3393
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3504
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 3469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3510
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3512
    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 3513
    :catch_0
    move-exception v0

    .line 3514
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .parameter "def"
    .parameter "userHandle"

    .prologue
    .line 3475
    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3478
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3482
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 3478
    goto :goto_0

    .line 3479
    :catch_0
    move-exception v0

    .line 3480
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static getMovedKeys(Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3290
    .local p0, outKeySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 3291
    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 3300
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "userHandle"

    .prologue
    .line 3306
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3307
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3329
    :goto_0
    return-object v0

    .line 3312
    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3313
    const-class v1, Landroid/provider/Settings$Secure;

    monitor-enter v1

    .line 3314
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_1

    .line 3315
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    .line 3317
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    .line 3319
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3320
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-nez v0, :cond_3

    .line 3322
    :try_start_1
    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v1, "0"

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3317
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3319
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3323
    :catch_0
    move-exception v0

    .line 3329
    :cond_3
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "name"

    .prologue
    .line 3361
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3362
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.Secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global, returning global URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3366
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static final isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .parameter "cr"
    .parameter "provider"

    .prologue
    .line 5060
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static final isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "userId"

    .prologue
    .line 5072
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5074
    .local v0, allowedProviders:Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3621
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "userHandle"

    .prologue
    .line 3627
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3445
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "userHandle"

    .prologue
    .line 3451
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3532
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "userHandle"

    .prologue
    .line 3538
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3340
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "value"
    .parameter "userHandle"

    .prologue
    .line 3346
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3347
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Global"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 3351
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static final setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 5085
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 5086
    return-void
.end method

.method public static final setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V
    .locals 2
    .parameter "cr"
    .parameter "provider"
    .parameter "enabled"
    .parameter "userId"

    .prologue
    .line 5099
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2, p3, p1}, Lcom/lge/cappuccino/IMdm;->getMDMLocationPolicy(IZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5102
    const-string v0, "MDM"

    const-string v1, "Gps cannot be changed by Server Policy."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    :goto_0
    return-void

    .line 5110
    :cond_0
    if-eqz p2, :cond_1

    .line 5111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5115
    :goto_1
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {p0, v0, p1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 5113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
