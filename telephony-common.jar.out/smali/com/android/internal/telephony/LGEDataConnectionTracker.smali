.class public Lcom/android/internal/telephony/LGEDataConnectionTracker;
.super Landroid/os/Handler;
.source "LGEDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGEDataConnectionTracker$2;,
        Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;
    }
.end annotation


# static fields
.field public static final ACTION_GW_ROAMING_DATA_CONNECTION_LGU:Ljava/lang/String; = "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

.field public static final ACTION_LTE_ROAMING_DATA_CONNECTION_LGU:Ljava/lang/String; = "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

.field static final ApplyToprotectionVoiceInMobie:I = 0x1

.field protected static final BASE:I = 0x42000

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201d

.field public static final DATA_LTE_ROAMING:Ljava/lang/String; = "data_lte_roaming"

.field protected static final EVENT_APN_CHANGED:I = 0x42013

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x42014

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x42019

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x42015

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201e

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field protected static final EVENT_CPA_PACKAGE_CHECK:I = 0x4203c

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field protected static final EVENT_DATA_ERROR_FAIL_CAUSE:I = 0x4202c

.field protected static final EVENT_DATA_LOCK_STATE_CHANGED:I = 0x42032

.field public static final EVENT_DATA_PROFILE_NV:I = 0x42037

.field public static final EVENT_DATA_RADIO_ON:I = 0x42038

.field protected static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field protected static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field protected static final EVENT_DEFAULT_SETUP:I = 0x4203e

.field protected static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field protected static final EVENT_DO_RECOVERY:I = 0x42012

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x4200d

.field protected static final EVENT_FAKE_DATACONNECTION_EVENT:I = 0x4203d

.field protected static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x42024

.field protected static final EVENT_GET_W_MODEM_INFO_CS_PROTECTION:I = 0x4202e

.field protected static final EVENT_GO_FASTDORMANCY_DELAYED:I = 0x42035

.field protected static final EVENT_ICC_CHANGED:I = 0x42021

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x4200a

.field protected static final EVENT_MODEM_DATA_PROFILE_READY:I = 0x42025

.field public static final EVENT_OMADM_LOCK_NV:I = 0x42036

.field protected static final EVENT_PACKET_PAGING_RECEIVED:I = 0x42034

.field protected static final EVENT_PCSCF_ADDR_CHANGED:I = 0x4202b

.field protected static final EVENT_POLL_PDP:I = 0x42005

.field protected static final EVENT_PREFERRED_NETWORK_TYPE_CHANGED:I = 0x42027

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field protected static final EVENT_PS_RETRY_RESET:I = 0x42026

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final EVENT_RADIO_REGISTERED_TO_NETWORK:I = 0x42031

.field protected static final EVENT_RAT_CHANGED:I = 0x4202d

.field protected static final EVENT_READ_MODEM_PROFILES:I = 0x42023

.field protected static final EVENT_RECORDS_LOADED:I = 0x42002

.field protected static final EVENT_RESET_DONE:I = 0x4201c

.field protected static final EVENT_RESTART_RADIO:I = 0x4201a

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x4200e

.field public static final EVENT_RESYNC:I = 0x42039

.field protected static final EVENT_ROAMING_OFF:I = 0x4200c

.field protected static final EVENT_ROAMING_ON:I = 0x4200b

.field protected static final EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY:I = 0x4202f

.field protected static final EVENT_SET_INTERNAL_DATA_ENABLE:I = 0x4201b

.field protected static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x42022

.field protected static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static final EVENT_WAIT_PENDING:I = 0x42033

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][LGEDCT] "

.field protected static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x42028

.field protected static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x42029

.field static final SKT_mms_apn:Ljava/lang/String; = "mmsonly.sktelecom.com"

.field public static mJustIsBTConnected:Z = false

.field public static mJustIsWifiConnected:Z = false

.field public static final sConnectionStatus:Ljava/lang/String; = "Connection_Status"

.field private static setTeardownRequested:[Z

.field private static voice_call_ing:Z


# instance fields
.field protected APN_ID_FOR_IMS:I

.field protected APN_ID_FOR_LTE_Roaming:I

.field public bConnectionStatus:Z

.field protected exist_ims_type_in_mpdn:Z

.field isGsm:Z

.field protected is_single_apn_flow:Z

.field protected mConnMgr:Landroid/net/ConnectivityManager;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field final notificationId:I

.field private original_apn_formms:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    sput-boolean v1, Lcom/android/internal/telephony/LGEDataConnectionTracker;->voice_call_ing:Z

    .line 198
    const/16 v0, 0x12

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->setTeardownRequested:[Z

    .line 199
    sput-boolean v1, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    .line 201
    sput-boolean v1, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsBTConnected:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 12
    .parameter "mmdct"
    .parameter "p"

    .prologue
    const/16 v11, 0x9f6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 636
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 189
    iput-object v10, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    .line 193
    iput-boolean v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->exist_ims_type_in_mpdn:Z

    .line 211
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 213
    iput-boolean v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    .line 223
    iput v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->APN_ID_FOR_LTE_Roaming:I

    .line 224
    iput v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->APN_ID_FOR_IMS:I

    .line 233
    iput-boolean v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    .line 239
    iput v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->notificationId:I

    .line 242
    new-instance v5, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/LGEDataConnectionTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2370
    new-instance v5, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/LGEDataConnectionTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

    .line 638
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v8, "LGEDataConnectionTracker() has created"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-object p1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 640
    iput-object p2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 642
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v8, "KTBASE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v8, "SKTBASE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v8, "LGTBASE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 646
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "other country do not use this function. so return."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :goto_0
    return-void

    .line 650
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 651
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v5, "lge.test.limit_data_usage"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v5, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v5, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    const-string v5, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v5, "com.skt.test_intent"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v5, "com.kt.CALL_PROTECTION_CALL_START"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v5, "com.kt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v5, "com.kt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v5, "com.lge.GprsAttachedIsTrue"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    const-string v5, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v5, "lge.android.telephony.dataflow"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v5, "ACTIVATE_SETUP_DATA_CALL"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    iget-object v5, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v8, 0x42001

    invoke-interface {v5, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 672
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 673
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    const v8, 0x42010

    invoke-virtual {v5, p0, v8, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 674
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    const v8, 0x42031

    invoke-virtual {v5, p0, v8, v10}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 680
    :cond_1
    iget-object v5, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v8, 0x42034

    invoke-interface {v5, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registorForPacketPaging(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 682
    iget-object v5, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v8, 0x42004

    invoke-interface {v5, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 684
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 685
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    const v8, 0x42008

    invoke-virtual {v5, p0, v8, v10}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 686
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v5

    const v8, 0x42007

    invoke-virtual {v5, p0, v8, v10}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 690
    :cond_2
    const v5, 0x4203d

    invoke-virtual {p1, p0, v5, v10}, Lcom/android/internal/telephony/DataConnectionTracker;->registerForDataConnectEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 692
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 693
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v8, 0x42021

    invoke-virtual {v5, p0, v8, v10}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 695
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v8, v1, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 696
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 700
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    if-ne v5, v6, :cond_3

    .line 702
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enable_call_protect_when_calling"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    const-string v5, "net.is_dropping_packet"

    const-string v8, "false"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 717
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 719
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v5, :cond_4

    .line 720
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 721
    iput-boolean v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->isGsm:Z

    .line 728
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    if-ne v5, v6, :cond_5

    .line 729
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    .line 730
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Landroid/app/Notification;->when:J

    .line 731
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 732
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    const v8, 0x108008a

    iput v8, v5, Landroid/app/Notification;->icon:I

    .line 733
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 734
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x1000

    invoke-static {v8, v7, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 737
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x20b0318

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 738
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x20b0317

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 739
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 741
    const-string v5, "SKTBASE"

    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 742
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.lgesetting.wireless.DataEnabledSettingBootableSKT"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 755
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v0, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 758
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 761
    .local v3, notificationManager:Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-nez v5, :cond_5

    .line 762
    const-string v5, "[LGE_DATA][LGEDCT] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGEDataConnectionTracker]setNotification: put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 770
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;->register(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 743
    .restart local v0       #details:Ljava/lang/CharSequence;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v4       #title:Ljava/lang/CharSequence;
    :cond_6
    const-string v5, "KTBASE"

    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 744
    const-string v5, "com.android.settings"

    const-string v8, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupKT"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v8, "isRoaming"

    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    move v5, v7

    goto :goto_2

    .line 746
    :cond_8
    const-string v5, "LGTBASE"

    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 747
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupLGT"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 750
    :cond_9
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "[LGEDataConnectionTracker] it\'s abnormal case"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->setTeardownRequested:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/LGEDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->handleLTEDataOnRoamingChange()V

    return-void
.end method

.method private deleteDefualt_DNS(Z)V
    .locals 10
    .parameter "is_mpdn_issue"

    .prologue
    .line 1705
    const/4 v0, 0x0

    .line 1706
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    const/4 v6, 0x0

    .line 1708
    .local v6, p:Landroid/net/LinkProperties;
    if-eqz p1, :cond_1

    .line 1709
    iget-object v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 1710
    iget-object v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1717
    :goto_0
    const-string v7, "[LGE_DATA][LGEDCT] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteDefualt_DNS for check (is_mpdn_issue) :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "checkInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1722
    if-nez v6, :cond_2

    .line 1740
    :cond_0
    return-void

    .line 1713
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 1714
    iget-object v7, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    .line 1724
    :cond_2
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v2

    .line 1726
    .local v2, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1728
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 1730
    .local v1, dns:Ljava/net/InetAddress;
    const/4 v3, 0x1

    .line 1732
    .local v3, i:I
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0.0.0.0"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1734
    const-string v7, "[LGE_DATA][LGEDCT] "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete dns "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2223
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 2224
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 2226
    .local v2, modemNetworkMode:I
    const-string v3, "[LGE_DATA][LGEDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-object v3, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v1

    .line 2229
    .local v1, curPreferMode:I
    const-string v3, "[LGE_DATA][LGEDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeReponse: curPreferMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 2249
    :cond_0
    const-string v3, "[LGE_DATA][LGEDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    if-eq v2, v1, :cond_1

    .line 2254
    const-string v3, "[LGE_DATA][LGEDCT] "

    const-string v4, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != curPreferMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    const-string v3, "[LGE_DATA][LGEDCT] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetPreferredNetworkTypeResponse: setPreferredNetworkMode set to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v3, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    .line 2280
    .end local v1           #curPreferMode:I
    .end local v2           #modemNetworkMode:I
    :cond_1
    :goto_0
    return-void

    .line 2276
    .restart local v1       #curPreferMode:I
    .restart local v2       #modemNetworkMode:I
    :cond_2
    const-string v3, "[LGE_DATA][LGEDCT] "

    const-string v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-object v3, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleLTEDataOnRoamingChange()V
    .locals 4

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->getLTEDataRoamingEnable()Z

    move-result v0

    .line 2397
    .local v0, enableDataLteRoaming:Z
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLTEDataOnRoamingChange(), enableDataLteRoaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ApnSelectionHandler;->selectApnForLteRoamingOfUplus(Z)V

    .line 2400
    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2283
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2285
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 2286
    const-string v1, "[LGE_DATA][LGEDCT] "

    const-string v2, "SetPreferredNetworkType is success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :goto_0
    return-void

    .line 2288
    :cond_0
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPreferredNetworkType is failed, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const v2, 0x42028

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 4
    .parameter "reason"

    .prologue
    .line 1770
    const/4 v1, 0x1

    .line 1771
    .local v1, retry:Z
    const-string v2, "persist.telephony.mpdn"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1772
    .local v0, SUPPORT_MPDN:Z
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    const-string v2, "SinglePdnArbitration"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1774
    :cond_0
    const/4 v1, 0x0

    .line 1776
    :cond_1
    return v1
.end method


# virtual methods
.method public changePreferrredNetworkMode(Z)V
    .locals 13
    .parameter "enabled"

    .prologue
    const v12, 0x42029

    const/4 v11, 0x1

    .line 2079
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v5, -0x1

    .line 2080
    .local v5, newPreferMode:I
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v1

    .line 2081
    .local v1, curPreferMode:I
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 2083
    .local v2, curRadioTech:I
    const/4 v0, 0x0

    .line 2086
    .local v0, Is_LWmode_selected:Z
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] enabled:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curPreferMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", curRadioTech:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "mobile_data"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2091
    .local v3, dataNetwork:I
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "data_roaming"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2092
    .local v7, roamingData:I
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lte_roaming"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2093
    .local v4, lteRoaming:I
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    .line 2095
    .local v6, roaming:Z
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 2097
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[sehyun] dataNetwork = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", roamingData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lteRoaming = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    if-eqz v4, :cond_0

    if-nez v7, :cond_1

    .line 2217
    :cond_0
    :goto_0
    return-void

    .line 2102
    :cond_1
    if-eqz p1, :cond_5

    .line 2103
    sparse-switch v1, :sswitch_data_0

    .line 2199
    :cond_2
    :goto_1
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] newPreferMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / curPreferMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    if-eq v5, v1, :cond_0

    .line 2203
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] change to newPreferMode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    if-eqz v0, :cond_b

    .line 2208
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 2107
    :sswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v8, :cond_3

    .line 2108
    const/16 v5, 0x9

    .line 2109
    goto :goto_1

    .line 2114
    :cond_3
    :sswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_USER3G_KR:Z

    if-eqz v8, :cond_4

    .line 2116
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] User_3g_mode_maintain : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2124
    :cond_4
    :sswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v8, :cond_2

    .line 2125
    const/16 v5, 0xc

    .line 2126
    goto/16 :goto_1

    .line 2138
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_DEREGISTRATION:Z

    if-eqz v8, :cond_6

    .line 2139
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnectionTracker;->isCompleteIMSforDelayTime()Z

    .line 2143
    :cond_6
    sparse-switch v1, :sswitch_data_1

    .line 2189
    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x6

    if-eq v1, v8, :cond_2

    const/4 v8, 0x4

    if-eq v1, v8, :cond_2

    const/16 v8, 0xa

    if-ne v1, v8, :cond_2

    const/16 v8, 0xd

    if-eq v2, v8, :cond_2

    goto/16 :goto_1

    .line 2147
    :sswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v8, :cond_8

    .line 2148
    const/4 v5, 0x3

    .line 2151
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_PROFILE_SETTING_SINGLE_PDN:Z

    if-eqz v8, :cond_7

    .line 2152
    const/4 v5, 0x0

    goto :goto_2

    .line 2161
    :cond_8
    :sswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODE_CHANGE_USER3G_KR:Z

    if-eqz v8, :cond_9

    .line 2163
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] User_3g_mode_maintain : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2171
    :cond_9
    :sswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v8, :cond_a

    .line 2172
    const/4 v5, 0x2

    .line 2176
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MODECHANGE_KT:Z

    if-eqz v8, :cond_7

    .line 2178
    const/4 v0, 0x1

    .line 2179
    const-string v8, "[LGE_DATA][LGEDCT] "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[changePreferrredNetworkMode] Is_LWmode_selected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2213
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2214
    iget-object v8, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    goto/16 :goto_0

    .line 2103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_2
    .end sparse-switch

    .line 2143
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x9 -> :sswitch_3
        0xc -> :sswitch_5
    .end sparse-switch
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v1, "KTBASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v1, "SKTBASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v1, "LGTBASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2301
    const-string v0, "[LGE_DATA][LGEDCT] "

    const-string v1, "other country do not use this function. so return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :goto_0
    return-void

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 2313
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

    if-eqz v0, :cond_1

    .line 2314
    iget-boolean v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->isGsm:Z

    if-eqz v0, :cond_1

    .line 2315
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x3ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 2320
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregistorForPacketPaging(Landroid/os/Handler;)V

    .line 2324
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker;->unregisterForDataConnectEvent(Landroid/os/Handler;)V

    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I
    .locals 17
    .parameter "dp"
    .parameter "nodbID"

    .prologue
    .line 1855
    move-object/from16 v14, p1

    check-cast v14, Lcom/android/internal/telephony/ApnSetting;

    .line 1857
    .local v14, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->lgDatagetMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;

    move-result-object v15

    .line 1858
    .local v15, maintype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, v15}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v13

    .line 1859
    .local v13, AFWID:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    invoke-virtual {v1, v13, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->switchingFixedtype(II)I

    move-result v2

    .line 1861
    .local v2, pdnId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 1862
    const-string v1, "[LGE_DATA][LGEDCT] "

    const-string v7, "APN_INVALID_ID"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    .end local p2
    :goto_0
    return p2

    .line 1866
    .restart local p2
    :cond_0
    const/4 v3, 0x0

    .line 1868
    .local v3, apnLength:I
    iget-object v4, v14, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 1869
    .local v4, apn:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1870
    const-string v1, "[LGE_DATA][LGEDCT] "

    const-string v7, "apn is null"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1873
    :cond_1
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apn is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1877
    const/4 v5, 0x0

    .line 1879
    .local v5, ipType:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpTypeFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v5

    .line 1881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    .line 1882
    const-string v1, "[LGE_DATA][LGEDCT] "

    const-string v7, "IP_VERSION_SUPPORT_TYPE_NOT_AVAILABLE"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1886
    :cond_2
    const/4 v6, 0x0

    .line 1888
    .local v6, inactivityTime:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    if-eqz v1, :cond_3

    .line 1890
    iget v6, v14, Lcom/android/internal/telephony/ApnSetting;->inactivityTime:I

    .line 1891
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dprilmsg inactivityTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_3
    const/4 v9, 0x0

    .line 1896
    .local v9, esminfo:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-eqz v1, :cond_4

    .line 1898
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APN ID is  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/internal/telephony/DataProfile;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/DataProfile;->id:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->APN_ID_FOR_LTE_Roaming:I

    if-le v1, v7, :cond_7

    .line 1901
    const/4 v9, 0x1

    .line 1911
    :cond_4
    :goto_1
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "esminfo  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v1, v7, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->getOrSetDB(ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    iget v8, v14, Lcom/android/internal/telephony/DataProfile;->authType:I

    iget-object v10, v14, Lcom/android/internal/telephony/DataProfile;->user:Ljava/lang/String;

    iget-object v11, v14, Lcom/android/internal/telephony/DataProfile;->password:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->sendPdnTable(IILjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->getOrSetDB(ZILjava/lang/String;)Ljava/lang/String;

    .line 1922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC:Z

    if-eqz v1, :cond_6

    .line 1924
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->lgDatagetMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;

    move-result-object v16

    .line 1927
    .local v16, pdntype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    if-eqz v1, :cond_5

    .line 1929
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE_DATA_APN] Used the single APN in roaming network : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    if-eqz v1, :cond_5

    .line 1931
    const-string v16, "default"

    .line 1936
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->disconnectonlyChangedPDN(Ljava/lang/String;)V

    .end local v16           #pdntype:Ljava/lang/String;
    :cond_6
    :goto_2
    move/from16 p2, v2

    .line 1956
    goto/16 :goto_0

    .line 1904
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    const/4 v7, 0x6

    if-ne v1, v7, :cond_4

    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/internal/telephony/DataProfile;->id:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->APN_ID_FOR_IMS:I

    if-ne v1, v7, :cond_4

    .line 1906
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1944
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v1, :cond_9

    .line 1945
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->lgDatagetMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;

    move-result-object v16

    .line 1946
    .restart local v16       #pdntype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    if-nez v1, :cond_9

    const-string v1, "default"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1947
    const-string v1, "[LGE_DATA][LGEDCT] "

    const-string v7, "[LGE_DATA_APN] disconnect default for set preferredAPN"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->disconnectonlyChangedPDN(Ljava/lang/String;)V

    .line 1953
    .end local v16           #pdntype:Ljava/lang/String;
    :cond_9
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sending apn is same with old one id= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getLTEDataRoamingEnable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2363
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2364
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "data_lte_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2366
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 2365
    :catch_0
    move-exception v1

    .line 2366
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    .prologue
    .line 1810
    const/4 v3, 0x0

    .line 1811
    .local v3, isConnecting:Z
    const/4 v4, 0x1

    .line 1812
    .local v4, isFailed:Z
    const/4 v2, 0x0

    .line 1814
    .local v2, isAnyEnabled:Z
    iget-object v5, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1815
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1816
    const/4 v2, 0x1

    .line 1817
    sget-object v5, Lcom/android/internal/telephony/LGEDataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1820
    :pswitch_0
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "overall state is CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 1848
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_1
    return-object v5

    .line 1824
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_1
    const/4 v3, 0x1

    .line 1825
    const/4 v4, 0x0

    .line 1826
    goto :goto_0

    .line 1829
    :pswitch_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1835
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    .line 1836
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "overall state is IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1840
    :cond_2
    if-eqz v3, :cond_3

    .line 1841
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "overall state is CONNECTING"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1843
    :cond_3
    if-nez v4, :cond_4

    .line 1844
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "overall state is IDLE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1847
    :cond_4
    const-string v5, "[LGE_DATA][LGEDCT] "

    const-string v6, "overall state is FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 1817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public handleCSProtection(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 1682
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1683
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "handleCSProtection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1686
    .local v0, ModemInfo:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1687
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSProtection ModemInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1690
    .local v1, bEnabled:Z
    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-eqz v2, :cond_0

    .line 1691
    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v5, ""

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 1699
    .end local v0           #ModemInfo:Ljava/lang/String;
    .end local v1           #bEnabled:Z
    :cond_0
    :goto_1
    return-void

    .line 1691
    .restart local v0       #ModemInfo:Ljava/lang/String;
    .restart local v1       #bEnabled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1696
    .end local v0           #ModemInfo:Ljava/lang/String;
    .end local v1           #bEnabled:Z
    :cond_2
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCSProtection, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 81
    .parameter "msg"

    .prologue
    .line 779
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1675
    :cond_0
    :goto_0
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unidentified event msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_1
    :goto_1
    return-void

    .line 783
    :sswitch_0
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_RADIO_AVAILABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v2, "upgrade.mpdn.db"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_2

    .line 789
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "Netowrk mode change from gw to gwl when upgrade APN DB"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    .line 793
    :cond_2
    const-string v2, "upgrade.mpdn.db"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 798
    const-string v2, "net.Is_phone_booted"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    .line 800
    .local v65, mbooting_phone:Z
    if-eqz v65, :cond_1

    .line 801
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 803
    .local v66, model:Ljava/lang/String;
    const-string v2, "LG-F160S"

    move-object/from16 v0, v66

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "LG-F180S"

    move-object/from16 v0, v66

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "LG-F200S"

    move-object/from16 v0, v66

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 808
    :cond_3
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] NV model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 811
    :cond_4
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] Non NV model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    .line 813
    .local v64, mContext:Landroid/content/Context;
    invoke-virtual/range {v64 .. v64}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_rab_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/16 v39, 0x1

    .line 814
    .local v39, bEnabled:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-eqz v2, :cond_7

    .line 815
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] bEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v7, ""

    if-eqz v39, :cond_6

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v4, v7, v2}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_1

    .line 813
    .end local v39           #bEnabled:Z
    :cond_5
    const/16 v39, 0x0

    goto :goto_2

    .line 816
    .restart local v39       #bEnabled:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 819
    :cond_7
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA]dataMgr Null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 828
    .end local v39           #bEnabled:Z
    .end local v64           #mContext:Landroid/content/Context;
    .end local v65           #mbooting_phone:Z
    .end local v66           #model:Ljava/lang/String;
    :sswitch_1
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "onDataConnectionAttached"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_1

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const-string v3, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 841
    :sswitch_2
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_RADIO_REGISTERED_TO_NETWORK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_1

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const-string v3, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 851
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onLockStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 857
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v64

    .line 859
    .restart local v64       #mContext:Landroid/content/Context;
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_PACKET_PAGING_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 861
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "mFDTimeoutMaxCount 10sec"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v54, Landroid/content/Intent;

    const-string v2, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v54

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v54, intent:Landroid/content/Intent;
    const-string v2, "value"

    const/4 v3, 0x1

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    move-object/from16 v0, v64

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 867
    .end local v54           #intent:Landroid/content/Intent;
    :cond_8
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "Packet Paing Drop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 874
    .end local v64           #mContext:Landroid/content/Context;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/AsyncResult;

    .line 876
    .local v38, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v72

    .line 878
    .local v72, p:Landroid/net/LinkProperties;
    move-object/from16 v0, v38

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v45, v2

    check-cast v45, Ljava/util/ArrayList;

    .line 880
    .local v45, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DATA_STATE_CHANGED = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    move-object/from16 v0, v38

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 884
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "onDataStateChanged(ar): exception; likely radio not available, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 887
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/ApnContext;

    .line 890
    .local v29, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v29, :cond_a

    .line 891
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_a

    .line 892
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA_STATE]Default is connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_a
    const/16 v58, 0x0

    .line 898
    .local v58, isAnyDataCallDormant:Z
    const/16 v57, 0x0

    .line 901
    .local v57, isAnyDataCallActive:Z
    if-eqz v72, :cond_d

    if-eqz v45, :cond_d

    .line 903
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .local v52, i$:Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/android/internal/telephony/DataCallState;

    .line 904
    .local v68, newState:Lcom/android/internal/telephony/DataCallState;
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "iface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v72 .. v72}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    move-object/from16 v0, v68

    iget-object v2, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual/range {v72 .. v72}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 906
    move-object/from16 v0, v68

    iget v2, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/16 v57, 0x1

    .line 907
    :cond_c
    move-object/from16 v0, v68

    iget v2, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/16 v58, 0x1

    goto :goto_4

    .line 913
    .end local v52           #i$:Ljava/util/Iterator;
    .end local v68           #newState:Lcom/android/internal/telephony/DataCallState;
    :cond_d
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnyDataCallActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v57

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  isAnyDataCallDormant = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    if-eqz v58, :cond_1

    if-nez v57, :cond_1

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/ActivityManager;

    .line 922
    .local v28, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v76

    .line 923
    .local v76, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v76, :cond_1

    .line 926
    const/4 v2, 0x0

    move-object/from16 v0, v76

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v79, v0

    .line 927
    .local v79, topActivity:Landroid/content/ComponentName;
    invoke-virtual/range {v79 .. v79}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v67

    .line 928
    .local v67, name:Ljava/lang/String;
    invoke-virtual/range {v79 .. v79}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v80

    .line 929
    .local v80, topclassname:Ljava/lang/String;
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topActivity.getPackageName(); = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topActivity.getClassName(); = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE CALL\t::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/LGEDataConnectionTracker;->voice_call_ing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v2, "com.android.phone.InCallScreen"

    move-object/from16 v0, v80

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/LGEDataConnectionTracker;->voice_call_ing:Z

    if-eqz v2, :cond_1

    .line 935
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(InCallScreen) topActivity.getClassName(); = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v4, ""

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_e

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 942
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "functionForPacketDrop is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    new-instance v54, Landroid/content/Intent;

    const-string v2, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v54

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .restart local v54       #intent:Landroid/content/Intent;
    const-string v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v54

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 944
    .end local v54           #intent:Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v53

    .line 949
    .local v53, info:Landroid/net/NetworkInfo;
    if-eqz v53, :cond_10

    invoke-virtual/range {v53 .. v53}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_10

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 952
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "functionForPacketDrop is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 956
    :cond_10
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "functionForPacketDrop is not called (WIFI connected)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 973
    .end local v28           #am:Landroid/app/ActivityManager;
    .end local v29           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v38           #ar:Landroid/os/AsyncResult;
    .end local v45           #dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    .end local v53           #info:Landroid/net/NetworkInfo;
    .end local v57           #isAnyDataCallActive:Z
    .end local v58           #isAnyDataCallDormant:Z
    .end local v67           #name:Ljava/lang/String;
    .end local v72           #p:Landroid/net/LinkProperties;
    .end local v76           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v79           #topActivity:Landroid/content/ComponentName;
    .end local v80           #topclassname:Ljava/lang/String;
    :sswitch_6
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/LGEDataConnectionTracker;->voice_call_ing:Z

    goto/16 :goto_1

    .line 979
    :sswitch_7
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/LGEDataConnectionTracker;->voice_call_ing:Z

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 985
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] functionForResetDrop for STATE_OUT_OF_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 990
    :cond_11
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] functionForPacketDrop for ACTION_VOICE_CALL_ENDED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_1

    .line 1000
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "############### calling goFastDormancy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_12

    .line 1005
    const/16 v2, 0x10

    new-array v0, v2, [B

    move-object/from16 v43, v0

    fill-array-data v43, :array_0

    .line 1020
    .local v43, cmd:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_1

    .line 1022
    .end local v43           #cmd:[B
    :cond_12
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "############### don\'t calling goFastDormancy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1031
    :sswitch_9
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY complete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_1

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const-string v3, "Added_APN_failed"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1041
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/ApnContext;

    if-eqz v2, :cond_13

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto/16 :goto_1

    .line 1043
    :cond_13
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1046
    :cond_14
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1053
    :sswitch_b
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_DATA_ERROR_FAIL_CAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->pdpreject_causecode(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1059
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->handleCSProtection(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1063
    :sswitch_d
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_ICC_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->updateIccAvailability()V

    goto/16 :goto_1

    .line 1068
    :sswitch_e
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "EVENT_RECORDS_LOADED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_17

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/ApnSelectionHandler;->Domestic_APN_ID:I

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1079
    .local v73, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v73, :cond_18

    invoke-virtual/range {v73 .. v73}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v71

    .line 1080
    .local v71, operator:Ljava/lang/String;
    :goto_6
    if-eqz v71, :cond_16

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v71

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1084
    .local v5, selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and carrier_enabled = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v44

    .line 1089
    .local v44, cursor:Landroid/database/Cursor;
    if-eqz v44, :cond_16

    .line 1090
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_16

    .line 1091
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1093
    :cond_15
    new-instance v6, Lcom/android/internal/telephony/ApnSetting;

    const-string v2, "_id"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "12345"

    const-string v9, "Name"

    const-string v2, "apn"

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v44

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, ""

    const-string v21, ""

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-direct/range {v6 .. v23}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1098
    .local v6, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/ApnSelectionHandler;->findAllOperatorApnID(Lcom/android/internal/telephony/ApnSetting;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    iget v2, v2, Lcom/android/internal/telephony/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->APN_ID_FOR_LTE_Roaming:I

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    iget v2, v2, Lcom/android/internal/telephony/ApnSelectionHandler;->IMS_APN_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->APN_ID_FOR_IMS:I

    .line 1103
    invoke-interface/range {v44 .. v44}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1109
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v44           #cursor:Landroid/database/Cursor;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const-string v3, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    .line 1113
    .end local v71           #operator:Ljava/lang/String;
    .end local v73           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SENDPDNTABLE_ENABLE_SAVE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_19

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendPdnTable()V

    goto/16 :goto_1

    .line 1079
    .restart local v73       #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_18
    const-string v71, ""

    goto/16 :goto_6

    .line 1118
    .end local v73           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_19
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "NoDBSync is Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1123
    :sswitch_f
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1127
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1131
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/os/AsyncResult;

    .line 1132
    .local v69, new_ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v69

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;

    move-object/from16 v24, v2

    check-cast v24, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;

    .line 1134
    .local v24, LGDataMsg:Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;
    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->valid:Z

    if-eqz v2, :cond_1

    .line 1136
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] EVENT_FAKE_DATACONNECTION_EVENT  valid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->what:I

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    .line 1261
    :sswitch_12
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->success:Z

    move/from16 v63, v0

    .line 1262
    .local v63, issucess:Z
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1264
    .local v34, apnType:Ljava/lang/String;
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] apnType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "issucess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " valid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->valid:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/16 v36, 0x0

    .line 1267
    .local v36, apn_info:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] EVENT_DATA_SETUP_COMPLETE Connected?? = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v63

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/telephony/ApnContext;

    .line 1271
    .restart local v29       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v29, :cond_1e

    .line 1272
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] EVENT_DATA_SETUP_COMPLETE apnContext is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1141
    .end local v29           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v34           #apnType:Ljava/lang/String;
    .end local v36           #apn_info:Lcom/android/internal/telephony/ApnSetting;
    .end local v63           #issucess:Z
    :sswitch_13
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->apntype_n:I

    move/from16 v37, v0

    .line 1142
    .local v37, apntype:I
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->enable:I

    move/from16 v49, v0

    .line 1144
    .local v49, enable:I
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] EVENT_ENABLE_NEW_APN type =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/ApnContext;

    .line 1147
    .local v32, apnContext_new:Lcom/android/internal/telephony/ApnContext;
    const/4 v2, 0x1

    move/from16 v0, v49

    if-ne v0, v2, :cond_1a

    .line 1149
    sget-object v2, Lcom/android/internal/telephony/LGEDataConnectionTracker;->setTeardownRequested:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v37

    goto/16 :goto_0

    .line 1154
    :cond_1a
    sget-object v2, Lcom/android/internal/telephony/LGEDataConnectionTracker;->setTeardownRequested:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v37

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    if-eqz v2, :cond_0

    .line 1158
    if-eqz v32, :cond_0

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_0

    .line 1165
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    .line 1167
    .restart local v6       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] <disableApnType()> apn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] <disableApnType()> original_apn_formms : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eqz v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 1173
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] <disableApnType()> APN changes from \'mmsonly\' to \'default\'."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    goto/16 :goto_0

    .line 1187
    .end local v6           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v32           #apnContext_new:Lcom/android/internal/telephony/ApnContext;
    .end local v37           #apntype:I
    .end local v49           #enable:I
    :sswitch_14
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] EVENT_TRY_SETUP_DATA = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->reason:Ljava/lang/String;

    move-object/from16 v74, v0

    .line 1189
    .local v74, reason:Ljava/lang/String;
    goto/16 :goto_0

    .line 1196
    .end local v74           #reason:Ljava/lang/String;
    :sswitch_15
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] EVENT_ROAMING_OFF = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/app/NotificationManager;

    .line 1202
    .local v70, notificationManager:Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x20b0318

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v48

    .line 1203
    .local v48, details:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x20b0317

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v77

    .line 1204
    .local v77, title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, v77

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v77

    move-object/from16 v1, v48

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    .line 1209
    .local v46, dataNetwork:I
    const/4 v2, 0x1

    move/from16 v0, v46

    if-ne v0, v2, :cond_1c

    .line 1210
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[EVENT_ROAMING_OFF] clean Notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/16 v2, 0x9f6

    move-object/from16 v0, v70

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1213
    :cond_1c
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[EVENT_ROAMING_OFF] put notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v2, 0x9f6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, v70

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1221
    .end local v46           #dataNetwork:I
    .end local v48           #details:Ljava/lang/CharSequence;
    .end local v70           #notificationManager:Landroid/app/NotificationManager;
    .end local v77           #title:Ljava/lang/CharSequence;
    :sswitch_16
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] EVENT_ROAMING_ON = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v61

    .line 1224
    .local v61, isRoaming:Z
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "onRoamingOn: setup data on roaming"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    if-eqz v61, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_ROAMING_SKT:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_1d

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1230
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "onRoamingOn: sendPdnTable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendPdnTable()V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1d

    .line 1235
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "Roaming Disable and mode=NT_MODE_GSM_UMTS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x3

    const v4, 0x42029

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1246
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/app/NotificationManager;

    .line 1249
    .restart local v70       #notificationManager:Landroid/app/NotificationManager;
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[EVENT_ROAMING_ON]this case is on roaming, so clean Notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/16 v2, 0x9f6

    move-object/from16 v0, v70

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1277
    .end local v61           #isRoaming:Z
    .end local v70           #notificationManager:Landroid/app/NotificationManager;
    .restart local v29       #apnContext:Lcom/android/internal/telephony/ApnContext;
    .restart local v34       #apnType:Ljava/lang/String;
    .restart local v36       #apn_info:Lcom/android/internal/telephony/ApnSetting;
    .restart local v63       #issucess:Z
    :cond_1e
    if-eqz v29, :cond_1f

    .line 1278
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v36

    .end local v36           #apn_info:Lcom/android/internal/telephony/ApnSetting;
    check-cast v36, Lcom/android/internal/telephony/ApnSetting;

    .line 1280
    .restart local v36       #apn_info:Lcom/android/internal/telephony/ApnSetting;
    :cond_1f
    if-eqz v63, :cond_2e

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

    if-eqz v2, :cond_20

    .line 1287
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->isGsm:Z

    if-eqz v2, :cond_20

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1294
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    if-eqz v2, :cond_22

    .line 1297
    if-eqz v29, :cond_22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mms"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_22

    .line 1300
    if-eqz v36, :cond_21

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    move-object/from16 v0, v36

    iput-object v2, v0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 1303
    :cond_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    .line 1307
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[onDataSetupComplete] APN changes from \'mmsonly\' to \'default\'."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_22
    const-string v33, ""

    .line 1316
    .local v33, apnStr:Ljava/lang/String;
    if-eqz v36, :cond_23

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1319
    :cond_23
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] onDataSetupComplete: success apn name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "LGTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IPVersion;->INET:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 1325
    const/16 v51, 0x0

    .local v51, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IPVersion;->INET:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, v51

    if-ge v0, v2, :cond_25

    const/4 v2, 0x2

    move/from16 v0, v51

    if-ge v0, v2, :cond_25

    .line 1326
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA][pcscf]4-2 getPcscfAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v7, Lcom/android/internal/telephony/IPVersion;->INET:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v51

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IPVersion;->INET:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v51

    if-eqz v2, :cond_24

    .line 1330
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA][pcscf] set v4 property["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.pcscf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v4, Lcom/android/internal/telephony/IPVersion;->INET:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :cond_24
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_7

    .line 1337
    .end local v51           #i:I
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IPVersion;->INET6:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1338
    const/16 v51, 0x0

    .restart local v51       #i:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IPVersion;->INET6:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    move/from16 v0, v51

    if-ge v0, v2, :cond_27

    const/4 v2, 0x2

    move/from16 v0, v51

    if-ge v0, v2, :cond_27

    .line 1339
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA][pcscf]6-2 getPcscfAddress"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v7, Lcom/android/internal/telephony/IPVersion;->INET6:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v51

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v3, Lcom/android/internal/telephony/IPVersion;->INET6:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v51

    if-eqz v2, :cond_26

    .line 1343
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA][pcscf] set v6 property["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.pcscf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v51

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v4, Lcom/android/internal/telephony/IPVersion;->INET6:Lcom/android/internal/telephony/IPVersion;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IPVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneBase;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_26
    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_8

    .line 1353
    .end local v51           #i:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_FAST_CONNECT_DEFAULT_PDN_KR:Z

    if-eqz v2, :cond_2b

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ims"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 1357
    const/16 v47, 0x0

    .line 1358
    .local v47, dcacForAlarmIntent:Lcom/android/internal/telephony/DataConnectionAc;
    const/16 v27, 0x0

    .line 1360
    .local v27, alarmIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/internal/telephony/ApnContext;

    .line 1362
    .local v30, apnContext_default:Lcom/android/internal/telephony/ApnContext;
    if-eqz v30, :cond_28

    .line 1363
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v47

    .line 1366
    :cond_28
    if-eqz v47, :cond_29

    .line 1367
    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v27

    .line 1370
    :cond_29
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onDataSetupComplete] : alarmIntent  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  default  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dcac :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    if-eqz v27, :cond_2a

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v3, :cond_2a

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    if-eqz v2, :cond_2a

    .line 1379
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupComplete: cancel alarmIntent  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tdefault  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dcac :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, v47

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1382
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupComplete: fast reconnect Default with Intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1387
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntentForDefaultType:Landroid/content/Intent;

    .line 1393
    .end local v27           #alarmIntent:Landroid/app/PendingIntent;
    .end local v30           #apnContext_default:Lcom/android/internal/telephony/ApnContext;
    .end local v47           #dcacForAlarmIntent:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    if-eqz v2, :cond_2c

    .line 1394
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/DataConnectionTracker;->internetPDNconnected:Z

    .line 1396
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] Default PDN Connected, internetPDNconnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->internetPDNconnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v2, :cond_0

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v25

    .line 1405
    .local v25, aRadioTech:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    .line 1408
    const/16 v2, 0xe

    move/from16 v0, v25

    if-ne v0, v2, :cond_2d

    .line 1409
    new-instance v55, Landroid/content/Intent;

    const-string v2, "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v55, intentForRoaming:Landroid/content/Intent;
    const-string v2, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1411
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] send intent LTE_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1414
    .end local v55           #intentForRoaming:Landroid/content/Intent;
    :cond_2d
    new-instance v55, Landroid/content/Intent;

    const-string v2, "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    .restart local v55       #intentForRoaming:Landroid/content/Intent;
    const-string v2, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1416
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] send intent GW_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1429
    .end local v25           #aRadioTech:I
    .end local v33           #apnStr:Ljava/lang/String;
    .end local v55           #intentForRoaming:Landroid/content/Intent;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1431
    const v2, 0x4202f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1433
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[onDataSetupComplete] : Remove EVENT_SETDEFAULT_TOCHANGE_AFTER_DELAY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const v2, 0x4202f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->removeMessages(I)V

    .line 1440
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_KT:Z

    if-eqz v2, :cond_30

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x4202c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getLastPdpFailCause(Landroid/os/Message;)V

    .line 1443
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->isGsm:Z

    if-eqz v2, :cond_30

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v62

    .line 1445
    .local v62, isRoamingValue:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 1447
    .local v26, airplaneMode:I
    sget-object v40, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 1448
    .local v40, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->cause:Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object/from16 v40, v0

    .line 1449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/DataConnection$FailCause;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1450
    .local v41, causeValue:Ljava/lang/String;
    if-eqz v29, :cond_30

    .line 1451
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "ims"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x3f0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/net/ConnectivityManager;

    .line 1459
    .local v42, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040599

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v78

    .line 1460
    .local v78, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v78

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1461
    invoke-virtual/range {v78 .. v78}, Landroid/widget/Toast;->show()V

    .line 1476
    .end local v26           #airplaneMode:I
    .end local v40           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    .end local v41           #causeValue:Ljava/lang/String;
    .end local v42           #cm:Landroid/net/ConnectivityManager;
    .end local v62           #isRoamingValue:Z
    .end local v78           #toast:Landroid/widget/Toast;
    :cond_30
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_31

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const-string v3, "Added_APN_failed"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ApnSelectionHandler;->selectApn(Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->apnSelectionHdlr:Lcom/android/internal/telephony/ApnSelectionHandler;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/ApnSelectionHandler;->APN_FAIL_Flag:Z

    .line 1486
    :cond_31
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1487
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v2

    if-nez v2, :cond_34

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v2, :cond_0

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v25

    .line 1492
    .restart local v25       #aRadioTech:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    .line 1495
    const/16 v2, 0xe

    move/from16 v0, v25

    if-ne v0, v2, :cond_33

    .line 1496
    new-instance v55, Landroid/content/Intent;

    const-string v2, "lge.intent.action.LTE_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1497
    .restart local v55       #intentForRoaming:Landroid/content/Intent;
    const-string v2, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1498
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] send intent LTE_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1462
    .end local v25           #aRadioTech:I
    .end local v55           #intentForRoaming:Landroid/content/Intent;
    .restart local v26       #airplaneMode:I
    .restart local v40       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    .restart local v41       #causeValue:Ljava/lang/String;
    .restart local v62       #isRoamingValue:Z
    :cond_32
    if-eqz v62, :cond_30

    const/4 v2, 0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "LGTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1464
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1465
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[MIN]setNorification!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x3f0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPdpRejectedNotification(II)V

    goto/16 :goto_a

    .line 1501
    .end local v26           #airplaneMode:I
    .end local v40           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    .end local v41           #causeValue:Ljava/lang/String;
    .end local v62           #isRoamingValue:Z
    .restart local v25       #aRadioTech:I
    :cond_33
    new-instance v55, Landroid/content/Intent;

    const-string v2, "lge.intent.action.GW_ROAMING_DATA_CONNECTION_LGU"

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1502
    .restart local v55       #intentForRoaming:Landroid/content/Intent;
    const-string v2, "Connection_Status"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    move-object/from16 v0, v55

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1503
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] send intent GW_ROAMING_DATA_CONNECTION_LGU, Connection_Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->bConnectionStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1514
    .end local v25           #aRadioTech:I
    .end local v55           #intentForRoaming:Landroid/content/Intent;
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    if-eqz v2, :cond_0

    .line 1516
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnSetting;

    .line 1518
    .restart local v6       #apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mms"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 1523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->original_apn_formms:Ljava/lang/String;

    goto/16 :goto_0

    .line 1536
    .end local v6           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v29           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v34           #apnType:Ljava/lang/String;
    .end local v36           #apn_info:Lcom/android/internal/telephony/ApnSetting;
    .end local v63           #issucess:Z
    :sswitch_17
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/LGDataConnectionTrackerMsg;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 1537
    .local v35, apnType_done:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/ApnContext;

    .line 1540
    .local v31, apnContext_done:Lcom/android/internal/telephony/ApnContext;
    if-eqz v31, :cond_0

    .line 1542
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] EVENT_DISCONNECT_DONE = type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1557
    :cond_35
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 1560
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 1567
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_OTA_UPLUS:Z

    if-eqz v2, :cond_0

    .line 1568
    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/DataConnectionTracker;->internetPDNconnected:Z

    .line 1570
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] Default PDN Disonnected, internetPDNconnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->internetPDNconnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1547
    :cond_37
    const-string v2, "1"

    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    .line 1548
    .local v59, isBootCompleted:Z
    const-string v2, "KTBASE"

    const-string v3, "ro.afwdata.LGfeatureset"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v60

    .line 1549
    .local v60, isKTBASE:Z
    if-eqz v59, :cond_35

    if-eqz v60, :cond_35

    .line 1550
    new-instance v56, Landroid/content/Intent;

    const-string v2, "com.kt.CALL_PROTECTION_MENU_ON"

    move-object/from16 v0, v56

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v56, intent_s:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c

    .line 1592
    .end local v31           #apnContext_done:Lcom/android/internal/telephony/ApnContext;
    .end local v35           #apnType_done:Ljava/lang/String;
    .end local v56           #intent_s:Landroid/content/Intent;
    .end local v59           #isBootCompleted:Z
    .end local v60           #isKTBASE:Z
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    const/16 v50, 0x1

    .line 1593
    .local v50, enabled:Z
    :goto_d
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] CMD_SET_USER_DATA_ENABLE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    if-eqz v2, :cond_38

    .line 1597
    if-nez v50, :cond_38

    .line 1598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 1602
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v75

    .line 1603
    .local v75, roaming:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    if-eqz v2, :cond_3b

    if-eqz v75, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_LTE_ROAMING_KT:Z

    if-eqz v2, :cond_3b

    .line 1606
    const-string v2, "[LGE_DATA][LGEDCT] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] taegyu KT LTE Roaming roaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v75

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "supprot ModeChange For POAB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->changePreferrredNetworkMode(Z)V

    .line 1616
    :cond_39
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_NOTI_USERDATADISABLE_KR:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/app/NotificationManager;

    .line 1619
    .restart local v70       #notificationManager:Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x20b0318

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v48

    .line 1620
    .restart local v48       #details:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x20b0317

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v77

    .line 1621
    .restart local v77       #title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, v77

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v77

    move-object/from16 v1, v48

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1626
    if-eqz v50, :cond_3c

    .line 1627
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[CMD_SET_USER_DATA_ENABLE]clean Notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/16 v2, 0x9f6

    move-object/from16 v0, v70

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 1592
    .end local v48           #details:Ljava/lang/CharSequence;
    .end local v50           #enabled:Z
    .end local v70           #notificationManager:Landroid/app/NotificationManager;
    .end local v75           #roaming:Z
    .end local v77           #title:Ljava/lang/CharSequence;
    :cond_3a
    const/16 v50, 0x0

    goto/16 :goto_d

    .line 1611
    .restart local v50       #enabled:Z
    .restart local v75       #roaming:Z
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    if-nez v2, :cond_39

    .line 1612
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->changePreferrredNetworkMode(Z)V

    goto/16 :goto_e

    .line 1630
    .restart local v48       #details:Ljava/lang/CharSequence;
    .restart local v70       #notificationManager:Landroid/app/NotificationManager;
    .restart local v77       #title:Ljava/lang/CharSequence;
    :cond_3c
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[CMD_SET_USER_DATA_ENABLE]setNotification: put notification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/16 v2, 0x9f6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, v70

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1648
    .end local v48           #details:Ljava/lang/CharSequence;
    .end local v50           #enabled:Z
    .end local v70           #notificationManager:Landroid/app/NotificationManager;
    .end local v75           #roaming:Z
    .end local v77           #title:Ljava/lang/CharSequence;
    :sswitch_19
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "[LGE_DATA] EVENT_APN_CHANGED = "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_SELECT_KR:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1655
    const v2, 0x4202f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2ee0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1659
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->hasProfileDbChanged:Z

    if-eqz v2, :cond_0

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SENDPDNTABLE_ENABLE_SAVE"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3e

    .line 1661
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "NoDBSyncDBSync is Not Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendPdnTable()V

    goto/16 :goto_0

    .line 1665
    :cond_3e
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "NoDBSync is Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 781
    nop

    :sswitch_data_0
    .sparse-switch
        0x42001 -> :sswitch_0
        0x42002 -> :sswitch_e
        0x42004 -> :sswitch_5
        0x42007 -> :sswitch_6
        0x42008 -> :sswitch_7
        0x42010 -> :sswitch_1
        0x42021 -> :sswitch_d
        0x42028 -> :sswitch_f
        0x42029 -> :sswitch_10
        0x4202c -> :sswitch_b
        0x4202e -> :sswitch_c
        0x4202f -> :sswitch_9
        0x42031 -> :sswitch_2
        0x42032 -> :sswitch_3
        0x42034 -> :sswitch_4
        0x42035 -> :sswitch_8
        0x4203d -> :sswitch_11
        0x4203e -> :sswitch_a
    .end sparse-switch

    .line 1005
    :array_0
    .array-data 0x1
        0x51t
        0x55t
        0x41t
        0x4ct
        0x43t
        0x4ft
        0x4dt
        0x4dt
        0x3t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 1138
    :sswitch_data_1
    .sparse-switch
        0x42000 -> :sswitch_12
        0x42003 -> :sswitch_14
        0x4200b -> :sswitch_16
        0x4200c -> :sswitch_15
        0x4200d -> :sswitch_13
        0x4200f -> :sswitch_17
        0x42013 -> :sswitch_19
        0x4201e -> :sswitch_18
    .end sparse-switch
.end method

.method public isLTEDataRoamingAvailable()Z
    .locals 1

    .prologue
    .line 2350
    const/4 v0, 0x0

    return v0
.end method

.method public lgDatagetMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;
    .locals 7
    .parameter "dp"

    .prologue
    .line 1964
    iget-object v4, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    if-eqz v4, :cond_3

    .line 1966
    const-string v4, "[LGE_DATA][LGEDCT] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE_DATA_APN] single pdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  exist_ims_type_in_mpdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->exist_ims_type_in_mpdn:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfile;->getServiceTypes()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1968
    .local v3, type:Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1969
    const-string v4, "[LGE_DATA][LGEDCT] "

    const-string v5, "[LGE_DATA_APN] Used the single APN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    iget-object v4, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    if-eqz v4, :cond_0

    .line 1971
    const-string v4, "ims"

    .line 1984
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #type:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 1973
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #type:Ljava/lang/String;
    :cond_0
    const-string v4, "default"

    goto :goto_1

    .line 1967
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1977
    .end local v3           #type:Ljava/lang/String;
    :cond_2
    const-string v4, "default"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->exist_ims_type_in_mpdn:Z

    if-nez v4, :cond_3

    .line 1979
    const-string v4, "ims"

    goto :goto_1

    .line 1984
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected pdpreject_causecode(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v8, 0x0

    .line 1745
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1746
    .local v4, mContext:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1748
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v5, 0x0

    .line 1749
    .local v5, rawPdpRejectCuase:I
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 1750
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    aget v5, v6, v8

    .line 1752
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .line 1753
    .local v3, isRoaming:Z
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1754
    .local v0, airplaneMode:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection$FailCause;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1755
    .local v2, causeValue:Ljava/lang/String;
    const-string v6, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "######## EVENT_DATA_ERROR_FAIL_CAUSE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v7, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->debugFileWrite:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 1760
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    const-string v7, "LGTBASE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_REJECT_INTENT_UPLUS:Z

    if-eqz v6, :cond_1

    .line 1761
    const-string v6, "[LGE_DATA][LGEDCT] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE_DATA][PDP_reject] EVENT_DATA_ERROR_FAIL_CAUSE ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget-object v6, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/DataConnectionManager;->SendBroadcastPdpRejectCause(I)V

    .line 1766
    :cond_1
    return-void
.end method

.method public sendPdnTable()V
    .locals 14

    .prologue
    .line 1989
    const/4 v2, 0x0

    .line 1990
    .local v2, defaultcount:I
    const/4 v0, 0x0

    .line 1991
    .local v0, aleadysenddefault:Z
    const/4 v8, 0x0

    .line 1993
    .local v8, pdnId:I
    const/4 v11, 0x6

    new-array v6, v11, [Z

    fill-array-data v6, :array_0

    .line 1995
    .local v6, isDBEx:[Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    .line 1996
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->exist_ims_type_in_mpdn:Z

    .line 2000
    const/4 v9, 0x0

    .line 2003
    .local v9, tempOTAdp:Lcom/android/internal/telephony/DataProfile;
    iget-object v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataProfile;

    .line 2004
    .local v4, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v11, v12, :cond_1

    const-string v11, "default"

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2007
    add-int/lit8 v2, v2, 0x1

    .line 2010
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v11, v12, :cond_0

    const-string v11, "ims"

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2013
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->exist_ims_type_in_mpdn:Z

    goto :goto_0

    .line 2022
    .end local v4           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    if-eqz v11, :cond_4

    .line 2024
    const/4 v11, 0x1

    if-ne v2, v11, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 2025
    :cond_3
    const-string v11, "[LGE_DATA][LGEDCT] "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[lge_data_sync]  defaultcount : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_4
    const/4 v11, 0x1

    if-le v2, v11, :cond_7

    .line 2030
    iget-object v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v3

    .line 2031
    .local v3, defaultdp:Lcom/android/internal/telephony/DataProfile;
    if-eqz v3, :cond_7

    .line 2034
    iget-object v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    if-eqz v11, :cond_6

    .line 2036
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfile;->getServiceTypes()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v10, v1, v5

    .line 2037
    .local v10, type:Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2038
    const-string v11, "[LGE_DATA][LGEDCT] "

    const-string v12, "[LGE_DATA_APN] Used the single APN"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    .line 2036
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2044
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v10           #type:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v3, v11}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    move-result v8

    .line 2045
    const/4 v11, 0x1

    aput-boolean v11, v6, v8

    .line 2046
    const/4 v0, 0x1

    .line 2050
    .end local v3           #defaultdp:Lcom/android/internal/telephony/DataProfile;
    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataProfile;

    .line 2051
    .restart local v4       #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-eq v11, v12, :cond_9

    .line 2052
    const-string v11, "[LGE_DATA][LGEDCT] "

    const-string v12, "SEND PDN TABLE:: Data Profile does not belong to 3GPP APN type..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2056
    :cond_9
    iget-object v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v11}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_APN_APNSYNC_KR:Z

    if-eqz v11, :cond_b

    iget-boolean v11, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->is_single_apn_flow:Z

    if-eqz v11, :cond_b

    .line 2057
    const-string v11, "[LGE_DATA][LGEDCT] "

    const-string v12, "[LGE_DATA_APN] Used the single APN"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    .end local v4           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_a
    return-void

    .line 2061
    .restart local v4       #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_b
    const-string v11, "default"

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2063
    if-nez v0, :cond_8

    .line 2065
    const/4 v11, 0x0

    invoke-virtual {p0, v4, v11}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    move-result v8

    .line 2066
    const/4 v11, 0x1

    aput-boolean v11, v6, v8

    .line 2067
    const/4 v0, 0x1

    goto :goto_2

    .line 2072
    :cond_c
    const/4 v11, 0x0

    invoke-virtual {p0, v4, v11}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    move-result v8

    .line 2073
    const/4 v11, 0x1

    aput-boolean v11, v6, v8

    goto :goto_2

    .line 1993
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public setLTEDataRoamingEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->getLTEDataRoamingEnable()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 2355
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLTEDataRoamingEnable, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2357
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_lte_roaming"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2359
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 2357
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLTEDataRoamingEnableNotApplyObserver(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 2340
    const-string v1, "[LGE_DATA][LGEDCT] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLTEDataRoamingEnableNotApplyObserver, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    .line 2343
    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2344
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "data_lte_roaming"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2346
    iget-object v1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mLTEDataRoamingSettingObserver:Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;

    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LGEDataConnectionTracker$LTEDataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 2347
    return-void

    .line 2344
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1783
    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1786
    :cond_1
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "updateIccAvailability 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1789
    .local v0, newIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1792
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "updateIccAvailability 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1794
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_0

    .line 1795
    if-eqz v1, :cond_2

    .line 1796
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "Removing stale icc objects."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1798
    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1800
    :cond_2
    if-eqz v0, :cond_0

    .line 1801
    const-string v2, "[LGE_DATA][LGEDCT] "

    const-string v3, "New records found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v2, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1803
    const v2, 0x42002

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
