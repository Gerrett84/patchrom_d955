.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$LteStateInfo;,
        Lcom/android/internal/telephony/PhoneConstants$EmcFailCause;,
        Lcom/android/internal/telephony/PhoneConstants$SIBInfoForEPDN;,
        Lcom/android/internal/telephony/PhoneConstants$VolteAndEPDNSupport;,
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final ACTION_LGU_LTE_ROAMING_IS_AVAILABLE:Ljava/lang/String; = "lge.intent.action.LGU_LTE_ROAMING_IS_AVAILABLE"

.field public static final ACTION_VOLTE_EMERGENCY_CALL_FAIL_CAUSE:Ljava/lang/String; = "lge.intent.action.DATA_EMERGENCY_FAILED"

.field public static final ACTION_VOLTE_EPS_NETWORK_SUPPORT:Ljava/lang/String; = "lge.intent.action.LTE_NETWORK_SUPPORTED_INFO"

.field public static final ACTION_VOLTE_LTE_STATE_INFO:Ljava/lang/String; = "lge.intent.action.LTE_STATE_INFO"

.field public static final ACTION_VOLTE_NETWORK_SIB_INFO:Ljava/lang/String; = "lge.intent.action.LTE_NETWORK_SIB_INFO"

.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "admin"

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_BIP:Ljava/lang/String; = "bip"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final APN_TYPE_ENTITLEMENT:Ljava/lang/String; = "entitlement"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_INTERNET:Ljava/lang/String; = "internet"

.field public static final APN_TYPE_KTMULTIRAB1:Ljava/lang/String; = "ktmultirab1"

.field public static final APN_TYPE_KTMULTIRAB2:Ljava/lang/String; = "ktmultirab2"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_RCS:Ljava/lang/String; = "rcs"

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APN_TYPE_TETHERING:Ljava/lang/String; = "tethering"

.field public static final APN_TYPE_VZW800:Ljava/lang/String; = "vzw800"

.field public static final APN_TYPE_VZWAPP:Ljava/lang/String; = "vzwapp"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_LINK_CAPABILITIES_KEY:Ljava/lang/String; = "linkCapabilities"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final DATA_SMCAUSE:Ljava/lang/String; = "smCause"

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x4

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I = 0x0

.field public static PRESENTATION_ALLOWED:I = 0x0

.field public static PRESENTATION_PAYPHONE:I = 0x0

.field public static PRESENTATION_RESTRICTED:I = 0x0

.field public static PRESENTATION_UNKNOWN:I = 0x0

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"

.field public static final sEMC_FailCause:Ljava/lang/String; = "EMC_FailCause"

.field public static final sEPDN_Barring:Ljava/lang/String; = "EPDN_Barring"

.field public static final sEPDN_Support:Ljava/lang/String; = "EPDN_Support"

.field public static final sEmer_Attach_Support:Ljava/lang/String; = "Emer_Attach_Support"

.field public static final sEmer_Camped_CID:Ljava/lang/String; = "Emer_Camped_CID"

.field public static final sEmer_Camped_TAC:Ljava/lang/String; = "Emer_Camped_TAC"

.field public static final sLteDetachCause:Ljava/lang/String; = "LteDetachCause"

.field public static final sLteRoamingIsAvailable:Ljava/lang/String; = "Lte_Roaming_Is_Available"

.field public static final sLteStateInfo:Ljava/lang/String; = "LteStateInfo"

.field public static final sVoPS_Support:Ljava/lang/String; = "VoPS_Support"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 73
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    .line 74
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    .line 75
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
