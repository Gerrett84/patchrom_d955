.class public Lcom/android/internal/telephony/gfit/GfitUtils;
.super Landroid/os/Handler;
.source "GfitUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field public static final EVENT_COUNT_IN_NO_SERVICE:I = 0xdc

.field public static final EVENT_END_QUERY_AVAILABLE_NETWORKS:I = 0xde

.field public static final EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY:I = 0xc9

.field public static final EVENT_GFIT_ICC_CHANGED:I = 0xd4

.field public static final EVENT_GFIT_NO_SERVICE_CHANGED:I = 0x64

.field public static final EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE:I = 0xc8

.field public static final EVENT_GFIT_QUERY_AVAILABLE_NETWORKS:I = 0xd0

.field public static final EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE:I = 0xcc

.field public static final EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE_AFTER_BOOT:I = 0xcd

.field public static final EVENT_GFIT_QUERY_PREFERRED_NETWORK_TYPE:I = 0xca

.field public static final EVENT_GFIT_REGISTERED_TO_NETWORK:I = 0x65

.field public static final EVENT_GFIT_RETRY_QUERY_AVAILABLE_NETWORKS:I = 0xd3

.field public static final EVENT_GFIT_RETRY_SET_PREFERRED_NETWORK_TYPE:I = 0xd2

.field public static final EVENT_GFIT_SET_NETWORK_SELECTION_AUTOMATIC:I = 0xce

.field public static final EVENT_GFIT_SET_NETWORK_SELECTION_MANUAL:I = 0xcf

.field public static final EVENT_GFIT_SET_PREFERRED_NETWORK_TYPE:I = 0xcb

.field public static final EVENT_GFIT_SWITCH_TO_NETWORK_SELECTION_MODE_AUTOMATIC:I = 0xd1

.field public static final EVENT_GFIT_TRIGGER_NO_SERVICE_CHANGED:I = 0x66

.field public static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0xdf

.field public static final EVENT_START_QUERY_AVAILABLE_NETWORKS:I = 0xdd

.field private static final G1_FACTORY_PROPERTY:Ljava/lang/String; = "ro.factorytest"

.field private static final LGE_FTM_OFF:I = 0x2

.field private static final LGE_FTM_ON:I = 0x1

.field static LOG_TAG:Ljava/lang/String; = null

.field public static final NETWORK_SELECTION_KEY:Ljava/lang/String; = "network_selection_key"

.field public static final NETWORK_SELECTION_NAME_KEY:Ljava/lang/String; = "network_selection_name_key"

.field private static final NT_MODE_CDMA_ONLY:I = 0x2

.field private static final NT_MODE_GLOBAL:I = 0x0

.field private static final NT_MODE_LTE_CDMA:I = 0x3

.field private static final NT_MODE_LTE_GSM_UMTS:I = 0x1

.field private static final NT_SYSTEM_SELECTION_AUTOMATIC:I = 0x0

.field private static final NT_SYSTEM_SELECTION_MANUAL:I = 0x1

.field private static final PLMN_MAX:I = 0x14

.field private static final PROPERTY_AIRPLANE_MODE_ON:Ljava/lang/String; = "persist.radio.airplane_mode_on"

.field public static final RETRY_TO_QUERY_AVAILABLE_NETWORKS:I = 0xa

.field public static final RETRY_TO_SET_PREFFERED_NETWORK_TYPE:I = 0x5

.field private static final TIMEOUT_DECTECT_SIM_STATE:I = 0xbb8

.field private static final TIMEOUT_HANDLING_SIM_STATE_AFTER_DELAY:I = 0xbb8

.field private static final TIMEOUT_NO_DELAY:I = 0x0

.field private static final TIMEOUT_NO_SERVICE:I = 0x7530

.field private static final TIMEOUT_REMOVE_SWITCH_TO_AUTOMATIC_MODE:I = 0x1388

.field private static final TIMEOUT_RETRY_QUERY_AVAILABLE_NETWORKS:I = 0x2710

.field private static final TIMEOUT_RETRY_SET_PREFERRED_NETWORK_TYPE:I = 0x1388

.field static final TOAST_DBG:Z = false

.field private static final VZW_GFIT_ICC_ABSENT:I = 0x0

.field private static final VZW_GFIT_ICC_READY:I = 0x1

.field private static checkSIMState:Z = false

.field private static isFirstDisplay:Z = false

.field static isNoGlobalPopupNeeded:Z = false

.field private static final preferredNetworkMode:I = 0xa


# instance fields
.field private DISPLAY_INSERT_SIM_CARD:Ljava/lang/String;

.field private DISPLAY_NO_SIM:Ljava/lang/String;

.field private DISPLAY_POPUP:Ljava/lang/String;

.field private DISPLAY_SIM_DETECTED:Ljava/lang/String;

.field private cm:Lcom/android/internal/telephony/CommandsInterface;

.field private isManualMode:Z

.field private isManualSearching:Z

.field private isNetworkModeDisplayed:Z

.field private isToastDisplayed:Z

.field protected mContext:Landroid/content/Context;

.field private mFTMFlag:I

.field private mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkMode:I

.field private mNewServiceState:I

.field mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

.field private mProcessingNoService:Z

.field private mServiceState:I

.field mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private nRetryPrefferedNetworkType:I

.field private nRetryQuertyAvailablenetworks:I

.field onClickCancelButton:Landroid/content/DialogInterface$OnClickListener;

.field onClickPlmnList:Landroid/content/DialogInterface$OnClickListener;

.field private phone:Lcom/android/internal/telephony/PhoneBase;

.field plmnListDialog:Landroid/app/AlertDialog;

.field private sst:Lcom/android/internal/telephony/ServiceStateTracker;

.field timeout:I

.field toastForCount:Landroid/widget/Toast;

.field private useActionSIMStateChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "GSM"

    sput-object v0, Lcom/android/internal/telephony/gfit/GfitUtils;->LOG_TAG:Ljava/lang/String;

    .line 150
    sput-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gfit/GfitUtils;->isFirstDisplay:Z

    .line 160
    sput-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .parameter "sst"
    .parameter "phone"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 568
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    const-string v1, "No SIM card. Switching to CDMA mode."

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_NO_SIM:Ljava/lang/String;

    .line 73
    const-string v1, "SIM card detected. Switching to global mode."

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_SIM_DETECTED:Ljava/lang/String;

    .line 74
    const-string v1, "A SIM Card is needed to operate this phone. Please turn off your phone and insert your SIM card."

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_INSERT_SIM_CARD:Ljava/lang/String;

    .line 75
    const-string v1, "The network is not avialble. You can try global mode to see if alternative networks are availabe. Do you want to set network to global mode?"

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->DISPLAY_POPUP:Ljava/lang/String;

    .line 135
    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    .line 136
    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    .line 139
    iput-boolean v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    .line 158
    iput-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 159
    iput-boolean v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->useActionSIMStateChanged:Z

    .line 161
    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    .line 167
    iput v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    .line 168
    iput v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    .line 175
    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    .line 241
    const/16 v1, 0x14

    new-array v1, v1, [Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    .line 243
    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$1;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1184
    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$5;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickCancelButton:Landroid/content/DialogInterface$OnClickListener;

    .line 1204
    new-instance v1, Lcom/android/internal/telephony/gfit/GfitUtils$6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$6;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickPlmnList:Landroid/content/DialogInterface$OnClickListener;

    .line 569
    iput-object p2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 570
    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 571
    iput-object p1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 573
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 575
    const/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNoServiceChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 576
    const/16 v1, 0x65

    invoke-virtual {p1, p0, v1, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xd4

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdd

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForStartQueryAvailableNetwork(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 583
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xde

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForEndQueryAvailableNetwork(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    const/16 v1, 0xdf

    invoke-virtual {p2, p0, v1, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForSetPreferredNetworkType(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 590
    .local v0, mGfitFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    .end local v0           #mGfitFilter:Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "create GfitUtils..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gfit/GfitUtils;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gfit/GfitUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gfit/GfitUtils;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 1290
    const-string v1, "close system dialogs"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v0, closeDialogs:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1293
    return-void
.end method

.method private count()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 629
    iget v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    .line 630
    iget v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    if-ltz v0, :cond_2

    .line 631
    iget-boolean v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timer expiry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 639
    :goto_0
    const/16 v0, 0xdc

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendEmptyMessageDelayed(IJ)Z

    .line 644
    :cond_0
    :goto_1
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timer expiry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->toastForCount:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 642
    :cond_2
    iput v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->timeout:I

    goto :goto_1
.end method

.method private createNotePopup(I)V
    .locals 6
    .parameter "item"

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isSetupWizard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1065
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t display user pop-up : isPopupDisabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSetupWizard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isSetupWizard()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1097
    :goto_0
    return-void

    .line 1068
    :cond_1
    const-string v1, ""

    .line 1069
    .local v1, popup:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1070
    .local v2, r:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 1078
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20a01cb

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x20b0267

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x20b025f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gfit/GfitUtils$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$2;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1095
    .local v0, notePopup:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1096
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1071
    .end local v0           #notePopup:Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x20b0264

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1072
    :pswitch_1
    const v3, 0x20b0262

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1073
    :pswitch_2
    const v3, 0x20b0263

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createNotePopupGlobal()V
    .locals 6

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearchingInSystemSelect()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getIsNoGlobalPopupNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1103
    :cond_0
    const-string v3, "Don\'t display popup"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1154
    :goto_0
    return-void

    .line 1106
    :cond_1
    const-string v3, "Display Global popup"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1108
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->closeSystemDialogs()V

    .line 1111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1112
    .local v2, r:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x203

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1113
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x20a01cb

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x20b0267

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x20b025f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gfit/GfitUtils$4;

    invoke-direct {v5, p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils$4;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x20b0260

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/gfit/GfitUtils$3;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$3;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1151
    .local v1, notePopup:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1152
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private createPlmnListDialog([Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "plmnList"

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isPopupDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1158
    const-string v2, "Don\'t display popup"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1182
    :goto_0
    return-void

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v1

    .line 1164
    .local v1, systemSelection:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPlmnListDialog(): systemSelection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1166
    .local v0, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20a01cb

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x20b0268

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickPlmnList:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x20b0260

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->onClickCancelButton:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    .line 1179
    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1180
    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1181
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendSwitchToNetworkSelectionModeAutomaticAfterTimeout(I)V

    goto :goto_0
.end method

.method private eventToString(I)Ljava/lang/String;
    .locals 1
    .parameter "event"

    .prologue
    .line 1224
    sparse-switch p1, :sswitch_data_0

    .line 1245
    const-string v0, "Not supported Event"

    :goto_0
    return-object v0

    .line 1225
    :sswitch_0
    const-string v0, "EVENT_GFIT_NO_SERVICE_CHANGED"

    goto :goto_0

    .line 1226
    :sswitch_1
    const-string v0, "EVENT_GFIT_REGISTERED_TO_NETWORK"

    goto :goto_0

    .line 1227
    :sswitch_2
    const-string v0, "EVENT_GFIT_TRIGGER_NO_SERVICE_CHANGED"

    goto :goto_0

    .line 1228
    :sswitch_3
    const-string v0, "EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE"

    goto :goto_0

    .line 1229
    :sswitch_4
    const-string v0, "EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY"

    goto :goto_0

    .line 1230
    :sswitch_5
    const-string v0, "EVENT_GFIT_QUERY_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    .line 1231
    :sswitch_6
    const-string v0, "EVENT_GFIT_SET_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    .line 1232
    :sswitch_7
    const-string v0, "EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE"

    goto :goto_0

    .line 1233
    :sswitch_8
    const-string v0, "EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE_AFTER_BOOT"

    goto :goto_0

    .line 1234
    :sswitch_9
    const-string v0, "EVENT_GFIT_SET_NETWORK_SELECTION_AUTOMATIC"

    goto :goto_0

    .line 1235
    :sswitch_a
    const-string v0, "EVENT_GFIT_SET_NETWORK_SELECTION_MANUAL"

    goto :goto_0

    .line 1236
    :sswitch_b
    const-string v0, "EVENT_GFIT_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    .line 1237
    :sswitch_c
    const-string v0, "EVENT_GFIT_SWITCH_TO_NETWORK_SELECTION_MODE_AUTOMATIC"

    goto :goto_0

    .line 1238
    :sswitch_d
    const-string v0, "EVENT_GFIT_RETRY_SET_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    .line 1239
    :sswitch_e
    const-string v0, "EVENT_GFIT_RETRY_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    .line 1240
    :sswitch_f
    const-string v0, "EVENT_GFIT_ICC_CHANGED"

    goto :goto_0

    .line 1241
    :sswitch_10
    const-string v0, "EVENT_COUNT_IN_NO_SERVICE"

    goto :goto_0

    .line 1242
    :sswitch_11
    const-string v0, "EVENT_START_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    .line 1243
    :sswitch_12
    const-string v0, "EVENT_END_QUERY_AVAILABLE_NETWORKS"

    goto :goto_0

    .line 1244
    :sswitch_13
    const-string v0, "EVENT_SET_PREFERRED_NETWORK_TYPE"

    goto :goto_0

    .line 1224
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xcb -> :sswitch_6
        0xcc -> :sswitch_7
        0xcd -> :sswitch_8
        0xce -> :sswitch_9
        0xcf -> :sswitch_a
        0xd0 -> :sswitch_b
        0xd1 -> :sswitch_c
        0xd2 -> :sswitch_d
        0xd3 -> :sswitch_e
        0xd4 -> :sswitch_f
        0xdc -> :sswitch_10
        0xdd -> :sswitch_11
        0xde -> :sswitch_12
        0xdf -> :sswitch_13
    .end sparse-switch
.end method

.method private getIsNoGlobalPopupNeeded()Z
    .locals 2

    .prologue
    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNoGlobalPopupNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1298
    sget-boolean v0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNoGlobalPopupNeeded:Z

    return v0
.end method

.method private getServiceState()I
    .locals 3

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1004
    .local v0, state:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1005
    return v0
.end method

.method private getSystemSelection()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 666
    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 674
    .local v0, networkMode:I
    iput v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNetworkMode:I

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemSelection() : networkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 677
    packed-switch v0, :pswitch_data_0

    .line 691
    :pswitch_0
    const-string v2, "Not Supported system selection mode"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    .line 692
    :goto_0
    :pswitch_1
    return v1

    .line 685
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 687
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 689
    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleCdmaOnlyMode(ZZ)V
    .locals 3
    .parameter "oldUiccState"
    .parameter "newUiccState"

    .prologue
    const v2, 0x20b0263

    .line 839
    const-string v1, "handleNetworkMode() : CDMA Only"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 840
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 841
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 842
    if-eqz p2, :cond_1

    .line 844
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep CDMA Only Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_2
    if-eqz p2, :cond_5

    .line 854
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_3

    const v1, 0x20b0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 856
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    .line 865
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    goto :goto_0

    .line 859
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleGlobalMode(ZZ)V
    .locals 3
    .parameter "oldUiccState"
    .parameter "newUiccState"

    .prologue
    const v2, 0x20b0263

    .line 775
    const-string v1, "handleNetworkMode() : Global Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 777
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 778
    if-eqz p2, :cond_1

    .line 780
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep Global Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    if-eqz p2, :cond_4

    .line 790
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_3

    const v1, 0x20b0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 792
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    goto :goto_0

    .line 795
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleLteCdmaMode(ZZ)V
    .locals 3
    .parameter "oldUiccState"
    .parameter "newUiccState"

    .prologue
    const v2, 0x20b0263

    .line 870
    const-string v1, "handleNetworkMode() : LTE/CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 871
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 872
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_2

    .line 873
    if-eqz p2, :cond_1

    .line 874
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep LTE/CDMA Mode"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_2
    if-eqz p2, :cond_5

    .line 884
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_3

    const v1, 0x20b0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 886
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    .line 895
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    goto :goto_0

    .line 889
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleLteGsmUmtsMode(ZZ)V
    .locals 3
    .parameter "oldUiccState"
    .parameter "newUiccState"

    .prologue
    const v2, 0x20b0263

    .line 803
    const-string v1, "handleNetworkMode() : LTE/GSM/UMTS"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 804
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 805
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_4

    .line 806
    if-eqz p2, :cond_3

    .line 808
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isNetworkModeDisplayed:Z

    if-eqz v1, :cond_0

    const-string v1, "Keep LTE/GSM/UMTS"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 810
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 811
    :cond_1
    const-string v1, "Query PLMN List"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQueryAvailableNetworks()V

    .line 836
    :cond_2
    :goto_0
    return-void

    .line 816
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_4
    if-eqz p2, :cond_7

    .line 823
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_5

    const v1, 0x20b0264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 825
    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopup(I)V

    .line 834
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->switchToGlobalMode()V

    goto :goto_0

    .line 828
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isToastDisplayed:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleNetworkMode(Z)V
    .locals 7
    .parameter "newUiccState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 737
    iget-object v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "old_uicc_state"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 741
    .local v0, hasUicc:I
    if-ne v0, v3, :cond_0

    move v1, v3

    .line 742
    .local v1, oldUiccState:Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkMode() : oldUiccState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newUiccState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v2

    .line 745
    .local v2, systemSelection:I
    packed-switch v2, :pswitch_data_0

    .line 763
    const-string v5, "handelNetworkmode() : Not supported"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    .line 767
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "old_uicc_state"

    if-nez p1, :cond_1

    :goto_2
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    return-void

    .end local v1           #oldUiccState:Z
    .end local v2           #systemSelection:I
    :cond_0
    move v1, v4

    .line 741
    goto :goto_0

    .line 747
    .restart local v1       #oldUiccState:Z
    .restart local v2       #systemSelection:I
    :pswitch_0
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleGlobalMode(ZZ)V

    goto :goto_1

    .line 751
    :pswitch_1
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleLteGsmUmtsMode(ZZ)V

    goto :goto_1

    .line 755
    :pswitch_2
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleCdmaOnlyMode(ZZ)V

    goto :goto_1

    .line 759
    :pswitch_3
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleLteCdmaMode(ZZ)V

    goto :goto_1

    :cond_1
    move v4, v3

    .line 767
    goto :goto_2

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleUiccStateChanged()V
    .locals 8

    .prologue
    const/16 v7, 0xbb8

    const/16 v6, 0xc9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 697
    sget-boolean v2, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    if-eqz v2, :cond_1

    .line 698
    const-string v2, "skip uicc check"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const-string v2, "check uicc check"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 705
    .local v0, mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 707
    .local v1, state:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Card State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 714
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_2

    .line 715
    sput-boolean v5, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    .line 716
    const-string v2, "UICC is absent.. Display SIM state after 3000 mSec"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, v6, v4, v4, v7}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    .line 721
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V

    goto :goto_0

    .line 723
    :cond_2
    sput-boolean v5, Lcom/android/internal/telephony/gfit/GfitUtils;->checkSIMState:Z

    .line 724
    const-string v2, "UICC is ready.. Display SIM state after 3000 mSec"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 725
    invoke-direct {p0, v6, v5, v4, v7}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    .line 729
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQuerySystemModeAfterBoot()V

    goto :goto_0
.end method

.method private isManualSearchingInSystemSelect()Z
    .locals 2

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isManualSearching = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1285
    iget-boolean v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    return v0
.end method

.method private isManualSelection()Z
    .locals 3

    .prologue
    .line 997
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    .line 998
    .local v0, isManual:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isManualSelection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 999
    return v0
.end method

.method private isPopupDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1251
    iget v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    if-nez v3, :cond_2

    .line 1252
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, factoryTestStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1254
    iput v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    .line 1262
    .end local v0           #factoryTestStr:Ljava/lang/String;
    :goto_0
    return v1

    .line 1257
    .restart local v0       #factoryTestStr:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    .end local v0           #factoryTestStr:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 1262
    goto :goto_0

    .line 1259
    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mFTMFlag:I

    if-ne v3, v2, :cond_1

    goto :goto_0
.end method

.method private isSetupWizard()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1267
    iget-object v4, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1268
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.android.LGSetupWizard"

    .line 1271
    .local v2, setupWizard:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 1272
    const/4 v3, 0x1

    .line 1279
    :cond_0
    :goto_0
    return v3

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/telephony/gfit/GfitUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "isSetupwizard"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1306
    const-string v0, "GSMCDMA"

    .line 1307
    .local v0, TAG:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1308
    const-string v0, "GSM"

    .line 1312
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GFIT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void

    .line 1309
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    const-string v0, "CDMA"

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1302
    sget-object v0, Lcom/android/internal/telephony/gfit/GfitUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GFIT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-void
.end method

.method private selectPlmnDialog(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v11, 0x3

    .line 1009
    const/4 v3, 0x0

    .line 1010
    .local v3, nPlmnListNum:I
    const/4 v2, 0x0

    .line 1011
    .local v2, nInfoIndex:I
    const/4 v4, 0x0

    .line 1013
    .local v4, nRatNum:I
    if-nez p1, :cond_0

    .line 1014
    const-string v8, "Fail to display PLMN Dialog"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1060
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/CharSequence;

    .line 1019
    .local v7, plmnDialog:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectPlmnDialog : result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1020
    if-eqz p1, :cond_3

    .line 1021
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v8, 0x14

    if-ge v0, v8, :cond_1

    .line 1022
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    new-instance v9, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    invoke-direct {v9, p0}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;-><init>(Lcom/android/internal/telephony/gfit/GfitUtils;)V

    aput-object v9, v8, v0

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1025
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/OperatorInfo;

    .line 1027
    .local v5, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setMCC(I)V

    .line 1028
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setMNC(I)V

    .line 1029
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setRAT(Ljava/lang/String;)V

    .line 1030
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setOperatorNumeric(Ljava/lang/String;)V

    .line 1031
    iget-object v8, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v8, v8, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1033
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MCC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getMCC()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " MNC = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getMNC()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RAT = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OperatorNemeric = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OperatorAlphaLong = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1040
    .local v6, plmn:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1051
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 1052
    goto/16 :goto_2

    .line 1048
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mPlmnList:[Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gfit/GfitUtils$PlmnList;->getRAT()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_3

    .line 1055
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v6           #plmn:Ljava/lang/String;
    :cond_3
    const-string v8, "selectPlmnDialg() : no Plmn list"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    .line 1059
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gfit/GfitUtils;->createPlmnListDialog([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private sendPreferredNetworkType(I)V
    .locals 3
    .parameter "networkType"

    .prologue
    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPreferredNetworkType() : networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 950
    const/16 v1, 0xcb

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 951
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 952
    return-void
.end method

.method private sendQuerySystemModeAfterBoot()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 924
    const-string v1, "sendQuerySystemModeAfterBoot()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 925
    const/16 v1, 0xcd

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 926
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 927
    return-void
.end method

.method private sendTriggerNoServiceChanged()V
    .locals 1

    .prologue
    .line 992
    const-string v0, "sendTriggerNoServiceChanged()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 993
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendEmptyMessage(I)Z

    .line 994
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 663
    return-void
.end method

.method private triggerEventAfterTimeout(IIII)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "timeout"

    .prologue
    .line 651
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 652
    .local v0, msg:Landroid/os/Message;
    int-to-long v1, p4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 653
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    const/16 v4, 0xc9

    const/16 v3, 0xc8

    .line 598
    const-string v1, "dispose GfitUtils..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNoServiceChanged(Landroid/os/Handler;)V

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->sst:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 602
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForStartQueryAvailableNetwork(Landroid/os/Handler;)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEndQueryAvailableNetwork(Landroid/os/Handler;)V

    .line 604
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForSetPreferredNetworkType(Landroid/os/Handler;)V

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const-string v1, "dispose - remove EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE msg"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    .line 622
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    const-string v1, "dispose - remove EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY msg"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    .line 626
    :cond_2
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGfitIntentReceiver unregisterReceiver - Exception Msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 283
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "receive "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->eventToString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 563
    const-string v17, "Not supported"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->loge(Ljava/lang/String;)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 287
    :sswitch_0
    const-string v17, "No service"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/4 v9, 0x1

    .line 291
    .local v9, hasChanged:Z
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "hasChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mNewServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    .line 296
    if-eqz v9, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v16

    .line 302
    .local v16, systemSelection:I
    if-eqz v16, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "persist.radio.airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_0

    .line 304
    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 305
    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 306
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    .line 313
    const/16 v17, 0xc8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    .line 289
    .end local v9           #hasChanged:Z
    .end local v16           #systemSelection:I
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 320
    :sswitch_1
    const-string v17, "register to network"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/4 v9, 0x1

    .line 323
    .restart local v9       #hasChanged:Z
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "hasChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mNewServiceState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNewServiceState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mServiceState:I

    .line 328
    if-eqz v9, :cond_0

    .line 329
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 330
    const-string v17, "remove EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE from MSG queue"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 331
    const-string v17, "register to network.. cancel to set global mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 332
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    .line 333
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    goto/16 :goto_0

    .line 322
    .end local v9           #hasChanged:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 342
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    if-eqz v17, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v17

    if-nez v17, :cond_4

    .line 343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->createNotePopupGlobal()V

    .line 349
    :cond_3
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    goto/16 :goto_0

    .line 347
    :cond_4
    const-string v17, "ignore EVENT_GFIT_POPUP_SWTICH_TO_GLOBAL_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 353
    :sswitch_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 357
    .local v15, simState:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isUsedActionSIMStateChanged()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 360
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mGfitIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_5
    :goto_4
    if-nez v15, :cond_6

    .line 368
    const-string v17, "receive EVENT_GFIT_HANDLE_NETWORK_MODE_AFTER_DELAY : simState = VZW_GFIT_ICC_ABSENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "old_uicc_state"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 361
    :catch_0
    move-exception v8

    .line 362
    .local v8, e:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mGfitIntentReceiver unregisterReceiver - Exception Msg: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 373
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_0

    .line 374
    sget-boolean v17, Lcom/android/internal/telephony/gfit/GfitUtils;->isFirstDisplay:Z

    if-eqz v17, :cond_7

    .line 375
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleNetworkMode(Z)V

    .line 376
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/internal/telephony/gfit/GfitUtils;->isFirstDisplay:Z

    .line 380
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getServiceState()I

    move-result v17

    if-eqz v17, :cond_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendTriggerNoServiceChanged()V

    goto/16 :goto_0

    .line 388
    .end local v15           #simState:I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 389
    .local v6, ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 390
    const-string v17, "success to set preferred network type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 391
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    goto/16 :goto_0

    .line 393
    :cond_8
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 394
    .local v12, preferredNetworkType:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    .line 396
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to set preferred network type.. retry to set preffered network type ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 398
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendPreferredNetworkType(I)V

    .line 399
    const/16 v17, 0xd2

    const/16 v18, 0x0

    const/16 v19, 0x1388

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    .line 404
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryPrefferedNetworkType:I

    goto/16 :goto_0

    .line 410
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v12           #preferredNetworkType:I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 411
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 412
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    move-object/from16 v10, v17

    check-cast v10, [I

    .line 413
    .local v10, ints:[I
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/4 v7, 0x1

    .line 414
    .local v7, currentNetworkSelectinMode:I
    :goto_5
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    .line 415
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 417
    .local v14, selectionMode:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "selectionMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", currentNetworkSelectinMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 418
    if-eq v7, v14, :cond_0

    .line 419
    if-nez v7, :cond_a

    .line 420
    const-string v17, "setNetworkSelectionModeAutomatic()"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeAutomatic()V

    .line 423
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 424
    const-string v17, "sendNetworkSelectionModeManual()"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v7           #currentNetworkSelectinMode:I
    .end local v14           #selectionMode:I
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 414
    .restart local v7       #currentNetworkSelectinMode:I
    :cond_c
    const/16 v17, 0x0

    goto :goto_6

    .line 429
    .end local v7           #currentNetworkSelectinMode:I
    .end local v10           #ints:[I
    :cond_d
    const-string v17, "Fail to query network selection mode : EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 435
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 436
    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    move-object/from16 v10, v17

    check-cast v10, [I

    .line 437
    .restart local v10       #ints:[I
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    .line 438
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isManualMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualMode:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    :cond_e
    const/16 v17, 0x0

    goto :goto_7

    .line 440
    .end local v10           #ints:[I
    :cond_f
    const-string v17, "Fail to query network selection mode after boot : EVENT_GFIT_QUERY_NETWORK_SELECTION_MODE_AFTER_BOOT"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 446
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    .line 447
    const-string v17, "success to set network selection automatic"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_10
    const-string v17, "Fail to set network selection automatic"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 455
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_11

    .line 456
    const-string v17, "success to set network selection manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :cond_11
    const-string v17, "Fail to set network selection manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 463
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 465
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 466
    iget-object v13, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    .line 467
    .local v13, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gfit/GfitUtils;->selectPlmnDialog(Ljava/util/ArrayList;)V

    .line 468
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    goto/16 :goto_0

    .line 470
    .end local v13           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    .line 471
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to query available networks.. retry to query avaialbe networks ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    .line 473
    const/16 v17, 0xd3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    .line 478
    :cond_13
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->nRetryQuertyAvailablenetworks:I

    goto/16 :goto_0

    .line 484
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 485
    const-string v17, "set automatic mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeAutomatic()V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->plmnListDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->dismiss()V

    .line 488
    const-string v17, "Set Automatic Mode now"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :sswitch_b
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 494
    .restart local v12       #preferredNetworkType:I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendPreferredNetworkType(I)V

    goto/16 :goto_0

    .line 498
    .end local v12           #preferredNetworkType:I
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendQueryAvailableNetworks()V

    goto/16 :goto_0

    .line 502
    :sswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->handleUiccStateChanged()V

    goto/16 :goto_0

    .line 506
    :sswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->count()V

    goto/16 :goto_0

    .line 510
    :sswitch_f
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    .line 511
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 512
    const-string v17, "Start querying Available networks... cancel popup to switch to global mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 513
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    goto/16 :goto_0

    .line 518
    :sswitch_10
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSearching:Z

    goto/16 :goto_0

    .line 522
    :sswitch_11
    const-string v17, "Preferred network type is changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "preferred_network_mode"

    const/16 v19, 0xa

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 528
    .local v5, NetworkModeChange:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNetworkMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_15

    const/4 v11, 0x1

    .line 529
    .local v11, isNetworkModeChanged:Z
    :goto_8
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNetworkModeChanged = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " NetworkModeChange = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mNetworkMode = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gfit/GfitUtils;->mNetworkMode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 534
    if-eqz v11, :cond_0

    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v17

    if-eqz v17, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v17

    if-nez v17, :cond_16

    const-string v17, "persist.radio.airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_16

    .line 538
    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 539
    const-string v17, "Switch to Global Mode after 30 secs"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->showToast(Ljava/lang/String;)V

    .line 540
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gfit/GfitUtils;->mProcessingNoService:Z

    .line 542
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 543
    const-string v17, "Reset time expiry... restart to display Global mode after 30 sec"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 544
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    .line 552
    :cond_14
    const/16 v17, 0xc8

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gfit/GfitUtils;->triggerEventAfterTimeout(IIII)V

    goto/16 :goto_0

    .line 528
    .end local v11           #isNetworkModeChanged:Z
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 553
    .restart local v11       #isNetworkModeChanged:Z
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->getSystemSelection()I

    move-result v17

    if-nez v17, :cond_0

    .line 554
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->hasMessages(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 555
    const-string v17, "Network mode changed to Global mode, remove msg for Global switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 556
    const/16 v17, 0xc8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->removeMessages(I)V

    goto/16 :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xcb -> :sswitch_4
        0xcc -> :sswitch_5
        0xcd -> :sswitch_6
        0xce -> :sswitch_7
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_9
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_b
        0xd3 -> :sswitch_c
        0xd4 -> :sswitch_d
        0xdc -> :sswitch_e
        0xdd -> :sswitch_f
        0xde -> :sswitch_10
        0xdf -> :sswitch_11
    .end sparse-switch
.end method

.method public isUsedActionSIMStateChanged()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->useActionSIMStateChanged:Z

    return v0
.end method

.method public sendNetworkSelectionModeAutomatic()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 973
    const-string v3, "sendNetworkSelectionModeAutomatic()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 975
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 976
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 977
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 978
    const-string v3, "network_selection_name_key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 979
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 981
    const/16 v3, 0xce

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 982
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 983
    return-void
.end method

.method public sendNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "operatorNumeric"
    .parameter "operatorRat"
    .parameter "OperatorAlphaLong"

    .prologue
    const/4 v5, 0x0

    .line 956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNetworkSelectionModeManual() : operatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operatorRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operatorAlphaLong = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 958
    const/16 v3, 0xcf

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 962
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 963
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 965
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 966
    const-string v3, "network_selection_name_key"

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 969
    iget-object v3, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 970
    return-void
.end method

.method public sendQueryAvailableNetworks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 912
    const-string v1, "sendQueryAvailableNetworks()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 913
    const/16 v1, 0xd0

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 914
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 915
    return-void
.end method

.method public sendQuerySystemMode(I)V
    .locals 3
    .parameter "systemSelectionMode"

    .prologue
    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQuerySystemMode(systemSelectionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 919
    const/16 v1, 0xcc

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 920
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 921
    return-void
.end method

.method public sendSwitchToNetworkSelectionModeAutomaticAfterTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSwitchToNetworkSelectionModeAutomaticAfterTimeout(timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 987
    const/16 v0, 0xd1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendEmptyMessageDelayed(IJ)Z

    .line 988
    return-void
.end method

.method public setPreferredNetworkMode(I)V
    .locals 4
    .parameter "preferrdNetworkMode"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 935
    .local v0, networkMode:I
    if-eq v0, p1, :cond_0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkMode(): preferrdNetworkMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/android/internal/telephony/gfit/GfitUtils;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 942
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendPreferredNetworkType(I)V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    const-string v1, "setPreferredNetowkrMode : Fail to set Preferred Network. "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchToGlobalMode()V
    .locals 1

    .prologue
    .line 900
    const-string v0, "switchToGlobalMode()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->log(Ljava/lang/String;)V

    .line 903
    invoke-direct {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->isManualSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/android/internal/telephony/gfit/GfitUtils;->sendNetworkSelectionModeAutomatic()V

    .line 908
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gfit/GfitUtils;->setPreferredNetworkMode(I)V

    .line 909
    return-void
.end method
