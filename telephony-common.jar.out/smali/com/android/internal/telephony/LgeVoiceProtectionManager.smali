.class public Lcom/android/internal/telephony/LgeVoiceProtectionManager;
.super Lcom/android/internal/util/StateMachine;
.source "LgeVoiceProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;,
        Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;,
        Lcom/android/internal/telephony/LgeVoiceProtectionManager$BaseState;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field protected static final EVENT_ICC_CHANGED:I = 0x42021

.field private static final EVENT_INTERNAL_DEFINED:I = 0x25ce9

.field private static final EVENT_OEM_RIL_MESSAGE_GO_DORMANT_RESPONSE:I = 0x25cec

.field protected static final EVENT_RECORDS_LOADED:I = 0x42002

.field private static final EVENT_UPDATE_VP_STATUS:I = 0x25ceb

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field private static final GO_DORMANT_INTERFACE_ALL:Ljava/lang/String; = ""

.field private static final INTENT_SIGNAL_REPORT:Ljava/lang/String; = "com.lge.internal.telephony.SIGNAL_REPORT"

.field private static final LOG_TAG:Ljava/lang/String; = "VPMANAGER"

.field private static final QCRILHOOK_CLASS:Ljava/lang/String; = "com.qualcomm.qcrilhook.QcRilHook"

.field private static final VP_STATUS_IS_CALLING:I = 0x2

.field private static final VP_STATUS_IS_PHYLINK_UP:I = 0x4

.field private static final VP_STATUS_IS_POOR_SIGNAL:I = 0x10

.field private static final VP_STATUS_IS_SCREEN_ON:I = 0x8

.field private static final VP_STATUS_IS_TETHERING:I = 0x20

.field private static final VP_STATUS_IS_UMTS:I = 0x1


# instance fields
.field private mActiveState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;

.field mCm:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mCt:Lcom/android/internal/telephony/CallTracker;

.field mHandler:Landroid/os/Handler;

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsReady:Z

.field mNetManageService:Landroid/os/INetworkManagementService;

.field mP:Lcom/android/internal/telephony/PhoneBase;

.field private mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

.field private mQcRilHookObject:Ljava/lang/Object;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mVpStatus:I

.field pm:Landroid/os/PowerManager;

.field sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 12
    .parameter "context"
    .parameter "ci"
    .parameter "p"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 156
    const-string v6, "LgeVoiceProtectionManager"

    invoke-direct {p0, v6}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 91
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    .line 96
    iput-object v10, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object v10, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilHookObject:Ljava/lang/Object;

    .line 101
    iput-object v10, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

    .line 103
    const/16 v6, 0x8

    iput v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    .line 112
    new-instance v6, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)V

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v6, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    invoke-direct {v6, p0, v10}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    .line 439
    new-instance v6, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;

    invoke-direct {v6, p0, v10}, Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;-><init>(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/telephony/LgeVoiceProtectionManager$1;)V

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mActiveState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 160
    iput-object p3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mP:Lcom/android/internal/telephony/PhoneBase;

    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mP:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mP:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    .line 163
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->pm:Landroid/os/PowerManager;

    .line 164
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->pm:Landroid/os/PowerManager;

    const-string v7, "VPManager"

    invoke-virtual {v6, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    const-string v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 167
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mNetManageService:Landroid/os/INetworkManagementService;

    .line 169
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->addState(Lcom/android/internal/util/State;)V

    .line 170
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mActiveState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->addState(Lcom/android/internal/util/State;)V

    .line 171
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setInitialState(Lcom/android/internal/util/State;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    .line 176
    :try_start_0
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/qcrilhook.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 178
    .local v5, qcRilHookClassLoader:Ldalvik/system/PathClassLoader;
    const-string v6, "com.qualcomm.qcrilhook.QcRilHook"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 179
    .local v2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 180
    .local v1, c:Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilHookObject:Ljava/lang/Object;

    .line 181
    const-string v6, "qcRilGoDormant"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1           #c:Ljava/lang/reflect/Constructor;
    .end local v2           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #qcRilHookClassLoader:Ldalvik/system/PathClassLoader;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->start()V

    .line 189
    iput-boolean v11, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    .line 192
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    const v8, 0x42004

    invoke-interface {v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 194
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v7, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    const v8, 0x42021

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    if-eqz v6, :cond_1

    .line 197
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    const v8, 0x42007

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    const v8, 0x42008

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    :cond_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v6, "com.lge.internal.telephony.SIGNAL_REPORT"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v4, v10, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    const-string v6, "VP Manager is ready."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V

    .line 211
    return-void

    .line 182
    .end local v4           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 183
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load QCRILHOOK_CLASS() class, exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->loge(Ljava/lang/String;)V

    .line 184
    iput-object v10, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilHookObject:Ljava/lang/Object;

    .line 185
    iput-object v10, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/LgeVoiceProtectionManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilHookObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/LgeVoiceProtectionManager;)Ljava/lang/reflect/Method;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mQcRilGoDormantFunc:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/LgeVoiceProtectionManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private clearStatusFlag(I)V
    .locals 2
    .parameter "statusFlag"

    .prologue
    .line 250
    iget v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    .line 251
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "VPMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v0, "VPMANAGER"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "VPMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    const-string v0, "VPMANAGER"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "VPMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    const-string v0, "VPMANAGER"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "VPMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    const-string v0, "VPMANAGER"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "VPMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string v0, "VPMANAGER"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStatusFlag(I)V
    .locals 1
    .parameter "statusFlag"

    .prologue
    .line 245
    iget v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    .line 246
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    if-eqz v0, :cond_3

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIsReady:Z

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCt:Lcom/android/internal/telephony/CallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->quit()V

    .line 241
    :cond_3
    return-void
.end method

.method isUMTS()Z
    .locals 2

    .prologue
    .line 451
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 453
    .local v0, tech:I
    sparse-switch v0, :sswitch_data_0

    .line 461
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 459
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 453
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized isVpAllowed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 467
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVpAllowed() : mVpStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VP_STATUS_IS_UMTS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VP_STATUS_IS_CALLING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VP_STATUS_IS_SCREEN_ON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VP_STATUS_IS_POOR_SIGNAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v3, v3, 0x10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", VP_STATUS_IS_TETHERING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v3, v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V

    .line 475
    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    .line 481
    const-string v1, "isVpAllowed() : return true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_0
    monitor-exit p0

    return v0

    .line 484
    :cond_0
    :try_start_1
    const-string v2, "persist.lg.data.vptest"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mVpStatus:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_1

    .line 490
    const-string v1, "isVpAllowed() for VP Test: return true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 494
    :cond_1
    :try_start_2
    const-string v0, "isVpAllowed() : return false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 495
    goto :goto_0
.end method

.method protected onDataCallListChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x4

    .line 533
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    .line 535
    .local v0, dcStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 560
    :goto_0
    return-void

    .line 542
    :cond_0
    const/4 v2, 0x1

    .line 544
    .local v2, isDormant:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V

    .line 546
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 548
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataCallState;

    iget v4, v4, Lcom/android/internal/telephony/DataCallState;->active:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 549
    const/4 v2, 0x0

    .line 555
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prev:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logi(Ljava/lang/String;)V

    .line 557
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->clearStatusFlag(I)V

    goto :goto_0

    .line 546
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->setStatusFlag(I)V

    goto :goto_0
.end method

.method protected onGoDormantReponse(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoDormantResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logv(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method protected onVpStatusChanged()V
    .locals 3

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->isVpAllowed()Z

    move-result v0

    .line 501
    .local v0, vpAllowed:Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mActiveState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mActiveState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$ActiveState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIdleState:Lcom/android/internal/telephony/LgeVoiceProtectionManager$IdleState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 512
    .local v0, newIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 514
    const-string v1, "Removing stale icc objects."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 516
    iput-object v4, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 518
    :cond_2
    if-eqz v0, :cond_0

    .line 519
    const-string v1, "New records found"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->logd(Ljava/lang/String;)V

    .line 520
    iput-object v0, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeVoiceProtectionManager;->mHandler:Landroid/os/Handler;

    const v3, 0x42002

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
