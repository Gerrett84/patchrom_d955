.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_CAMPED_MCC_CHANGE:Ljava/lang/String; = "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

.field public static final ACTION_CDMA_REQUEST_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET"

.field public static final ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED:Ljava/lang/String; = "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED"

.field public static final ACTION_DATA_CONNECTION_FAILED:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_FAILED"

.field public static final ACTION_DATA_ENABLED_SETTING_BOOTABLE_SKT:Ljava/lang/String; = "com.lge.DataEnabledSettingBootableSKT"

.field public static final ACTION_DATA_NETWORK_MODE_PAYPOPUP_KT:Ljava/lang/String; = "com.lge.DataNetworkModePayPopupKT"

.field public static final ACTION_DATA_NETWORK_MODE_PAYPOPUP_LGT:Ljava/lang/String; = "com.lge.DataNetworkModePayPopupLGT"

.field public static final ACTION_DATA_ROAMING_MENU:Ljava/lang/String; = "com.lge.android.intent.action.ACTION_DATA_ROAMING_MENU"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_ERI_VERSION_WRITE:Ljava/lang/String; = "android.intent.action.ACTION_ERI_VERSION_WRITE"

.field public static final ACTION_IMS_APN_CHANGED:Ljava/lang/String; = "com.lge.android.intent.action.IMS_APN_CHANGED"

.field public static final ACTION_LGE_UNSOL_IS_LTE_AVAILABLE:Ljava/lang/String; = "android.intent.action.LGE_UNSOL_IS_LTE_AVAILABLE"

.field public static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MANAGED_ROAMING_IND"

.field public static final ACTION_NETWORK_SET_TIME:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIMEZONE:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIMEZONE"

.field public static final ACTION_PBM_INIT_COMPLETE:Ljava/lang/String; = "android.intent.action.ACTION_PBM_INIT_COMPLETE"

.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_SAFE_WIFI_CHANNELS_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_START_TO_TURNED_OFF_PSDATA:Ljava/lang/String; = "lg.android.intent.action.ACTION_START_TO_TURNED_OFF_PSDATA"

.field public static final ACTION_TEMP_REJECT:Ljava/lang/String; = "com.lge.intent.action.temp_reject"

.field public static final DATA_DM_UPDATE_COMPLETE:Ljava/lang/String; = "lge.android.intent.action.DATA_DM_UPDATE_COMPLETE"

.field public static final EXTRA_BY_LTE_REJECT:Ljava/lang/String; = "byLteReject"

.field public static final EXTRA_GMM_REJECT:Ljava/lang/String; = "gmmReject"

.field public static final EXTRA_LTE_OVERLAY:Ljava/lang/String; = "LTE_Overlay"

.field public static final EXTRA_MM_REJECT:Ljava/lang/String; = "mmReject"

.field public static final EXTRA_NEW_MCC:Ljava/lang/String; = "newmcc"

.field public static final EXTRA_OLD_MCC:Ljava/lang/String; = "oldmcc"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final REJECT_CHANGED_TEMP_TO_NORMAL:Ljava/lang/String; = "reject_changed_temp_to_normal"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"

.field public static final VOICE_STK_CC_MODIFIED:Ljava/lang/String; = "com.lge.android.intent.action.voice_stk_cc_modified"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
