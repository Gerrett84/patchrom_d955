.class public Lcom/android/internal/telephony/PayPopup_Korea;
.super Landroid/os/Handler;
.source "PayPopup_Korea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PayPopup_Korea$2;,
        Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;
    }
.end annotation


# static fields
.field public static final ALL_DATA_BLOCKED_SKT:I = 0x3

.field public static final CURRENT_MCC:Ljava/lang/String; = "current_mcc"

.field public static final DATA_DISABLE_WIFI_TO_3G_TRANSITION:I = 0xa

.field public static final DATA_ENABLE_WIFI_TO_3G_TRANSITION:I = 0x9

.field public static final DATA_NETWORK_USER_PAYPOPUP_RESPONSE:Ljava/lang/String; = "data_network_user_paypopup_response"

.field public static final DATA_NETWORK_USER_PAYPOPUP_TRANSITION_FROM_WIFI_TO_MOBILE:Ljava/lang/String; = "data_network_user_paypopup_transition_from_wifi_to_mobile"

.field public static final DATA_NETWORK_WAIT_FOR_PAYPOPUP_RESPONSE:Ljava/lang/String; = "data_network_wait_for_paypopup_response"

.field public static final DOMESTIC_DIALOG_LGT:I = 0x67

.field public static final DOMESTIC_DIALOG_SKT:I = 0x64

.field public static final DOMESTIC_ROAMING_DIALOG_KT:I = 0x66

.field private static final EVENT_DELAYED_TOAST_KT:I = 0x258

.field private static final EVENT_RESTART_FOR_FAILSETUP_BOOT:I = 0xc9

.field private static final EVENT_START_CHARGING_POPUP:I = 0xc8

.field private static final EVENT_START_CHARGING_POPUP_ROAM:I = 0xca

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][PayPopUp_ko] "

.field public static final MOBILE_DATA_ALLOWED_LGT:I = 0x7

.field public static final MOBILE_DATA_ALLOWED_SKT:I = 0x1

.field public static final MOBILE_DATA_BLOCKED_LGT:I = 0x8

.field public static final MOBILE_DATA_BLOCKED_SKT:I = 0x2

.field public static final MOBILE_DATA_SET_BLOCKED_MMS_SKT:I = 0x6

.field private static final NETWORKOPEN_DELAY_TIMER:I = 0x3e8

.field public static final OLD_MCC:Ljava/lang/String; = "intent_old_mcc"

.field private static final PAY_POPUP_IN_CASE_OF_BOOTING:Ljava/lang/String; = "booting"

.field private static final PAY_POPUP_IN_CASE_OF_NO_DISPLAY_POPUP:Ljava/lang/String; = "no_display_popup"

.field private static final PAY_POPUP_IN_CASE_OF_OTHERS:Ljava/lang/String; = "others"

.field private static final PAY_POPUP_IN_CASE_OF_WIFI_OFF:Ljava/lang/String; = "Wifi_off"

.field private static final PAY_POPUP_NOT_ALLOWED:I = 0x12e

.field private static final PAY_POPUP_OKAY:I = 0x12f

.field private static final PAY_POPUP_WAITING_FOR_USER_RESPONSE:I = 0x12d

.field public static final PREFERRED_DATA_NETWORK_MODE:Ljava/lang/String; = "preferred_data_network_mode"

.field private static final RETRY_DOMESTIC_DIALOG_KT:I = 0x191

.field private static final RETRY_DOMESTIC_DIALOG_LGU:I = 0x192

.field private static final RETRY_DOMESTIC_DIALOG_SKT:I = 0x190

.field private static final RETRY_POPUP_SHOW_DELAY:I = 0x1f4

.field public static final ROAMING_DIALOG_LGT:I = 0x68

.field public static final ROAMING_DIALOG_SKT:I = 0x65

.field public static final ROAM_MOBILE_DATA_ALLOWED_SKT:I = 0x4

.field public static final ROAM_MOBILE_DATA_BLOCKED_SKT:I = 0x5

.field public static UiccIsEmpty:I

.field public static airplane_mode:I


# instance fields
.field featureset:Ljava/lang/String;

.field private global_new_mcc:Ljava/lang/String;

.field private global_old_mcc:Ljava/lang/String;

.field private intent_reset:Z

.field private mActiveDomesticPopup:Z

.field private mActiveRoamingPopup:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsok_bypass:Z

.field private mMobileEnabled:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mResolver:Landroid/content/ContentResolver;

.field mStatus:Z

.field mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

.field private mbooting_phone:Z

.field public retryStartActivityForPopup:I

.field private roam_to_domestic_popup_need:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/PayPopup_Korea;->UiccIsEmpty:I

    .line 120
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "dct"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    const-string v1, "000"

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    .line 112
    const-string v1, "000"

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    .line 124
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->retryStartActivityForPopup:I

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mIsok_bypass:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    .line 210
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z

    .line 218
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiServiceExtIface()Lcom/lge/wifi_iface/WifiServiceExtIface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    .line 222
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->intent_reset:Z

    .line 225
    new-instance v1, Lcom/android/internal/telephony/PayPopup_Korea$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PayPopup_Korea$1;-><init>(Lcom/android/internal/telephony/PayPopup_Korea;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 534
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    const-string v2, "PayPopup_Korea() has created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v1, "ro.afwdata.LGfeatureset"

    const-string v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    .line 537
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 538
    iput-object p2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 539
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/DataConnectionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/LGfeature;)Lcom/android/internal/telephony/DataConnectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    .line 544
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mResolver:Landroid/content/ContentResolver;

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 549
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.DataEnabledSettingBootableSKT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "com.lge.DataNetworkModePayPopupKT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "com.lge.DataNetworkModePayPopupLGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v1, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v1, "android.net.conn.STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v1, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    const-string v1, "android.net.conn.DATA_DATA_BLOCK_IN_MMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v2, "LGTBASE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v2, "SKTBASE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    :cond_0
    const-string v1, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v1, "android.intent.action.OTA_USIM_REFRESH_TO_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 583
    return-void
.end method

.method private PayPopupforFeature(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "funcName"
    .parameter "reason"
    .parameter "apntype"

    .prologue
    .line 902
    const/4 v7, 0x0

    .line 904
    .local v7, in_prog_bypass:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KR:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-nez v12, :cond_2

    .line 905
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LGP_DATA_IMS_KR TYPE type :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 907
    .local v6, ims_type:Lcom/android/internal/telephony/ApnContext;
    if-eqz p3, :cond_0

    const-string v12, "ims"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 909
    const/4 v7, 0x1

    .line 910
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MPDN (IMS) TYPE :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->PayPopupforLGT:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_1

    .line 914
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/ApnContext;

    .line 915
    .local v10, tethering_type:Lcom/android/internal/telephony/ApnContext;
    if-eqz p3, :cond_1

    const-string v12, "tethering"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 917
    const/4 v7, 0x1

    .line 918
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MPDN U+ (TETHERING) TYPE :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v10           #tethering_type:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->PayPopupforLGT:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 924
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 925
    .local v4, emergency_type:Lcom/android/internal/telephony/ApnContext;
    if-eqz p3, :cond_2

    const-string v12, "emergency"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 927
    const/4 v7, 0x1

    .line 928
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MPDN U+ (EMERGENCY) TYPE :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    .end local v4           #emergency_type:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #ims_type:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$2;->$SwitchMap$com$android$internal$telephony$PayPopup_Korea$PayPopupFunction:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1323
    const/4 v12, 0x0

    :goto_0
    return v12

    .line 939
    :pswitch_0
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforSKT()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in_prog_bypass :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 944
    .local v2, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_3

    .line 946
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v13, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v14, ""

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 948
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SINGLE SKT (MMS) TYPE  :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v7, 0x1

    .line 953
    :cond_3
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in_prog_bypass :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    if-nez v7, :cond_7

    .line 956
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 957
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()> roaming = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mbooting_phone = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", airplane_mode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    sget v12, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    if-nez v12, :cond_5

    .line 961
    :cond_4
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v12, -0x1

    sput v12, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    .line 963
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/DataConnectionTracker;->DataOnRoamingEnabled_OnlySel(Z)V

    .line 964
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 965
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 971
    :cond_5
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()>\tallows as roam toast : : reason =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const-string v12, "roamingOn"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "apnChanged"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "dataEnabled"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 977
    :cond_6
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1056
    :cond_7
    :goto_1
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 981
    :cond_8
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()>\tmbooting_phone = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 985
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v13, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v14, ""

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v13, 0x3

    if-ne v12, v13, :cond_a

    .line 990
    const-string v12, "sys.factory.qem"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 991
    .local v5, factory_qem:Z
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[LGE_DATA] factory_qem["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v12, 0x1

    if-ne v5, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 993
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "[LGE_DATA] QEM mode, blocking data call and don\'t show charging popup"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 997
    :cond_9
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "<PayPopupforSKT()> DCM_MOBILE_NETWORK_IS_NEED_POPUP : mUserDataEnabled = false / MOBILE_DATA = false."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1002
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1004
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 1007
    .end local v5           #factory_qem:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/DataConnectionTracker;->changePreferrredNetworkMode(Z)V

    .line 1008
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()> changePreferrredNetworkMode is called : mbooting_phone is TRUE / mConnMgr.getMobileDataEnabled() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v13, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v14, ""

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 1010
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto/16 :goto_1

    .line 1012
    :cond_b
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1014
    const/16 v12, 0x12e

    goto/16 :goto_0

    .line 1018
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v13, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v14, ""

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v13, 0x1

    if-ne v12, v13, :cond_11

    .line 1019
    const/4 v1, 0x0

    .line 1022
    .local v1, IsMMS:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v12

    if-nez v12, :cond_e

    .line 1025
    :cond_d
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()> changePreferrredNetworkMode is called : mbooting_phone is FALSE / mConnMgr.getMobileDataEnabled() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/DataConnectionTracker;->changePreferrredNetworkMode(Z)V

    .line 1030
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 1032
    .restart local v2       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_f

    .line 1033
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1034
    const/4 v1, 0x1

    .line 1038
    :cond_f
    if-nez v1, :cond_7

    .line 1039
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()> reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const-string v12, "dataEnabled"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "apnChanged"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1043
    :cond_10
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<PayPopupforSKT()> show_allow_toast_pupop  :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto/16 :goto_1

    .line 1050
    .end local v1           #IsMMS:Z
    :cond_11
    const/16 v12, 0x12e

    goto/16 :goto_0

    .line 1062
    .end local v2           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_1
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforKT()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in_prog_bypass :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    if-nez v7, :cond_19

    .line 1067
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    .line 1069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1073
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1074
    .local v8, is_waiting:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1075
    .local v11, user_response:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preferred_data_network_mode"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1077
    .local v3, ask_at_boot:I
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with is_waiting = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with user_choice = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with ask at boot ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v12, 0x1

    if-ne v8, v12, :cond_14

    .line 1083
    if-nez v11, :cond_13

    .line 1084
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforKT is waiting for user response"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 1087
    :cond_13
    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    .line 1089
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1092
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforKT is accpeted by user"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1103
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_17

    const/4 v12, 0x1

    if-ne v3, v12, :cond_17

    const-string v12, "booting"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    const-string v12, "Wifi_off"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1106
    :cond_15
    const-string v12, "sys.factory.qem"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1107
    .restart local v5       #factory_qem:Z
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[LGE_DATA] factory_qem["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v12, 0x1

    if-ne v5, v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    .line 1109
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "[LGE_DATA] QEM mode, blocking data call and don\'t show charging popup"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1114
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1118
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x66

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1122
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DATA_NETWORK_WAIT_FOR_PAYPOPUP_RESPONSE : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "data_network_wait_for_paypopup_response"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforKT is asking for the response from use"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 1127
    .end local v5           #factory_qem:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v12

    if-nez v12, :cond_18

    .line 1129
    const/16 v12, 0x12e

    goto/16 :goto_0

    .line 1131
    :cond_18
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, " PayPopup is just pass not asking "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v3           #ask_at_boot:I
    .end local v8           #is_waiting:I
    .end local v11           #user_response:I
    :cond_19
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1139
    :pswitch_2
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforLGT()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in_prog_bypass :: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1a

    .line 1144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v13, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v14, ""

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v9

    .line 1145
    .local v9, mode:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v12, 0x2

    if-ne v9, v12, :cond_1a

    .line 1146
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "1st boot case, and just showing data blocked toast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1153
    .end local v9           #mode:I
    :cond_1a
    if-nez v7, :cond_29

    .line 1155
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1b

    .line 1157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1165
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1166
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c

    .line 1167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1169
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    .line 1182
    :cond_1c
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    sget-object v13, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->getDataNetworkMode:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v14, ""

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    move-result v9

    .line 1183
    .restart local v9       #mode:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1184
    .restart local v8       #is_waiting:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1186
    .restart local v11       #user_response:I
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with is_waiting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with user_choice="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trySetupData with booting="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v12, 0x1

    if-ne v8, v12, :cond_20

    .line 1193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    .line 1194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1197
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "When is_wating == 1 and hide paypopup so connect force!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1172
    .end local v8           #is_waiting:I
    .end local v9           #mode:I
    .end local v11           #user_response:I
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c

    .line 1173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1175
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    goto/16 :goto_2

    .line 1200
    .restart local v8       #is_waiting:I
    .restart local v9       #mode:I
    .restart local v11       #user_response:I
    :cond_1e
    if-nez v11, :cond_1f

    .line 1201
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforLGT is waiting for user response"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 1203
    :cond_1f
    const/4 v12, 0x2

    if-ne v11, v12, :cond_20

    .line 1204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_user_paypopup_response"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1207
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforLGT is accpeted by user"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1216
    :cond_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1217
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "abnormal case, it\'s ROAMING state"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    sget v12, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_22

    .line 1223
    :cond_21
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 v12, -0x1

    sput v12, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    .line 1225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1227
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x68

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1228
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    .line 1232
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "starting.. roaming query popup"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 1236
    :cond_22
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "RoamingPopup is not booting or ask at boot"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1253
    :cond_23
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "normal case, it\'s not roaming state"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_27

    .line 1256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v12, 0x3

    if-ne v9, v12, :cond_25

    .line 1257
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "1st boot case, and need to show pay popup !!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v12, "sys.factory.qem"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1264
    .restart local v5       #factory_qem:Z
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[LGE_DATA] factory_qem = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v12, 0x1

    if-ne v5, v12, :cond_24

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_BLOCK_PAYPOPUP_BUT_TRYSETUP:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_24

    .line 1266
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "[LGE_DATA] QEM mode, blocking data call and don\'t show charging popup"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1272
    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "mobile_data"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1275
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1276
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    .line 1278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "data_network_wait_for_paypopup_response"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1280
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforLGT is asking for the response from use"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/16 v12, 0x12d

    goto/16 :goto_0

    .line 1284
    .end local v5           #factory_qem:Z
    :cond_25
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v12, 0x1

    if-ne v9, v12, :cond_26

    .line 1287
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "1st boot case, and just showing data allowed toast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    .line 1296
    :goto_3
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1292
    :cond_26
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "1st boot case, and just showing data blocked toast"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    sget-object v12, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showToast:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_3

    .line 1300
    :cond_27
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[LGE_DATA_ROAMING] global_new_mcc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", roam_to_domestic_popup_need="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    const-string v13, "450"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    const-string v13, "000"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    .line 1302
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "[LGE_DATA_ROAMING] payPopupforLGT is not booting, PAY_POPUP_NOT_ALLOWED before mcc_change from roam to domestic"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    .line 1304
    const/16 v12, 0x12e

    goto/16 :goto_0

    .line 1307
    :cond_28
    const-string v12, "net.Is_phone_booted"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v12, "[LGE_DATA][PayPopUp_ko] "

    const-string v13, "PayPopupforLGT is not booting or ask at boot"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 1316
    .end local v8           #is_waiting:I
    .end local v9           #mode:I
    .end local v11           #user_response:I
    :cond_29
    const/16 v12, 0x12f

    goto/16 :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/DataConnectionTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/PayPopup_Korea;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/PayPopup_Korea;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/PayPopup_Korea;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->intent_reset:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 427
    const-string v3, "[LGE_DATA][PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DATA] handleMessage msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 470
    const-string v3, "[LGE_DATA][PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DATA] invalud handleMessage["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 431
    :sswitch_0
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->retryRemovedPayPopup(I)V

    goto :goto_0

    .line 434
    :sswitch_1
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->retryRemovedPayPopup(I)V

    goto :goto_0

    .line 437
    :sswitch_2
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->retryRemovedPayPopup(I)V

    goto :goto_0

    .line 441
    :sswitch_3
    const-string v3, "[LGE_DATA][PayPopUp_ko] "

    const-string v4, "[LGE_DATA] EVENT_DELAYED_TOAST_KT "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v3, "[LGE_DATA][PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DATA] mStatus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-boolean v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mMobileEnabled:Z

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v4, "KTBASE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    if-eq v3, v6, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, currentSubType:I
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 446
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 450
    :cond_1
    if-eq v0, v6, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 451
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b0286

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, str_value:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    invoke-interface {v3}, Lcom/lge/wifi_iface/WifiServiceExtIface;->getShowKTPayPopup()Z

    move-result v3

    if-ne v3, v6, :cond_3

    .line 459
    new-instance v1, Landroid/content/Intent;

    const-string v3, "lge.intent.action.toast"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v1, intent_kr:Landroid/content/Intent;
    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v3, "[LGE_DATA][PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DATA] mWifiServiceExt.getShowKTPayPopup() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mWifiServiceExt:Lcom/lge/wifi_iface/WifiServiceExtIface;

    invoke-interface {v5}, Lcom/lge/wifi_iface/WifiServiceExtIface;->getShowKTPayPopup()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 464
    .end local v1           #intent_kr:Landroid/content/Intent;
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mStatus:Z

    goto/16 :goto_0

    .line 452
    .end local v2           #str_value:Ljava/lang/String;
    :cond_4
    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    .line 453
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b0287

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #str_value:Ljava/lang/String;
    goto :goto_1

    .line 455
    .end local v2           #str_value:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b0285

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #str_value:Ljava/lang/String;
    goto :goto_1

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_3
    .end sparse-switch
.end method

.method public retryRemovedPayPopup(I)V
    .locals 7
    .parameter "popup_name"

    .prologue
    const/16 v6, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 484
    if-lt p1, v6, :cond_0

    const/16 v1, 0x68

    if-le p1, v1, :cond_1

    .line 485
    :cond_0
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] retryRemovedPayPopup, Invalid popup_name["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_0
    return-void

    .line 490
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->retryStartActivityForPopup:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->retryStartActivityForPopup:I

    .line 492
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] Popup is removed! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], retryStartActivityForPopup["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->retryStartActivityForPopup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->retryStartActivityForPopup:I

    if-lez v1, :cond_2

    .line 495
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    const-string v2, "[LGE_DATA] Restart Popup !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 509
    :pswitch_0
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA][jk.soh] Invalid popup["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 503
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 506
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->showDialog:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V

    goto :goto_0

    .line 515
    :cond_2
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->retryStartActivityForPopup:I

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_network_user_data_disable_setting"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 519
    .local v0, user_setting:I
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] To show paypopup is failed. Restore user_setting value["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] roam : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne v0, v4, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3

    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 527
    :cond_3
    const-string v1, "[LGE_DATA][PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] <retryRemovedPopup()> MOBILE_SET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showToastAndDialog(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;I)V
    .locals 9
    .parameter "funcName"
    .parameter "reason"

    .prologue
    const v8, 0x20b028d

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 595
    sget-object v4, Lcom/android/internal/telephony/PayPopup_Korea$2;->$SwitchMap$com$android$internal$telephony$PayPopup_Korea$PayPopupFunction:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 739
    :goto_0
    return-void

    .line 598
    :pswitch_0
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    const-string v5, "showToast()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v2, Landroid/content/Intent;

    const-string v4, "lge.intent.action.toast"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_1

    .line 671
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The toast doesn\'t exist for this reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :pswitch_1
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b0292

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 607
    :pswitch_2
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b0296

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 611
    :pswitch_3
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b0295

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 617
    :pswitch_4
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    const-string v5, "[LGE_DATA] Roaming Toast"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_GPRS_REJECTED_SKT:Z

    if-eqz v4, :cond_0

    .line 620
    const-string v4, "ril.gsm.reject_cause"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, data_rejCode:I
    sparse-switch v0, :sswitch_data_0

    .line 633
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE_DATA] PayPopup_Korea, reject_cause= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 625
    :sswitch_0
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    const-string v5, "[LGE_DATA] PayPopup_Korea, reject_cause GPRS services not allowed "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 629
    :sswitch_1
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    const-string v5, "[LGE_DATA] PayPopup_Korea, reject_cause GPRS services not allowed in this PLMN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 640
    .end local v0           #data_rejCode:I
    :cond_0
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 647
    :pswitch_5
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b0298

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 651
    :pswitch_6
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b029c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 655
    :pswitch_7
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b02a5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 659
    :pswitch_8
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b02a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 663
    :pswitch_9
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b02a3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 667
    :pswitch_a
    const-string v4, "text"

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x20b02a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 683
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_b
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    const-string v7, "showDialog()"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .restart local v2       #intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_2

    .line 709
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The dialog doesn\'t exist for this reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 688
    :pswitch_c
    const-string v4, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataEnabledSettingBootableSKT"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    :goto_2
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 717
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 719
    :catch_0
    move-exception v1

    .line 721
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "data_network_user_data_disable_setting"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 722
    .local v3, user_setting:I
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE_DATA_EXCEPT] Exception user_setting : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " roam : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MAINTAIN_USER_DATA_SETTING:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-nez v4, :cond_1

    if-ne v3, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_1

    .line 728
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 730
    :cond_1
    const-string v4, "[LGE_DATA][PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGE_DATA] <onDataConnectionAttached()> MOBILE_SET : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mobile_data"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 692
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #user_setting:I
    :pswitch_d
    const-string v4, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataRoamingSettingsBootableSKT"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 696
    :pswitch_e
    const-string v4, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupKT"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v7, "isRoaming"

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    .line 701
    :pswitch_f
    const-string v4, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupLGT"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 705
    :pswitch_10
    const-string v4, "com.android.settings"

    const-string v7, "com.android.settings.lgesetting.wireless.DataNetworkModeRoamingQueryPopupLGT"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 601
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 622
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch

    .line 686
    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public startPayPopup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .parameter "reason"
    .parameter "apn_type"

    .prologue
    .line 742
    const/4 v11, 0x0

    .line 744
    .local v11, result:I
    const-string v5, ""

    .line 748
    .local v5, WhichCase:Ljava/lang/String;
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "net.Is_phone_booted : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "net.Is_phone_booted"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v14, "net.Is_phone_booted"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    .line 752
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mbooting_phone : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "SKTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "KTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "LGTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 757
    :cond_0
    const/16 v4, 0x20

    .line 759
    .local v4, LGE_EXCEPTION_NEED_OPENNING:I
    const/4 v9, 0x0

    .line 761
    .local v9, isBlockNetConn:Z
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isBlockNetConn() : gsm.lge.ota_is_running = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "gsm.lge.ota_is_running"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v14, "gsm.lge.ota_is_running"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 764
    const/4 v9, 0x1

    .line 767
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "SKTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 769
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SKT_OTA_USIM_DOWNLOAD = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "skt_ota_usim_download"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "skt_ota_usim_download"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 772
    const/4 v9, 0x1

    .line 777
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "LGTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "KTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 778
    :cond_3
    const-string v14, "gsm.sim.type"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 780
    .local v12, simType:Ljava/lang/String;
    new-instance v13, Lcom/android/internal/telephony/uicc/UsimService;

    invoke-direct {v13}, Lcom/android/internal/telephony/uicc/UsimService;-><init>()V

    .line 781
    .local v13, usimService:Lcom/android/internal/telephony/uicc/UsimService;
    if-eqz v13, :cond_4

    .line 782
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/UsimService;->getUsimIsEmpty()I

    move-result v14

    sput v14, Lcom/android/internal/telephony/PayPopup_Korea;->UiccIsEmpty:I

    .line 783
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[LGE_DATA] DATA_BLOCK_BY_UNSIGNED_UICC / UiccIsEmpty = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/PayPopup_Korea;->UiccIsEmpty:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_4
    sget v14, Lcom/android/internal/telephony/PayPopup_Korea;->UiccIsEmpty:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    const-string v14, "skt"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "kt"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "lgu"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 788
    :cond_5
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    const-string v15, "[LGE_DATA] normal case  empty sim"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v9, 0x1

    .line 792
    :cond_6
    sget v14, Lcom/android/internal/telephony/PayPopup_Korea;->UiccIsEmpty:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const-string v14, "lgu"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "gsm.lge.ota_is_running"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 793
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    const-string v15, "[LGE_DATA] this case is phone number change on HiddenMenu"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v9, 0x0

    .line 800
    .end local v12           #simType:Ljava/lang/String;
    .end local v13           #usimService:Lcom/android/internal/telephony/uicc/UsimService;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "KTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->intent_reset:Z

    if-eqz v14, :cond_8

    .line 801
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    const-string v15, "[LGE_DATA] this case is reset"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v9, 0x1

    .line 807
    :cond_8
    if-eqz v9, :cond_9

    .line 808
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    const-string v15, "isBlockNetConn = OTA"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v14, 0x0

    .line 897
    .end local v4           #LGE_EXCEPTION_NEED_OPENNING:I
    .end local v9           #isBlockNetConn:Z
    :goto_0
    return v14

    .line 814
    .restart local v4       #LGE_EXCEPTION_NEED_OPENNING:I
    .restart local v9       #isBlockNetConn:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "data_network_user_paypopup_transition_from_wifi_to_mobile"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 816
    .local v7, from_wifi_to_mobile:I
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isWhatKindofReason() : mbooting_phone = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/ from_wifi_to_mobile = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v3, 0x0

    .line 821
    .local v3, IsThereUsingNetwork:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ApnContext;

    .line 823
    .local v6, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v14, v15, :cond_a

    .line 826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_IMS_KR:Z

    if-eqz v14, :cond_b

    .line 828
    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ims"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 830
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "APN_TYPE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v3, 0x1

    goto :goto_1

    .line 837
    :cond_b
    const/4 v3, 0x1

    goto :goto_1

    .line 843
    .end local v6           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_c
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IsThereTypeInUse() :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v14, "dataAttached"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "simLoaded"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "roamingOn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 848
    const-string v10, "booting"

    .line 862
    .local v10, isWhatKindofReason:Ljava/lang/String;
    :goto_2
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Original reason = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , LGE reason = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object v5, v10

    .line 866
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "LGTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 867
    const-string v14, "booting"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 868
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "check the booting case, mbooting_phone = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " WhichCase = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 849
    .end local v10           #isWhatKindofReason:Ljava/lang/String;
    :cond_e
    const/4 v14, 0x1

    if-ne v7, v14, :cond_f

    .line 851
    const-string v10, "Wifi_off"

    .line 853
    .restart local v10       #isWhatKindofReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "data_network_user_paypopup_transition_from_wifi_to_mobile"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 854
    .end local v10           #isWhatKindofReason:Ljava/lang/String;
    :cond_f
    const/4 v14, 0x1

    if-ne v3, v14, :cond_10

    .line 857
    const-string v10, "no_display_popup"

    .restart local v10       #isWhatKindofReason:Ljava/lang/String;
    goto/16 :goto_2

    .line 859
    .end local v10           #isWhatKindofReason:Ljava/lang/String;
    :cond_10
    const-string v10, "others"

    .restart local v10       #isWhatKindofReason:Ljava/lang/String;
    goto/16 :goto_2

    .line 875
    .end local v3           #IsThereUsingNetwork:Z
    .end local v4           #LGE_EXCEPTION_NEED_OPENNING:I
    .end local v7           #from_wifi_to_mobile:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #isBlockNetConn:Z
    .end local v10           #isWhatKindofReason:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v14}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_SKT:Z

    if-eqz v14, :cond_15

    .line 876
    const-string v14, "no_display_popup"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_12

    .line 877
    const-string v14, "[LGE_DATA][PayPopUp_ko] "

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "##Return## Already connection WhichCase = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 880
    :cond_12
    sget-object v14, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->PayPopupforSKT:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->PayPopupforFeature(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 893
    :cond_13
    :goto_3
    const/16 v14, 0x12d

    if-eq v11, v14, :cond_14

    const/16 v14, 0x12e

    if-ne v11, v14, :cond_17

    .line 894
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 884
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "KTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 885
    sget-object v14, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->PayPopupforKT:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v5, v1}, Lcom/android/internal/telephony/PayPopup_Korea;->PayPopupforFeature(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 887
    const-string v14, "net.Is_phone_booted"

    const-string v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 888
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v15, "LGTBASE"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 890
    sget-object v14, Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;->PayPopupforLGT:Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->PayPopupforFeature(Lcom/android/internal/telephony/PayPopup_Korea$PayPopupFunction;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    goto :goto_3

    .line 897
    :cond_17
    const/4 v14, 0x1

    goto/16 :goto_0
.end method
