.class public Lcom/android/internal/telephony/LgeTimeZoneMonitor;
.super Landroid/os/Handler;
.source "LgeTimeZoneMonitor.java"


# static fields
.field public static final EVENT_CHECK_LOST_NITZ_INFO:I = 0xb

.field public static final EVENT_CHECK_NITZ_RECEIVED:I = 0x4

.field public static final EVENT_CLEAR_NITZ_RECEIVED:I = 0x5

.field public static final EVENT_NETWORK_ATTACHED:I = 0x1

.field public static final EVENT_NETWORK_TIMEZONE_SETTING:I = 0x3

.field public static final EVENT_NITZ_RECEIVED:I = 0x2

.field public static final EVENT_REVERT_TO_NITZ_TIMEZONE:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final NITZ_VALIDITY_DURATION:I = 0xafc8

.field private static final SHAREDPREF_KEY_LAST_CHECKED:Ljava/lang/String; = "last_checked"

.field private static final SHAREDPREF_KEY_LAST_MCC:Ljava/lang/String; = "last_mcc"

.field private static final SHAREDPREF_KEY_LAST_NITZMCC:Ljava/lang/String; = "last_nitzmcc"

.field private static final SHAREDPREF_TIMEZONEMONITOR:Ljava/lang/String; = "timezone_mon"

.field private static mLostNitzInfo:Landroid/os/AsyncResult;

.field private static mWaitingTimeout:I

.field private static sInstance:Lcom/android/internal/telephony/LgeTimeZoneMonitor;


# instance fields
.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mLastChecked:Z

.field private mLastMcc:Ljava/lang/String;

.field private mLastMccChanged:Z

.field private mLastNitzMcc:Ljava/lang/String;

.field private mLocalAreas:[Ljava/lang/String;

.field mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

.field private mNetworkTimeZoneReceived:Z

.field private mNitzReceived:Z

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mSupportManagedTimeSetting:Z

.field private mSupportManualSettingPopup:Z

.field onManagedTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x3a98

    sput v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    invoke-direct {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sInstance:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mInitialized:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 64
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    .line 68
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 71
    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$1;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$2;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor$3;-><init>(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onManagedTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->receivedNetworkSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LgeTimeZoneMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private clearPopupIfAny()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "Clear manual timezone setting popup"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 263
    :cond_0
    return-void
.end method

.method private static getArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "value"

    .prologue
    .line 174
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 190
    :cond_0
    return-object v3

    .line 176
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 186
    .local v3, strArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 187
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 161
    :goto_0
    return v1

    .line 159
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 169
    :goto_0
    return v1

    .line 167
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getDefault()Lcom/android/internal/telephony/LgeTimeZoneMonitor;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sInstance:Lcom/android/internal/telephony/LgeTimeZoneMonitor;

    return-object v0
.end method

.method private isLocalArea(Ljava/lang/String;)Z
    .locals 6
    .parameter "cur_mcc"

    .prologue
    const/4 v4, 0x0

    .line 194
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v4

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 197
    .local v1, el:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLocalAreas = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", el = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cur_mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 199
    const/4 v4, 0x1

    goto :goto_0

    .line 196
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private receivedNetworkSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-nez v0, :cond_0

    .line 221
    const-string v0, "[receivedNetworkSetting()] Auto timezone setting is not set"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 225
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessage(I)Z

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    goto :goto_0
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 4

    .prologue
    .line 232
    iget-boolean v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getAutoTimeZone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reverting to NITZ TimeZone: mLastMcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNitzReceived = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, opnum:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 238
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, mcc:Ljava/lang/String;
    const-string v2, "450"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->isLocalArea(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->changeLocalTimeForMcc(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static setLostNitzInfo(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "lostNitzInfo"

    .prologue
    .line 410
    sget-object v0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    if-eq v0, p0, :cond_0

    sput-object p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    .line 411
    :cond_0
    return-void
.end method

.method private showPopup()V
    .locals 4

    .prologue
    .line 267
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b02e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onManagedTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->onManagedTimeZoneSettingDialogClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 274
    .local v0, managedTimeSettingDialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 275
    const-string v1, "Show manual timezone setting popup"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 278
    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mManagedTimeZoneSettingDialog:Landroid/app/AlertDialog;

    .line 280
    :cond_0
    return-void
.end method

.method private triggerFakeNitzEvent(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "lostNitzInfo"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->sendNitzEvent(Landroid/os/AsyncResult;)V

    .line 416
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->setLostNitzInfo(Landroid/os/AsyncResult;)V

    .line 418
    :cond_0
    return-void
.end method

.method private updateLastNitzMcc()V
    .locals 5

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v3, "timezone_mon"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 250
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_nitzmcc"

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 255
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide/32 v10, 0xafc8

    const/4 v6, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 305
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 308
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v5, :cond_0

    .line 310
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-nez v5, :cond_1

    .line 311
    const-string v5, "Auto timezone setting is not set"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, opnum:Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_5

    .line 318
    const/4 v5, 0x3

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, mcc:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current mcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 320
    const-string v5, "000"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "001"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastMcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mLastChecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    if-nez v5, :cond_5

    .line 323
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    .line 324
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 325
    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 327
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v6, "timezone_mon"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 328
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 329
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "last_mcc"

    iget-object v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNitzReceived = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNetworkTimeZoneReceived = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 332
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    if-eqz v5, :cond_6

    .line 333
    :cond_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 334
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-eqz v5, :cond_4

    .line 335
    const-string v5, "last_nitzmcc"

    iget-object v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 337
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 344
    :cond_4
    :goto_1
    const-string v6, "last_checked"

    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    if-eqz v5, :cond_7

    const-string v5, "true"

    :goto_2
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mcc:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastChecked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 350
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 351
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    goto/16 :goto_0

    .line 339
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #mcc:Ljava/lang/String;
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->isLocalArea(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getAutoTimeZone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 340
    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Waiting NITZ from attached network for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msec."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 342
    sget v5, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    int-to-long v5, v5

    invoke-virtual {p0, v9, v5, v6}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 344
    :cond_7
    const-string v5, "false"

    goto :goto_2

    .line 355
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mcc:Ljava/lang/String;
    .end local v2           #opnum:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :pswitch_2
    const-string v5, "NITZ is received from network."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 356
    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 357
    invoke-virtual {p0, v6, v10, v11}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 361
    :pswitch_3
    const-string v5, "Network time or timezone setting intent received"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 362
    iput-boolean v8, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    .line 363
    invoke-virtual {p0, v6, v10, v11}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 367
    :pswitch_4
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    if-nez v5, :cond_9

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ is not received even waiting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msec."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 369
    iget-object v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/LgeGlobalTimeZoneHelper;->changeLocalTimeForMcc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 370
    .local v4, tzresult:Z
    if-nez v4, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->showPopup()V

    .line 375
    .end local v4           #tzresult:Z
    :cond_8
    :goto_3
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 376
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    goto/16 :goto_0

    .line 371
    :cond_9
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-eqz v5, :cond_8

    .line 372
    const-string v5, "EVENT_CHECK_NITZ_RECEIVED: NITZ received, updateLastNitzMcc()"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->updateLastNitzMcc()V

    goto :goto_3

    .line 380
    :pswitch_5
    const-string v5, "Expire current NITZ info. 45000 msec elapsed since it received."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 381
    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    if-eqz v5, :cond_a

    .line 382
    const-string v5, "EVENT_CLEAR_NITZ_RECEIVED: updateLastNitzMcc()"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->updateLastNitzMcc()V

    .line 385
    :cond_a
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMccChanged:Z

    .line 386
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNitzReceived:Z

    .line 387
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mNetworkTimeZoneReceived:Z

    goto/16 :goto_0

    .line 391
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->revertToNitzTimeZone()V

    goto/16 :goto_0

    .line 396
    :pswitch_7
    sget-object v5, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    if-eqz v5, :cond_0

    .line 397
    const-string v5, "There is lost NITZ info. Trigger fake NITZ reception event."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 398
    sget-object v5, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLostNitzInfo:Landroid/os/AsyncResult;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->triggerFakeNitzEvent(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 422
    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeTimeZoneMonitor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method public receivedNitz()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 207
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    if-nez v0, :cond_0

    .line 208
    const-string v0, "[receivedNitz()] Auto timezone setting is not set"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->log(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 212
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 213
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->removeMessages(I)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessage(I)Z

    .line 216
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    if-eq p1, v3, :cond_0

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->registerForTelephonyIntents()V

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    const-string v3, "auto_time_zone"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "NITZ_WAITING_TIMEOUT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 119
    .local v2, timeout:I
    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    sput v2, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mWaitingTimeout:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2           #timeout:I
    :cond_1
    :goto_0
    const-string v3, "MANAGED_TIME_SETTING"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManagedTimeSetting:Z

    .line 123
    const-string v3, "MAUNAL_TIMEZONE_SETTING_POPUP"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSupportManualSettingPopup:Z

    .line 124
    const-string v3, "MANAGED_TIME_LOCAL_AREAS"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLocalAreas:[Ljava/lang/String;

    .line 126
    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mInitialized:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mContext:Landroid/content/Context;

    const-string v4, "timezone_mon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "last_mcc"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastMcc:Ljava/lang/String;

    .line 129
    const-string v3, "last_checked"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastChecked:Z

    .line 130
    const-string v3, "last_nitzmcc"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mLastNitzMcc:Ljava/lang/String;

    .line 131
    iput-boolean v6, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mInitialized:Z

    .line 133
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 120
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setServiceStateTracker(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 3
    .parameter "sst"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    .line 139
    const/16 v0, 0xb

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void
.end method

.method public unsetServiceStateTracker()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeTimeZoneMonitor;->clearPopupIfAny()V

    .line 146
    return-void
.end method
