.class public Lcom/android/internal/telephony/LGfeature;
.super Ljava/lang/Object;
.source "LGfeature.java"


# static fields
.field public static final ATANDT:I = 0x4

.field public static CDMA_CPA:Z = false

.field public static final DCMSET:I = 0x3

.field public static final KDDI:I = 0x8

.field public static KDDI_1X_DUN:Z = false

.field public static KDDI_dipose_GsmDCT:Z = false

.field public static final KDDIbaseSet:I = 0x8

.field public static final KT:I = 0x5

.field public static LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z = false

.field public static LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I = 0x0

.field public static LGP_DATA_APN_PREFFERED_APN_SUPPORT_NON_DEFAULT_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z = false

.field public static LGP_DATA_DATACONNECTION_DELAY_GSMDCT_DISPOSE_WHEN_CDMADCT_RATTYPE_IN_26SEC_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_HOLD_REQUEST_DATA_CALL_FOR_DAN:Z = false

.field public static LGP_DATA_DATACONNECTION_KDDI_CPA_SUPPORT_ON_LEGACY_CDMA_KDDI:Z = false

.field public static LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z = false

.field public static LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z = false

.field public static LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z = false

.field public static LGP_DATA_IMS_SEND_INTENT_ON_CONNECTED_KDDI:Z = false

.field public static LGP_DATA_KDDI_SUPPORT_DYNAMIC_APN_NAI_SETTING_FOR_CPA:Z = false

.field public static LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z = false

.field public static LGP_DATA_SET_APN_IA_TIMER_KDDI:Z = false

.field public static LGP_DATA_TCPIP_DNS_KDDI_CPA_CONFIG_KDDI:Z = false

.field public static LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z = false

.field public static final LGUPLUS:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "LGfeature"

.field public static final MPCS:I = 0x7

.field public static final MPDN_NOTSUPPORT:I = 0x0

.field public static final NAI_ALLSUPPORT:I = 0x0

.field public static final NAI_IntAndAppV4:I = 0x1

.field public static Prefered_APN_DUN:Z = false

.field public static final SKT:I = 0x6

.field public static final SPCS:I = 0x9

#the value of this static final field might be set in the static constructor
.field public static final SUPPORT_DEBUG:Z = false

.field public static final TMUS:I = 0xb

.field public static final VDF:I = 0xa

.field public static final VZWbaseSet:I = 0x1

.field private static sLGfeature:Lcom/android/internal/telephony/LGfeature;


# instance fields
.field public CALL_REATTACHED:Z

.field public CHECK_LW_AND_WONLY_MODE:Z

.field public DISALLOW_CHNAGING_PHONETYPE:Z

.field public DefaultPDNdependancy:Z

.field public DisableFD_OnTethering:Z

.field public EMERGENCY_SUPPORT:Z

.field public FEATURE_DATA_NO_MPDP_CHECK:Z

.field public FIXED_JB_RETRYCOUNT_INIT_ERR:Z

.field public IMSPowerOffdelaytime:I

.field public INFINITE_DATA_CALL_RETRY_COUNT:Z

.field public IsPossibleSetMobileNOSVC:Z

.field public KDDI_APN_FOR_ROAMING:Z

.field public KDDI_CPA_DNS_SETTING:Z

.field public KDDI_SUSPENDED:Z

.field public KDDI_TETHERING_DNS:Z

.field public LGE_DATA_LGU_FIX_DNS_PARSING:Z

.field public LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

.field public LGP_DATA_APN_ADD_BIP_TYPE:Z

.field public LGP_DATA_APN_ADD_DUN_TYPE:Z

.field public LGP_DATA_APN_ADD_RCS_TYPE:Z

.field public LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

.field public LGP_DATA_APN_APNPROVISION_ATT:Z

.field public LGP_DATA_APN_APNSYNC:Z

.field public LGP_DATA_APN_APNSYNC_KR:Z

.field public LGP_DATA_APN_APNSYNC_ON_CDMA:Z

.field public LGP_DATA_APN_AUTOPROFILE:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_BELL:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_RGS:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_TLS:Z

.field public LGP_DATA_APN_AUTOPROFILE_CA_VTR:Z

.field public LGP_DATA_APN_AUTOPROFILE_KR:Z

.field public LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

.field public LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

.field public LGP_DATA_APN_BACKUP:Z

.field public LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

.field public LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

.field public LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

.field public LGP_DATA_APN_CONFIG:Z

.field public LGP_DATA_APN_CONTROL_PDN_ON_POA:Z

.field public LGP_DATA_APN_DISABLE_ESM_INFO:Z

.field public LGP_DATA_APN_DISABLE_ROAM_PROTOCOL:Z

.field public LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

.field public LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

.field public LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

.field public LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

.field public LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

.field public LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

.field public LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

.field public LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

.field public LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

.field public LGP_DATA_APN_PDN_LIST_ERASE:Z

.field public LGP_DATA_APN_PREFERAPN_SETTING_DCM:Z

.field public LGP_DATA_APN_PROFILE_SETTING_KT:Z

.field public LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

.field public LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

.field public LGP_DATA_APN_PROFILE_SETTING_SKT:Z

.field public LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

.field public LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

.field public LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

.field public LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

.field public LGP_DATA_APN_SELECT_KR:Z

.field public LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

.field public LGP_DATA_APN_SET_AUTH_ON_USER_NULL:Z

.field public LGP_DATA_APN_SUPPORT_MPDN_SPRINT:Z

.field public LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

.field public LGP_DATA_APN_SYNC_PARAMETER:Z

.field public LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

.field public LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

.field public LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

.field public LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

.field public LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

.field public LGP_DATA_ATCMD_BUGFIX_GCF_QOS:Z

.field public LGP_DATA_ATCMD_EXTENSION:Z

.field public LGP_DATA_ATCMD_NO_READ_ESN:Z

.field public LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

.field public LGP_DATA_CHAMELEON_USE_DEFAULT_OPERATOR_SPRINT:Z

.field public LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

.field public LGP_DATA_CONNECTIVITYSERVICE_VPN_DEF_PROXY_DCM:Z

.field public LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

.field public LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

.field public LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

.field public LGP_DATA_DAEMON_NETMGRD_RECOVER_ON_KILLED:Z

.field public LGP_DATA_DATACONNECTION_1XCSFB_SUPPORT:Z

.field public LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

.field public LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

.field public LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

.field public LGP_DATA_DATACONNECTION_ARBITRATION:Z

.field public LGP_DATA_DATACONNECTION_ATTCH_AFTER_10SEC_KR:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

.field public LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_DC_LINK:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DCT_TYPE_CHECK:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_DISCONNECTING_STATE_MISMATCH:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_PHONETYPE_CHANGE:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

.field public LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

.field public LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

.field public LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

.field public LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

.field public LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

.field public LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

.field public LGP_DATA_DATACONNECTION_DATACALL:Z

.field public LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Z

.field public LGP_DATA_DATACONNECTION_DATAROAMING_CONFIG:Z

.field public LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_OLNY:Z

.field public LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

.field public LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

.field public LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

.field public LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

.field public LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

.field public LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

.field public LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

.field public LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

.field public LGP_DATA_DATACONNECTION_HANDLE_PERMANENT_CAUSE_DCM:Z

.field public LGP_DATA_DATACONNECTION_INIT_NWMODE_ON_FACTORY_RESET:Z

.field public LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

.field public LGP_DATA_DATACONNECTION_KEEP_ROUTE_INFO_ON_SUSPEND_VZW:Z

.field public LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

.field public LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

.field public LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

.field public LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

.field public LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

.field public LGP_DATA_DATACONNECTION_MODECHANGE:Z

.field public LGP_DATA_DATACONNECTION_MODECHANGE_KDDI:Z

.field public LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

.field public LGP_DATA_DATACONNECTION_MODE_CHANGE_USER3G_KR:Z

.field public LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

.field public LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

.field public LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

.field public LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

.field public LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

.field public LGP_DATA_DATACONNECTION_OFF_O2_DURING_GSMONLY:Z

.field public LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

.field public LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_PREVENT_RECONNECT:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_BLOCK_ANOTHER_TYPE:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

.field public LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

.field public LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

.field public LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

.field public LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

.field public LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

.field public LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

.field public LGP_DATA_DATACONNECTION_RETRYCOUNT_INIT_ERR:Z

.field public LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

.field public LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

.field public LGP_DATA_DATACONNECTION_RETRY_READY_APN:Z

.field public LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

.field public LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

.field public LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

.field public LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

.field public LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

.field public LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

.field public LGP_DATA_DATAUSAGE_CONFIG:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

.field public LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

.field public LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

.field public LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

.field public LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

.field public LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

.field public LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

.field public LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

.field public LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

.field public LGP_DATA_DEBUG_DATABLOCK:Z

.field public LGP_DATA_DEBUG_DATACALL_INFO:Z

.field public LGP_DATA_DEBUG_DISPLAY_INFO:Z

.field public LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

.field public LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

.field public LGP_DATA_DISPLAY_DATAERROR_ICON_SPRINT:Z

.field public LGP_DATA_DORMANT_FD:Z

.field public LGP_DATA_DORMANT_FD_ENHANCE_DCM:Z

.field public LGP_DATA_DORMANT_FD_LGU:Z

.field public LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

.field public LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

.field public LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

.field public LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

.field public LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

.field public LGP_DATA_IMS_BARRING_UPLUS:Z

.field public LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

.field public LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

.field public LGP_DATA_IMS_CELL_INFO:Z

.field public LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

.field public LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

.field public LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

.field public LGP_DATA_IMS_DEREGISTRATION:Z

.field public LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

.field public LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

.field public LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

.field public LGP_DATA_IMS_KEEP_INFO_ON_RAT_CHANGE:Z

.field public LGP_DATA_IMS_KR:Z

.field public LGP_DATA_IMS_PEND_STARTING_TIME:Z

.field public LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

.field public LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

.field public LGP_DATA_KERNEL_CONFIG:Z

.field public LGP_DATA_KERNEL_CONFIG_CTS_FIX:Z

.field public LGP_DATA_LTE_ATTACH_DELAY:Z

.field public LGP_DATA_LTE_ROAMING_LGU:Z

.field public LGP_DATA_NV_POWER_UP_INIT:Z

.field public LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

.field public LGP_DATA_PATCH_GOOGLE_ENCRYPTION_FIX:Z

.field public LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

.field public LGP_DATA_PDN_ARBITRATION_CONFIG:Z

.field public LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

.field public LGP_DATA_PDN_DISABLE_MULTI_PDN_DCM:Z

.field public LGP_DATA_PDN_EMERGENCY_CALL:Z

.field public LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

.field public LGP_DATA_PDN_LTE_ATTACH_RETRY_DCM:Z

.field public LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

.field public LGP_DATA_PDN_MEAN_TPUT_TLS:Z

.field public LGP_DATA_PDN_MODIFY_EPS_BEARER_REJECT:Z

.field public LGP_DATA_PDN_MPDN_KDDI:Z

.field public LGP_DATA_PDN_MPDN_KR:Z

.field public LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

.field public LGP_DATA_PDN_MPDN_VZW:Z

.field public LGP_DATA_PDN_OTA_UPLUS:Z

.field public LGP_DATA_PDN_PCO_CONFIG_DCM:Z

.field public LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

.field public LGP_DATA_PDN_QOS_CONFIG_KT:Z

.field public LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

.field public LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

.field public LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

.field public LGP_DATA_PDN_TRYSETUP_AFTER_SIM_LOADED_ON_CDMA:Z

.field public LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

.field public LGP_DATA_PPP_LINK_CLOSE:Z

.field public LGP_DATA_RIL_ACCESSCTRL_FIX:Z

.field public LGP_DATA_RIL_BUGFIX_FD_KT:Z

.field public LGP_DATA_RIL_BUGFIX_NETWORKINFO_NULL:Z

.field public LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

.field public LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

.field public LGP_DATA_RIL_RESTART_ON_DATASTALL:Z

.field public LGP_DATA_RIL_RESTART_ON_RILERROR:Z

.field public LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

.field public LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

.field public LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

.field public LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

.field public LGP_DATA_TCPIP_DNS_CACHE_FIX_ABOUT_IPV6_VZW:Z

.field public LGP_DATA_TCPIP_DNS_FIX_NO_DNSSERVER:Z

.field public LGP_DATA_TCPIP_DNS_MPDN:Z

.field public LGP_DATA_TCPIP_DNS_QUERY_SELECTION_UPLUS:Z

.field public LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

.field public LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

.field public LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

.field public LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

.field public LGP_DATA_TCPIP_IP_MULTICAST:Z

.field public LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

.field public LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

.field public LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

.field public LGP_DATA_TCPIP_MTU_CONFIG:Z

.field public LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

.field public LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

.field public LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

.field public LGP_DATA_TCPIP_SET_DEFAULT_MTU_VZW:Z

.field public LGP_DATA_TCPIP_SET_MTU_SIZE_VZW:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_DCM:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

.field public LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

.field public LGP_DATA_TCPIP_TCP_MODEM_DEF_RCVBUF_DCM:Z

.field public LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS_DCM:Z

.field public LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

.field public LGP_DATA_TCPIP_TCP_TYPE_BIG_KT:Z

.field public LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

.field public LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

.field public LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

.field public LGP_DATA_TETHERING_APN_LIST:Z

.field public LGP_DATA_TETHER_APN_CHANGE_DCM:Z

.field public LGP_DATA_TETHER_APN_CHANGE_FOR_MDM_DCM:Z

.field public LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

.field public LGP_DATA_TETHER_BLOCK_TETHERINGPDN_ON_GSMROAMING_KDDI:Z

.field public LGP_DATA_TETHER_BUGFIX_CHECK_BT_STATUS:Z

.field public LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

.field public LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

.field public LGP_DATA_TETHER_BUGFIX_UPSTREM_TYPE:Z

.field public LGP_DATA_TETHER_CHANGE_UPSTREM_TYPE:Z

.field public LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

.field public LGP_DATA_TETHER_DUN_NV_ONOFF_UPLUS:Z

.field public LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

.field public LGP_DATA_TETHER_IPV6_SUPPORT:Z

.field public LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

.field public LGP_DATA_TETHER_RETRY_UPLUS:Z

.field public LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

.field public LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

.field public LGP_DATA_TOOL_EMUL_RIL:Z

.field public LGP_DATA_TOOL_PING6:Z

.field public LGP_DATA_TOOL_TCPDUMP:Z

.field public LGP_DATA_TOOL_TRACEROUTE:Z

.field public LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

.field public LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

.field public LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

.field public LGP_DATA_UIAPP_DSAC_NOTIFICATION_DCM:Z

.field public LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

.field public LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

.field public LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

.field public LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

.field public LGP_DATA_UIAPP_OMADM_PROVISIONING_SPRINT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_KR:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_KT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

.field public LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

.field public LGP_DATA_UIAPP_ROAMING_NOTI_DCM:Z

.field public LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

.field public LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

.field public LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

.field public LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

.field public LGP_DATA_VOICEPROTECTION_ATT:Z

.field public LGP_GSM_GLOBAL_PREFERED_APN_SPR:Z

.field public LTE_ROAMING_FOR_KT:Z

.field public MPDNset:I

.field public NAI_support:I

.field public RESETTING_FD_FOR_HO:Z

.field public SUPPORT_BLOCK_UNNECESSARY_DISCONNECT:Z

.field public SUPPORT_DEFAULT_PREFER_APN:Z

.field public SUPPORT_DOCOMO_DSAC:Z

.field public SUPPORT_DOCOMO_DUAL_CONNECTIVITY:Z

.field public SUPPORT_DOCOMO_TETHER:Z

.field public SUPPORT_IPV6:Z

.field public SUPPORT_REATTACH_DEFAULT_PDN:Z

.field public SUPPORT_RETAIN_SOCKET_CONN_IN_OOS:Z

.field public SUPPORT_RETRY_READY_APN:Z

.field public SUPPORT_ROAMING_LOCK:Z

.field public SUPPORT_ROAMING_NOTIFICATION:Z

.field public SUPPORT_SINGLE_PDN:Z

.field public SUPPORT_TETHERING_NON_APN:Z

.field public SUPPORT_UPDATE_TCP_BUF:Z

.field public SUPPORT_VPN_DEFAULTPROXY:Z

.field public VZW_GFIT_IP_address_utilization:Z

.field public bypassforuplus:Z

.field public closeDelayForIms:Z

.field public fixthephonetypetoCDMA:Z

.field public imsstarttiming:Z

.field public myfeatureset:Ljava/lang/String;

.field public poweroffdelayneed:Z

.field public regenFdInHandover:Z

.field public retry_interval:I

.field public rxtx_debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2614
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_KDDI_SUPPORT_DYNAMIC_APN_NAI_SETTING_FOR_CPA:Z

    .line 2625
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DELAY_GSMDCT_DISPOSE_WHEN_CDMADCT_RATTYPE_IN_26SEC_KDDI:Z

    .line 2634
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_INTENT_ON_CONNECTED_KDDI:Z

    .line 2643
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    .line 2652
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_SET_APN_IA_TIMER_KDDI:Z

    .line 2662
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    .line 2670
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_KDDI_CPA_CONFIG_KDDI:Z

    .line 2679
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    .line 2688
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PREFFERED_APN_SUPPORT_NON_DEFAULT_KDDI:Z

    .line 2697
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_KDDI_CPA_SUPPORT_ON_LEGACY_CDMA_KDDI:Z

    .line 2705
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    .line 2713
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z

    .line 2723
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO:Z

    .line 2724
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_MISMATCH_MODEM_EHRPD_APN_INFO_NUM:I

    .line 2733
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_KDDI:Z

    .line 2740
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_HOLD_REQUEST_DATA_CALL_FOR_DAN:Z

    .line 2748
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    .line 3019
    const-string/jumbo v0, "persist.lge.data.debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DEBUG:Z

    .line 3146
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->CDMA_CPA:Z

    .line 3147
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->Prefered_APN_DUN:Z

    .line 3148
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->KDDI_1X_DUN:Z

    .line 3149
    sput-boolean v1, Lcom/android/internal/telephony/LGfeature;->KDDI_dipose_GsmDCT:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "featureset"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0xbb8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC:Z

    .line 49
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_CONFIG:Z

    .line 51
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_DISABLE_ROAM_PROTOCOL:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_HANDLE_SUPL_WITH_DEFAULT:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SET_AUTH_ON_USER_NULL:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_ATCMD_BUGFIX_GCF_QOS:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_BUGFIX_CONNSRV_EXCEPTION:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_FEATURE_USER_MEMORY_OVERFLOW:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_APN:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_NO_DC_LINK:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_DATACONNFAIL_WITH_2GCALL:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_DISCONNECTING_STATE_MISMATCH:Z

    .line 165
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_NOTIFY_DATACONN_ON_STATE_FAILED:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRY_ALL_READY_APNCNXT_ON_APN_CHANGED:Z

    .line 188
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_PHONETYPE_CHANGE:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_UNSOL_PROCESS:Z

    .line 219
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_FIX_GET_REJCAUSE:Z

    .line 227
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    .line 237
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATAROAMING_CONFIG:Z

    .line 247
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_CONNECTED_OLNY:Z

    .line 255
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATASTALL_ALARM_NO_WAKEUP:Z

    .line 264
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_INIT_NWMODE_ON_FACTORY_RESET:Z

    .line 273
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODIFY_SPDN_PROCESS:Z

    .line 283
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 294
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RADIOOFF_WAITINGTIME:Z

    .line 302
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RECONNECT_ON_APN_CHANGED_IN_MPDN:Z

    .line 311
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_DATABLOCK:Z

    .line 320
    const-string/jumbo v0, "persist.lg.data.debug"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_DATACALL_INFO:Z

    .line 328
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_DISPLAY_INFO:Z

    .line 336
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KEEP_INFO_ON_RAT_CHANGE:Z

    .line 347
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_FIX_NO_DNSSERVER:Z

    .line 360
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_RECORD_TYPE:Z

    .line 370
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD:Z

    .line 379
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_KERNEL_BUGFIX_ROUTE:Z

    .line 389
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PATCH_GOOGLE_ENCRYPTION_FIX:Z

    .line 391
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_HOOKING_ON_TETHER:Z

    .line 399
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 407
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DAEMON_NETD_BANDWIDTH:Z

    .line 415
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DAEMON_NETMGRD_PORT_INIT_RETRY:Z

    .line 424
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DAEMON_NETMGRD_RECOVER_ON_KILLED:Z

    .line 432
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_ACCESSCTRL_FIX:Z

    .line 443
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_BUGFIX_NETWORKINFO_NULL:Z

    .line 454
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DISABLE_PATIALRETRY:Z

    .line 465
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_DATASTALL:Z

    .line 473
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BUGFIX_CHECK_BT_STATUS:Z

    .line 481
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BUGFIX_CHECK_WIFI_STATUS:Z

    .line 489
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BUGFIX_INFINTE_RETRY_ON_DISABLE_DATA:Z

    .line 497
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BUGFIX_UPSTREM_TYPE:Z

    .line 505
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_CHANGE_UPSTREM_TYPE:Z

    .line 513
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_FIX_ROUTE_TABLE_EXCEPTION:Z

    .line 521
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ADD_DUN_TYPE:Z

    .line 530
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ADD_BIP_TYPE:Z

    .line 539
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TOOL_PING6:Z

    .line 547
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TOOL_TCPDUMP:Z

    .line 556
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TOOL_TRACEROUTE:Z

    .line 565
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DATA_MENU_NOT_CONRTOL:Z

    .line 573
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRYCOUNT_INIT_ERR:Z

    .line 581
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE:Z

    .line 589
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 599
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY:Z

    .line 607
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_IP_V6_SOCK_CLOSE:Z

    .line 615
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DAEMON_NETD_BUGFIX_ILLEGALSTATE_EXCEPTION:Z

    .line 623
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PDN_LIST_ERASE:Z

    .line 631
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TOOL_EMUL_RIL:Z

    .line 640
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TD_DEAD_OBJECT_EXCEPTION_IN_TRAFFIC_STATS:Z

    .line 648
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_IP_MULTICAST:Z

    .line 662
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_KERNEL_CONFIG_CTS_FIX:Z

    .line 672
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_CONFIG:Z

    .line 680
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_WINSIZE_CONFIG:Z

    .line 688
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CONDITION_FOR_AUTO_ATTACH:Z

    .line 698
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_LIMIT_EXCEED:Z

    .line 707
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_EXCEPTION_HANDLING_FOR_GET_SERVICESTATE:Z

    .line 715
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RECONNECT_AFTER_USER_PASSWORD_CHANGED:Z

    .line 724
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

    .line 732
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE:Z

    .line 740
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_COMPRESSION_BLOCK_CODE_COMMON:Z

    .line 749
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_KERNEL_CONFIG:Z

    .line 762
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_ATCMD_EXTENSION:Z

    .line 776
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 777
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 787
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 797
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 805
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    .line 812
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 813
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 814
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 816
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 818
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 826
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 838
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 846
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 855
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_GSM_GLOBAL_PREFERED_APN_SPR:Z

    .line 864
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_DISABLE_ESM_INFO:Z

    .line 872
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 881
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DEREGISTRATION:Z

    .line 883
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 893
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 901
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    .line 904
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    .line 912
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_ON_CDMA:Z

    .line 913
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 921
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 929
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 937
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 945
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 953
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHERING_APN_LIST:Z

    .line 963
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 972
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

    .line 983
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_TRYSETUP_AFTER_SIM_LOADED_ON_CDMA:Z

    .line 992
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 1001
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 1009
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_DCT_TYPE_CHECK:Z

    .line 1017
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    .line 1026
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 1036
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ATTACH_DELAY:Z

    .line 1045
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_1XCSFB_SUPPORT:Z

    .line 1053
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 1062
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 1071
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 1082
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 1095
    const-string v0, "1"

    const-string/jumbo v1, "persist.lg.data.block_ssdp"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_SSDP_PKT_TO_MOBILE:Z

    .line 1110
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    .line 1127
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    .line 1141
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_BACKUP:Z

    .line 1151
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_VOICEPROTECTION_ATT:Z

    .line 1159
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    .line 1167
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    .line 1179
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    .line 1190
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    .line 1198
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    .line 1206
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    .line 1217
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_RGS:Z

    .line 1226
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    .line 1248
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    .line 1256
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    .line 1264
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_TLS:Z

    .line 1274
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_BELL:Z

    .line 1284
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_VTR:Z

    .line 1296
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 1304
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 1311
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_KEEP_ROUTE_INFO_ON_SUSPEND_VZW:Z

    .line 1319
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 1326
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 1329
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 1337
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 1344
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 1351
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_CACHE_FIX_ABOUT_IPV6_VZW:Z

    .line 1360
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_SET_MTU_SIZE_VZW:Z

    .line 1368
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 1376
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 1384
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 1392
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 1400
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 1408
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_SET_DEFAULT_MTU_VZW:Z

    .line 1416
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 1425
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 1437
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CHAMELEON_USE_DEFAULT_OPERATOR_SPRINT:Z

    .line 1447
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 1458
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    .line 1475
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_CONTROL_PDN_ON_POA:Z

    .line 1488
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SUPPORT_MPDN_SPRINT:Z

    .line 1509
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    .line 1523
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DISPLAY_DATAERROR_ICON_SPRINT:Z

    .line 1534
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    .line 1545
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    .line 1555
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    .line 1566
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    .line 1576
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    .line 1587
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_OMADM_PROVISIONING_SPRINT:Z

    .line 1598
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    .line 1609
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    .line 1620
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    .line 1643
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 1644
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ATTCH_AFTER_10SEC_KR:Z

    .line 1656
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 1666
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 1677
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_FACTORY_RESET_KR:Z

    .line 1689
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 1697
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_USER3G_KR:Z

    .line 1709
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 1718
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_BUGFIX_MDNSD_MEMORY_ERROR_KR:Z

    .line 1726
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KR:Z

    .line 1736
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 1754
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 1770
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 1778
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 1786
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_KR:Z

    .line 1794
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_HANDLE_ALL_TYPE_KR:Z

    .line 1804
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    .line 1812
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_AND_TRYSETUP:Z

    .line 1820
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 1828
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 1839
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 1852
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

    .line 1869
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MODIFY_EPS_BEARER_REJECT:Z

    .line 1870
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SYNC_PARAMETER:Z

    .line 1873
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 1896
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    .line 1904
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    .line 1912
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    .line 1920
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    .line 1928
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_SKT:Z

    .line 1944
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    .line 1952
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_SKT:Z

    .line 1960
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_TYPE_BIG_SKT:Z

    .line 1968
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    .line 1976
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 1984
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    .line 1997
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_INIT_RETURN_KOR_MPDN_SKT:Z

    .line 1998
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING_SKT:Z

    .line 1999
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_SKT:Z

    .line 2000
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_ATCMD_NO_READ_ESN:Z

    .line 2001
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_CHECK_DATACALL_VALID:Z

    .line 2002
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

    .line 2003
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SYNC_REATTACH_DEFAULT_PDN:Z

    .line 2004
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SETTING_PLMN_CHG_MODEM:Z

    .line 2005
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_EFS_PDN_LIST_ERASE:Z

    .line 2006
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PATCH_DORMANT_FEATURE_DATA_NO_MPDP_CHECK:Z

    .line 2007
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PATCH_SUSPEND_BUG_FIX_SIM_LOCK_WRC:Z

    .line 2008
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_QMI_WDS_CONNECTED_STATE_MISMATCH_FIX:Z

    .line 2010
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->FEATURE_DATA_NO_MPDP_CHECK:Z

    .line 2012
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_MPDN_SKT:Z

    .line 2013
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_SKT:Z

    .line 2025
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    .line 2036
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    .line 2043
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    .line 2050
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    .line 2057
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    .line 2064
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DHCP_OPTION_CONFIG_KT:Z

    .line 2071
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_BUGFIX_SIO_PORT_RELEASE_KT:Z

    .line 2078
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_QOS_CONFIG_KT:Z

    .line 2085
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_BUGFIX_FD_KT:Z

    .line 2092
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_KT:Z

    .line 2099
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_TYPE_BIG_KT:Z

    .line 2106
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

    .line 2114
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    .line 2122
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    .line 2132
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING__MPDN_KT:Z

    .line 2139
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_INIT_RETURN_KOR__MPDN_KT:Z

    .line 2146
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING_KT:Z

    .line 2153
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ROAMING_AUTOPROFILE_KT:Z

    .line 2160
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAKE_ROAMING_APN_SETTING_KT:Z

    .line 2169
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_KT:Z

    .line 2188
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_ARBITRATION_CONFIG:Z

    .line 2196
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    .line 2204
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_EXCEPT_HOTSPOT_UPLUS:Z

    .line 2212
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 2220
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 2228
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    .line 2236
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_MPDN_INFO_UPLUS:Z

    .line 2244
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_QUERY_SELECTION_UPLUS:Z

    .line 2252
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_DUN_NV_ONOFF_UPLUS:Z

    .line 2260
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    .line 2268
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    .line 2276
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_ON_RAT_CHANGE_UPLUS:Z

    .line 2284
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_SYN_RETRY_CONFIG_UPLUS:Z

    .line 2292
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RETRY_UPLUS:Z

    .line 2300
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    .line 2308
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    .line 2319
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    .line 2328
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    .line 2340
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 2348
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    .line 2356
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_LGU:Z

    .line 2359
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_EHRPD_INIT_EFS_CONFIG_FILE_UPLUS:Z

    .line 2360
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_BARRING_UPLUS:Z

    .line 2361
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_BIP_PROFILE_UPLUS:Z

    .line 2362
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAN_GO_DORMANT_TRUE_UPLUS:Z

    .line 2363
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PPP_LCP_VENDOR_SPECIFIC_PROTOCOL:Z

    .line 2364
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LTE_ATTACH_ON_INSRV_UPLUS:Z

    .line 2365
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VSNCP_RETRY_NUM_UPLUS:Z

    .line 2368
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_REDUCE_HO_DELAY:Z

    .line 2369
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LCP_RETRY_UPLUS:Z

    .line 2370
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_HO_TAU_REJECT_UPLUS:Z

    .line 2371
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_IMS_PDN_IPV6:Z

    .line 2372
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_EMERGENCY_CALL:Z

    .line 2373
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING_MPDN_UPLUS:Z

    .line 2376
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_NV_POWER_UP_INIT:Z

    .line 2377
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATACALL:Z

    .line 2378
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PPP_LINK_CLOSE:Z

    .line 2379
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_1xEVDO_DEBUG:Z

    .line 2380
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_EHRPD_UPDATE_PROFILE_DB:Z

    .line 2381
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_EHRPD_FIX_PDN_TYPE_MATCH:Z

    .line 2382
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGE_DATA_LGU_FIX_DNS_PARSING:Z

    .line 2387
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_LTE_FIRST_IS_IMS:Z

    .line 2400
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PREFERAPN_SETTING_DCM:Z

    .line 2413
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_VPN_DEF_PROXY_DCM:Z

    .line 2422
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    .line 2430
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_HANDLE_PERMANENT_CAUSE_DCM:Z

    .line 2439
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_ENHANCE_DCM:Z

    .line 2448
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS_DCM:Z

    .line 2459
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_APN_CHANGE_DCM:Z

    .line 2468
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_APN_CHANGE_FOR_MDM_DCM:Z

    .line 2476
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_DSAC_NOTIFICATION_DCM:Z

    .line 2484
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_ROAMING_NOTI_DCM:Z

    .line 2493
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PREVENT_RECONNECT:Z

    .line 2503
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRY_READY_APN:Z

    .line 2513
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_DCM:Z

    .line 2532
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_PCO_CONFIG_DCM:Z

    .line 2544
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_MODEM_DEF_RCVBUF_DCM:Z

    .line 2553
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_DISABLE_MULTI_PDN_DCM:Z

    .line 2562
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_LTE_ATTACH_RETRY_DCM:Z

    .line 2574
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KDDI:Z

    .line 2584
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KDDI:Z

    .line 2592
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    .line 2603
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BLOCK_TETHERINGPDN_ON_GSMROAMING_KDDI:Z

    .line 2759
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ADD_RCS_TYPE:Z

    .line 2768
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ARBITRATION:Z

    .line 2780
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 2792
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 2803
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 2815
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 2828
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    .line 2843
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 2852
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 2864
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATAENABLED_CONFIG_TLF_ES:Z

    .line 2874
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_OFF_O2_DURING_GSMONLY:Z

    .line 2996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    .line 2998
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3000
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->NAI_support:I

    .line 3002
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->retry_interval:I

    .line 3004
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->IMSPowerOffdelaytime:I

    .line 3007
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->DefaultPDNdependancy:Z

    .line 3010
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->poweroffdelayneed:Z

    .line 3016
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_REATTACH_DEFAULT_PDN:Z

    .line 3017
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_SINGLE_PDN:Z

    .line 3018
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 3020
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DEFAULT_PREFER_APN:Z

    .line 3021
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_DSAC:Z

    .line 3022
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_NOTIFICATION:Z

    .line 3023
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_TETHER:Z

    .line 3027
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_DOCOMO_DUAL_CONNECTIVITY:Z

    .line 3029
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_UPDATE_TCP_BUF:Z

    .line 3030
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    .line 3031
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_BLOCK_UNNECESSARY_DISCONNECT:Z

    .line 3032
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_RETAIN_SOCKET_CONN_IN_OOS:Z

    .line 3033
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_RETRY_READY_APN:Z

    .line 3035
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_TETHERING_NON_APN:Z

    .line 3036
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_VPN_DEFAULTPROXY:Z

    .line 3048
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->regenFdInHandover:Z

    .line 3051
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->RESETTING_FD_FOR_HO:Z

    .line 3054
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->INFINITE_DATA_CALL_RETRY_COUNT:Z

    .line 3058
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    .line 3061
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->DISALLOW_CHNAGING_PHONETYPE:Z

    .line 3068
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->imsstarttiming:Z

    .line 3074
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->fixthephonetypetoCDMA:Z

    .line 3082
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->rxtx_debug:Z

    .line 3086
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LTE_ROAMING_FOR_KT:Z

    .line 3091
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->CALL_REATTACHED:Z

    .line 3099
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->VZW_GFIT_IP_address_utilization:Z

    .line 3118
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->closeDelayForIms:Z

    .line 3121
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->IsPossibleSetMobileNOSVC:Z

    .line 3124
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->CHECK_LW_AND_WONLY_MODE:Z

    .line 3128
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->DisableFD_OnTethering:Z

    .line 3132
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_CPA_DNS_SETTING:Z

    .line 3136
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_SUSPENDED:Z

    .line 3140
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_APN_FOR_ROAMING:Z

    .line 3144
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_TETHERING_DNS:Z

    .line 3156
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_BLOCK_ANOTHER_TYPE:Z

    .line 3161
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->FIXED_JB_RETRYCOUNT_INIT_ERR:Z

    .line 3168
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3193
    iput-object p2, p0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    .line 3195
    const-string v0, "VZWBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3196
    const-string v0, "GSM"

    const-string v1, "LG feature - VZWBASE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3206
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3207
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3208
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_ON_CDMA:Z

    .line 3209
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3210
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_BLOCK_IMS_CONNECTION_TRY_FOR_15MIN_WHEN_CONNECT_FAIL:Z

    .line 3211
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3212
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    .line 3213
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3214
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3215
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3216
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3217
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 3218
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_TRYSETUP_AFTER_SIM_LOADED_ON_CDMA:Z

    .line 3219
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3220
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TOOL_DATA_BLOCK_HIDDEN_MENU:Z

    .line 3221
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3224
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3225
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 3226
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_WHEN_ADMIN_PDN_DSIABLED_VZW:Z

    .line 3227
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_KEEP_ROUTE_INFO_ON_SUSPEND_VZW:Z

    .line 3228
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_VZW:Z

    .line 3229
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRY_CONFIG_VZW:Z

    .line 3230
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 3231
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3232
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_SET_MTU_SIZE_VZW:Z

    .line 3233
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APN2_ENABLE_BACKUP_RESTORE_VZW:Z

    .line 3234
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_VZW_APN_RESTORE_TIME_SET_VZW:Z

    .line 3235
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VZWAPP_CHECK_PERMISSION_VZW:Z

    .line 3236
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_SET_DEFAULT_MTU_VZW:Z

    .line 3237
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3238
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_RECONN_NOT_ALLOWED_VZW:Z

    .line 3241
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_VZW:Z

    .line 3242
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_TRAFFICSTATS_EXTENSIONS_VZW:Z

    .line 3243
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_VZW_DATA_USAGE_DEFAULT_CONFIG_VZW:Z

    .line 3244
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_VZWAPNE_AT_COMMAND_VZW:Z

    .line 3245
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SUPPORT_SUPL_ON_DEFAULT_TYPE_VZW:Z

    .line 3247
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3896
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    if-eqz v0, :cond_1

    .line 3900
    const-string/jumbo v0, "none"

    const-string/jumbo v1, "net.pdnlist"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3902
    const-string/jumbo v0, "net.pdnlist"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3908
    :cond_1
    return-void

    .line 3253
    :cond_2
    const-string v0, "LGTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3256
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->RESETTING_FD_FOR_HO:Z

    .line 3257
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3261
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_CREATE_CDMADATACONNECTIONTRACKER:Z

    .line 3263
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3264
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3265
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3266
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3267
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

    .line 3268
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3269
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3270
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3271
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_BLOCK_ANOTHER_TYPE:Z

    .line 3272
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3273
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3274
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3275
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3279
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KR:Z

    .line 3280
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3282
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3283
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3284
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3286
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3287
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3288
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3289
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3290
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3291
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3293
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3294
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.support_mpdn"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3296
    iput v6, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3297
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3298
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 3299
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    .line 3300
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    .line 3301
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3312
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    .line 3314
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RETRY_UPLUS:Z

    .line 3315
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_QUERY_SELECTION_UPLUS:Z

    .line 3316
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_ON_UPLUS:Z

    .line 3317
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 3318
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3319
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    .line 3320
    iput v6, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3321
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    .line 3322
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_DUN_NV_ONOFF_UPLUS:Z

    .line 3323
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_LGU:Z

    .line 3324
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_1XEVDO_UPLUS:Z

    .line 3325
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LOCK_ORDER_UPLUS:Z

    .line 3326
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_HIPRI_TYPE_TIMER_UPLUS:Z

    .line 3327
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SUPPORT_NSWO_UPLUS:Z

    .line 3328
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BACKGROUND_DATA_NOTI_IN_AIRPLANE_UPLUS:Z

    .line 3329
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_REJECT_ODB_REATTACH_UPLUS:Z

    .line 3330
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    goto/16 :goto_0

    .line 3304
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 3305
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DEREGISTRATION:Z

    .line 3306
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    goto :goto_1

    .line 3331
    :cond_4
    const-string v0, "ATTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3332
    iput v7, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3333
    iput v7, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3334
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3335
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3336
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3337
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3338
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3339
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3340
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3341
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3342
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3343
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 3344
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 3345
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_RETRANSMISSION_ATT:Z

    .line 3346
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_BACKUP:Z

    .line 3347
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_VOICEPROTECTION_ATT:Z

    .line 3348
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_AVOID_UNEXPECTED_QUERY:Z

    .line 3349
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_FOTA_UPGRADE_ATT:Z

    .line 3350
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNPROVISION_ATT:Z

    .line 3351
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3352
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3353
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3354
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    goto/16 :goto_0

    .line 3355
    :cond_5
    const-string v0, "TMUSBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3356
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3357
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3358
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3359
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3360
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3361
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3362
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3363
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_DISABLE_ESM_INFO:Z

    .line 3364
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3365
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3366
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3367
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_QOS_NOTIFY:Z

    .line 3368
    const-string/jumbo v0, "persist.lgiqc.ext"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CIQ_TMUS:Z

    .line 3369
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3370
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SMCAUSE_NOTIFY:Z

    .line 3371
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_TMUS:Z

    .line 3372
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_WARNINGBYTE_TMUS:Z

    .line 3373
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_ROAMING_POPUP_TMUS:Z

    .line 3374
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHERING_APN_LIST:Z

    .line 3375
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_HANDLE_CONNECTING_DATACALL_ON_DCLISTCHANGED:Z

    .line 3376
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3377
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_CHANGE_UPSTREM_TYPE:Z

    .line 3378
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3379
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3380
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3381
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    goto/16 :goto_0

    .line 3382
    :cond_6
    const-string v0, "BELLBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3383
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3384
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3385
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3386
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3387
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_BELL:Z

    .line 3388
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3389
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3390
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3391
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    goto/16 :goto_0

    .line 3392
    :cond_7
    const-string v0, "RGSBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3393
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3394
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3395
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3396
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3397
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_RGS:Z

    .line 3398
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3399
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_IPV4_RETRY_RGS:Z

    .line 3400
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3401
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3402
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    goto/16 :goto_0

    .line 3403
    :cond_8
    const-string v0, "TLSBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3404
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3405
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3406
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3407
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3408
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_TLS:Z

    .line 3409
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MEAN_TPUT_TLS:Z

    .line 3410
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_ADD_APN_SCENARIO_TLS:Z

    .line 3411
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3412
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3413
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3414
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    goto/16 :goto_0

    .line 3415
    :cond_9
    const-string v0, "VTRBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3416
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3417
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3418
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3419
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3420
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AUTOPROFILE_CA_VTR:Z

    .line 3421
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3422
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3423
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3424
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    goto/16 :goto_0

    .line 3425
    :cond_a
    const-string v0, "KTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3428
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 3432
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3433
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3434
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3435
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3436
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3437
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_BLOCK_ANOTHER_TYPE:Z

    .line 3438
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3439
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3440
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3441
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3445
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KR:Z

    .line 3447
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3448
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3449
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3451
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3452
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3453
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 3454
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3455
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_USER3G_KR:Z

    .line 3456
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3457
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3458
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3459
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3460
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.support_mpdn"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3461
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3462
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3463
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 3464
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3465
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    .line 3466
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3467
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3468
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3478
    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    .line 3479
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    .line 3480
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_KT:Z

    .line 3481
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KT:Z

    .line 3482
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    .line 3483
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

    .line 3484
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    .line 3485
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_KAF_KT:Z

    .line 3486
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    goto/16 :goto_0

    .line 3471
    :cond_b
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 3472
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DEREGISTRATION:Z

    .line 3473
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    goto :goto_2

    .line 3488
    :cond_c
    const-string v0, "SKTBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3491
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 3495
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3496
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3497
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3498
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MANUALSEARCH:Z

    .line 3499
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3500
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3501
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3502
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_BLOCK_ANOTHER_TYPE:Z

    .line 3503
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_NOTAPPLIED_ON_DEFAULT_USERDATADISABLE:Z

    .line 3504
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

    .line 3505
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_MPDN:Z

    .line 3506
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3507
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTBROADCAST_BUTAPI_INBOOT:Z

    .line 3511
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KR:Z

    .line 3512
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    .line 3514
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    .line 3515
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    .line 3516
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3518
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KR:Z

    .line 3519
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_KR:Z

    .line 3520
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    .line 3521
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    .line 3522
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_USER3G_KR:Z

    .line 3523
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    .line 3524
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_LIMIT_KR:Z

    .line 3525
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_ADD_RT_API_KR:Z

    .line 3526
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    .line 3528
    iput v4, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3529
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.support_mpdn"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3530
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3531
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    .line 3532
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 3533
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3544
    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    .line 3545
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    .line 3546
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 3547
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_VOICE_5SEC_DELAY_SKT:Z

    .line 3548
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->IMSPowerOffdelaytime:I

    .line 3549
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3550
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    .line 3551
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ADD_PDN_RESET_API_SKT:Z

    .line 3552
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_DUN_TYPE_TIMER_SKT:Z

    .line 3553
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_DISABLE_BACKGROUND_SKT:Z

    goto/16 :goto_0

    .line 3536
    :cond_d
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PEND_STARTING_TIME:Z

    .line 3537
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DEREGISTRATION:Z

    .line 3538
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    .line 3539
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    goto :goto_3

    .line 3557
    :cond_e
    const-string v0, "DCMBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3560
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE:Z

    .line 3561
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_IPV6:Z

    .line 3562
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    .line 3563
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3564
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3565
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_REL8_PCH_NETWORK:Z

    .line 3566
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3570
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_APN_CHANGE_DCM:Z

    .line 3571
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PREFERAPN_SETTING_DCM:Z

    .line 3572
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_DSAC_NOTIFICATION_DCM:Z

    .line 3573
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DUAL_CONNECTIVITY_DCM:Z

    .line 3574
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_SOCKET_CONN_IN_OOS_DCM:Z

    .line 3575
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_APN_CHANGE_FOR_MDM_DCM:Z

    .line 3576
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_RETRY_READY_APN:Z

    .line 3577
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_VPN_DEF_PROXY_DCM:Z

    .line 3578
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_HANDLE_PERMANENT_CAUSE_DCM:Z

    .line 3579
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DORMANT_FD_ENHANCE_DCM:Z

    .line 3580
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_ROAMING_NOTI_DCM:Z

    .line 3581
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PREVENT_RECONNECT:Z

    .line 3582
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_TCP_BUFSIZE_DCM:Z

    .line 3583
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PSRETRY_ON_SCREENON:Z

    .line 3584
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_DISABLE_FETCHDUN:Z

    goto/16 :goto_0

    .line 3587
    :cond_f
    const-string v0, "MPCSBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3592
    const-string v0, "KDDIBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3594
    const-string v0, "GSM"

    const-string v1, "LG feature - KDDIBASE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3603
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3604
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3605
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3606
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_BLOCK_APP_REQUEST_WHEN_USER_DATA_DISABLED:Z

    .line 3607
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_ON_CDMA:Z

    .line 3608
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    .line 3609
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3610
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3611
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    .line 3612
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3613
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3614
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KEEP_INFO_ON_RAT_CHANGE:Z

    .line 3615
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3616
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_1XCSFB_SUPPORT:Z

    .line 3617
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_BEFORE_PROVISIONED:Z

    .line 3618
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_TRYSETUP_AFTER_SIM_LOADED_ON_CDMA:Z

    .line 3621
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KDDI:Z

    .line 3622
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_KDDI_USE_PREFERREDDUN_APN_KDDI:Z

    .line 3623
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BLOCK_TETHERINGPDN_ON_GSMROAMING_KDDI:Z

    .line 3624
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_KDDI_SUPPORT_DYNAMIC_APN_NAI_SETTING_FOR_CPA:Z

    .line 3625
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DELAY_GSMDCT_DISPOSE_WHEN_CDMADCT_RATTYPE_IN_26SEC_KDDI:Z

    .line 3626
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DONOT_DEACTIVATE_DUN_TYPE_KDDI:Z

    .line 3627
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_INTENT_ON_CONNECTED_KDDI:Z

    .line 3628
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DISABLE_ON_LEGACY_CDMA_KDDI:Z

    .line 3629
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_SET_APN_IA_TIMER_KDDI:Z

    .line 3630
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_KDDI_CPA_CONFIG_KDDI:Z

    .line 3631
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_KDDI_SET_TETHERING_DNS_KDDI:Z

    .line 3632
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PREFFERED_APN_SUPPORT_NON_DEFAULT_KDDI:Z

    .line 3633
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_KDDI_CPA_SUPPORT_ON_LEGACY_CDMA_KDDI:Z

    .line 3634
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_PCSCF_RESTORATION_KDDI:Z

    .line 3635
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KDDI:Z

    .line 3636
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_ROAMING_SET_ROAMING_STATUS:Z

    .line 3637
    sput-boolean v4, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_HOLD_REQUEST_DATA_CALL_FOR_DAN:Z

    .line 3641
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3648
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->NAI_support:I

    .line 3649
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->retry_interval:I

    .line 3650
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DefaultPDNdependancy:Z

    .line 3651
    iput v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3654
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->VZW_GFIT_IP_address_utilization:Z

    .line 3658
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_CPA_DNS_SETTING:Z

    .line 3662
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_SUSPENDED:Z

    .line 3666
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_APN_FOR_ROAMING:Z

    .line 3670
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->KDDI_TETHERING_DNS:Z

    .line 3673
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_IP_V6_BLOCK_CONFIG_ON_EHRPD_VZW:Z

    .line 3674
    const-string/jumbo v0, "ril.current.vzwfeature"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SEND_DATA_ROAM_POPUP_INTENT_VZW:Z

    .line 3679
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 3681
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->CDMA_CPA:Z

    .line 3682
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->KDDI_1X_DUN:Z

    .line 3683
    sput-boolean v3, Lcom/android/internal/telephony/LGfeature;->KDDI_dipose_GsmDCT:Z

    goto/16 :goto_0

    .line 3686
    :cond_10
    const-string v0, "SPCSBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3688
    const-string v0, "LGfeature"

    const-string v1, "base SPCSBASE!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    .line 3691
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 3692
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_CHECK_PROFILE_DB_EXTENSION_SPRINT:Z

    .line 3693
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_CONTROL_PDN_ON_POA:Z

    .line 3694
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SUPPORT_MPDN_SPRINT:Z

    .line 3695
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    .line 3696
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_HANDLE_MMS_WITH_DEFAULT_SPRINT:Z

    .line 3697
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_SIGNAL_STRENTH_TYPE:I

    .line 3698
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_OMADM_PROVISIONING_SPRINT:Z

    .line 3699
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_ON_CDMA:Z

    .line 3700
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_SET_SYSTEM_PROPERTIES_SPRINT:Z

    .line 3701
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_OMADM_BLOCK_SETUP_DATA_CALL_SPRINT:Z

    .line 3702
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_AUTH_MIP_ERROR_NOTIFICATION_FOR_POPUP_SPRINT:Z

    .line 3703
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DEBUG_RIL_CONN_HISTORY:Z

    .line 3704
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3705
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_DNS_SYSPROP_ENHANCE:Z

    .line 3706
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_SEND_INTENT_ON_DUN_FAILURE_SPRINT:Z

    .line 3707
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_MTU_SET_ROAMING_NETWORK:Z

    .line 3708
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BLOCK_DATA_CALL_ON_DEFAULT_MEID_ESN_SPRINT:Z

    .line 3709
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATAUSAGE_CONFIG_WARNING_VALUE_SPRINT:Z

    .line 3710
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_AVOID_APN_DB_ERASING_ON_FACTORY_DATA_RESET_AND_HFA_SPRINT:Z

    .line 3711
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_HIDDENMENU_BLOCK_DUMMY_TYPE_APN_DISPLAYING_SPRINT:Z

    .line 3712
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3713
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_GSM_GLOBAL_PREFERED_APN_SPR:Z

    .line 3714
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DISPLAY_DATAERROR_ICON_SPRINT:Z

    .line 3715
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_BUGFIX_SETUP_DATACALL_ON_UNKNOWN_TECH:Z

    .line 3716
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_TRYSETUP_AFTER_SIM_LOADED_ON_CDMA:Z

    .line 3717
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_DEACTIVATE_DATA_CALL_PENDING_RECOVERY:Z

    .line 3718
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_1XCSFB_SUPPORT:Z

    goto/16 :goto_0

    .line 3719
    :cond_11
    const-string v0, "VDFBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3720
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3721
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3722
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 3723
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DisableFD_OnTethering:Z

    .line 3724
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3725
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3726
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 3727
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 3728
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3729
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3730
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3731
    iput-boolean v4, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_AIRPLANEMODE_DETACH:Z

    .line 3732
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3733
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3734
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3735
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3736
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    .line 3738
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3739
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3740
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3741
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3742
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3743
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3744
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3745
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    goto/16 :goto_0

    .line 3748
    :cond_12
    const-string v0, "OPENBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3749
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3750
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3751
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ARBITRATION:Z

    .line 3752
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 3753
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DisableFD_OnTethering:Z

    .line 3754
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3755
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3756
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 3757
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 3758
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 3759
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3760
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3761
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3762
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3763
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3764
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3765
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3766
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_OFF_O2_DURING_GSMONLY:Z

    .line 3767
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NATIONAL_ROAMING:Z

    .line 3768
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    .line 3770
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3771
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3772
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3773
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3774
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3775
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3776
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3777
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    goto/16 :goto_0

    .line 3780
    :cond_13
    const-string v0, "DTAGBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3781
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3782
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3783
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ARBITRATION:Z

    .line 3784
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 3785
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->DisableFD_OnTethering:Z

    .line 3786
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3787
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3788
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 3789
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 3790
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3791
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3792
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3793
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3794
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3795
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3796
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3797
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ENABLE_DUAL_APN:Z

    .line 3798
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    .line 3800
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3801
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3802
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3803
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3804
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3805
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3806
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3807
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    goto/16 :goto_0

    .line 3810
    :cond_14
    const-string v0, "ORGBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3811
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3812
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3813
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_ARBITRATION:Z

    .line 3814
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_USER_SELECTION_SCEANARIO_EU:Z

    .line 3816
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3817
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3818
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_REDEFINE_PERMANENT_CAUSE_EU:Z

    .line 3819
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATADISABLED:Z

    .line 3820
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_SENDMMS_ON_DATAROAMINGDISABLED:Z

    .line 3821
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3822
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3823
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3824
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3825
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3826
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3827
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3828
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_BLOCK_GOOGLE_DNS:Z

    .line 3829
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    .line 3831
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_IPV46_PCSCF_INTERACE_ON_RIL_AFW:Z

    .line 3832
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_GET_PCSCF_ON_IMS_TYPE:Z

    .line 3833
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_CELL_INFO:Z

    .line 3834
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    .line 3835
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION:Z

    .line 3836
    iput v5, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DELAY_CLEANUP_FOR_DEREGISTRATION_VALUE:I

    .line 3837
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_SEND_CONNECTIVITY_ACTION_ON_EVENT_CONFIGURATION_CHANGED_FOR_IPV6:Z

    .line 3838
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_PCSCF_INTERFACE:Z

    goto/16 :goto_0

    .line 3841
    :cond_15
    const-string v0, "VIVBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3842
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3843
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3844
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3845
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3846
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3847
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3848
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3849
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3850
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3851
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3852
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3853
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3854
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3855
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3856
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    goto/16 :goto_0

    .line 3857
    :cond_16
    const-string v0, "CLRBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "SCABASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3858
    :cond_17
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3859
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3860
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3861
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3862
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3863
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3864
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3865
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3866
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3867
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3868
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3869
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3870
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3871
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3872
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    goto/16 :goto_0

    .line 3873
    :cond_18
    const-string v0, "TCLBASE"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3874
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_CONNECTIVITYSERVICE_NETSEARCH:Z

    .line 3875
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_RESTART_ON_RILERROR:Z

    .line 3876
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_RESET_PREFAPN_SIM_CHANGED:Z

    .line 3877
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_RIL_SETUP_PENDING_WHEN_DCT_CHANGE:Z

    .line 3878
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_IPV6_SUPPORT:Z

    .line 3879
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LG_DATA_RECOVERY:Z

    .line 3880
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTIFY_ALL_ON_RAT_CHANGED:Z

    .line 3881
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3882
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3883
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3884
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TCPIP_KEEP_SOCKET_ON_SUSPEND:Z

    .line 3885
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_TETHER_RESET_RETRY_CNT_ON_CONNECTED:Z

    .line 3886
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CHECK_DC_APN:Z

    .line 3887
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_DATA_DISABLED_BY_REQUEST:Z

    .line 3888
    iput-boolean v3, p0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_CAUSE_HANDLE_TYPE2_DETACH:Z

    goto/16 :goto_0

    .line 3892
    :cond_19
    const-string v0, "LGfeature"

    const-string v1, "Wrong feature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/LGfeature;
    .locals 4

    .prologue
    .line 3176
    sget-object v0, Lcom/android/internal/telephony/LGfeature;->sLGfeature:Lcom/android/internal/telephony/LGfeature;

    if-nez v0, :cond_0

    .line 3178
    new-instance v0, Lcom/android/internal/telephony/LGfeature;

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.afwdata.LGfeatureset"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/LGfeature;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/LGfeature;->sLGfeature:Lcom/android/internal/telephony/LGfeature;

    .line 3180
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LGfeature;->sLGfeature:Lcom/android/internal/telephony/LGfeature;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/LGfeature;
    .locals 1
    .parameter "c"
    .parameter "featureset"

    .prologue
    .line 3185
    sget-object v0, Lcom/android/internal/telephony/LGfeature;->sLGfeature:Lcom/android/internal/telephony/LGfeature;

    if-nez v0, :cond_0

    .line 3187
    new-instance v0, Lcom/android/internal/telephony/LGfeature;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LGfeature;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/LGfeature;->sLGfeature:Lcom/android/internal/telephony/LGfeature;

    .line 3189
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/LGfeature;->sLGfeature:Lcom/android/internal/telephony/LGfeature;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3912
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "my featureset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MPDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NAI_SUPPORT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LGfeature;->NAI_support:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
