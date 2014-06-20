.class public final Lcom/android/internal/telephony/LgeRoamingEventDispatcher;
.super Landroid/os/Handler;
.source "LgeRoamingEventDispatcher.java"


# static fields
.field private static final CAMPED_MCC:Ljava/lang/String; = "CAMPED_MCC"

.field private static DBG:Z = false

.field protected static final EVENT_NETWORK_MODE_QUERY_DONE:I = 0x3ee

.field protected static final EVENT_NETWORK_MODE_TO_GW_GWL_DONE:I = 0x3ef

.field protected static final EVENT_SET_NT_MODE_TO_WPREF_DONE:I = 0x44d

.field protected static final EVENT_WCDMA_NET_CHANGED:I = 0x64

.field protected static final EVENT_WCDMA_NET_TO_KOREA_CHANGED:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "CALL_FRW"

.field private static final MCC_KR:Ljava/lang/String; = "450"

.field private static final SHAREDPREF_SAVED_CAMPED_MCC:Ljava/lang/String; = "saved_CAMPED_MCC"

.field private static roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;


# instance fields
.field private final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurCampedMcc:Ljava/lang/String;

.field private mDesiredNwMode:I

.field private mFirstImmigration:Z

.field private mOldCampedMcc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->DBG:Z

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "ctx"
    .parameter "commandsInterface"

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    .line 62
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    .line 74
    const/16 v2, 0x9

    iput v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    .line 86
    const-string v2, "LgeRoamingEventDispatcher created"

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x64

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaNetChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x65

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaNetToKoreaChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "saved_CAMPED_MCC"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "CAMPED_MCC"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, savedMcc:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedPreference(SHAREDPREF_SAVED_CAMPED_MCC) saved mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CAMPED_MCC"

    const-string v4, "450"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init SharedPreference(SHAREDPREF_SAVED_CAMPED_MCC) cammped mcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CAMPED_MCC"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 110
    :cond_2
    return-void
.end method

.method private checkAndNWModeChange()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 448
    const/4 v2, -0x1

    .line 449
    .local v2, mobile_data:I
    const/4 v0, -0x1

    .line 450
    .local v0, data_roaming:I
    const/4 v1, -0x1

    .line 452
    .local v1, lte_roaming:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndNWModeChange:: hasRegistered, mOldCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 454
    const-string v3, "450"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "450"

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 456
    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 457
    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 458
    iget-object v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lte_roaming"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", data_roaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lte_roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 462
    if-ne v2, v6, :cond_1

    if-ne v0, v6, :cond_1

    if-ne v1, v6, :cond_1

    .line 463
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    .line 464
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    .line 467
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto :goto_0
.end method

.method public static getLgeRoamingEventDispatcher(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/LgeRoamingEventDispatcher;
    .locals 2
    .parameter "ctx"
    .parameter "commandsInterface"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLgeRoamingEventDispatcher : roamingEventDispatcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ctx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "commandsInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 123
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 125
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    if-nez v0, :cond_2

    .line 126
    new-instance v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    .line 129
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->roamingEventDispatcher:Lcom/android/internal/telephony/LgeRoamingEventDispatcher;

    goto :goto_0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 486
    sget-boolean v0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CALL_FRW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeRoamingEventDispatcher] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    return-void
.end method

.method private saveNetworkInfo(I)Z
    .locals 6
    .parameter "new_mcc"

    .prologue
    const/4 v3, 0x0

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveNetworkInfo : new_mcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldCampedMcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurCampedMcc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 394
    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "saved_CAMPED_MCC"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 395
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "CAMPED_MCC"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, oldMccStr:Ljava/lang/String;
    const-string v0, ""

    .line 399
    .local v0, newMccStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefs get = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 400
    if-eqz p1, :cond_0

    .line 401
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 405
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CAMPED_MCC"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefs put = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "CAMPED_MCC"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 409
    iput-object v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    .line 410
    iput-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurCampedMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 414
    const/4 v3, 0x1

    .line 419
    :goto_0
    return v3

    .line 418
    :cond_0
    const-string v4, "mOldCampedMcc, mCurCampedMcc is not changed"

    invoke-static {v4}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreferredNetworkForRoaming(I)V
    .locals 4
    .parameter "mPrevNetworkMode"

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Network Mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 361
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    if-ne p1, v0, :cond_2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aleady mDesiredNwMode :: mPrevNetworkMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDesiredNwMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    const-string v1, "LTE_ROAMING_SKT"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    goto :goto_0

    .line 371
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change GW/GWL Network Mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    const/16 v2, 0x3ef

    iget v3, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 477
    const-string v0, "LgeRoamingEventDispatcher finalized"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaNetChanged(Landroid/os/Handler;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaNetToKoreaChanged(Landroid/os/Handler;)V

    .line 483
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 137
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New Roaming Event Message Received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 139
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 350
    const-string v9, "LgeRoamingEventDispatcher unexpected handleMessage case"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 143
    :sswitch_0
    const-string v9, "KR"

    const-string v10, "LGU"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 144
    const-string v9, "Network mode change (GWL->GW) completed"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 146
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 158
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 159
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v3, 0x3

    .line 160
    .local v3, mPrevNetworkType:I
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_1

    .line 161
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x0

    aget v3, v9, v10

    .line 163
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto :goto_0

    .line 167
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #mPrevNetworkType:I
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 168
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_2

    .line 169
    iget-object v9, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 170
    .local v5, nwMode:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_NETWORK_MODE_TO_GW_GWL_DONE received nwMod e= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 171
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    const/4 v9, 0x0

    const-string v10, "LTE_ROAMING_SKT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 173
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    goto :goto_0

    .line 176
    .end local v5           #nwMode:I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_NETWORK_MODE_TO_GW_GWL_DONE ERROR ar.exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 184
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 185
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 186
    .local v4, mcc:I
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 187
    .local v6, rat:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_CHANGED : mcc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rat = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->saveNetworkInfo(I)Z

    move-result v2

    .line 190
    .local v2, isCampedMccChanged:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_CHANGED : isCampedMccChanged = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 193
    const-string v9, "persist.radio.isroaming"

    const-string v10, "true"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    if-eqz v2, :cond_5

    .line 198
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "450"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 199
    :cond_3
    const-string v9, "001"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 200
    iget-object v8, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    .line 201
    .local v8, validOldCampedMcc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 202
    const-string v8, "450"

    .line 204
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "newmcc"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v9, "oldmcc"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_CAMPED_MCC_CHANGE : EXTRA_NEW_MCC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", EXTRA_OLD_MCC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 208
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 215
    .end local v1           #intent:Landroid/content/Intent;
    .end local v8           #validOldCampedMcc:Ljava/lang/String;
    :cond_5
    const-string v9, "KR"

    const-string v10, "LGU"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 217
    if-eqz v2, :cond_0

    .line 218
    const-string v9, "450"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 219
    const/4 v9, 0x0

    const-string v10, "lgu_lte_roaming"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 220
    const-string v9, "Maintain network mode as GWL to support LTE roaming."

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 230
    :goto_1
    const/4 v9, 0x0

    const-string v10, "OEM_RAD_DIALER_POPUP"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 231
    const-string v9, "KR"

    const-string v10, "LGU"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 233
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "oem_rad_dialer_popup"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    const-string v9, "TelephonyUtils.OEM_RAD_DIALER_POPUP set 1 by LGU+ scenario"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_6
    const-string v9, "001"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "1"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "000"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 223
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is invalid MCC, Do NOT change preferred network mode."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    const/16 v11, 0x44d

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 226
    const-string v9, "Change network mode (GWL->GW) arriving at roaming area."

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_9
    const-string v9, "KR"

    const-string v10, "SKT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 249
    const-string v9, "450"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "001"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "000"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 251
    const/4 v9, 0x0

    const-string v10, "LTE_ROAMING_SKT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    if-eqz v9, :cond_0

    .line 252
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    const/16 v11, 0x9

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 255
    .local v7, settingNetworkMode:I
    if-eqz v2, :cond_b

    .line 257
    const/4 v9, 0x0

    const-string v10, "OEM_RAD_DIALER_POPUP"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 258
    const-string v9, "450"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 259
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "oem_rad_dialer_popup"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    const-string v9, "TelephonyUtils.OEM_RAD_DIALER_POPUP set 1 by SKT scenario"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 264
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_TO_KOREA_CHANGED KEY_LTE_ROAMING_SKT mFirstImmigration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 265
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    .line 266
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto/16 :goto_0

    .line 268
    :cond_b
    const/4 v9, 0x1

    if-eq v7, v9, :cond_c

    const/4 v9, 0x2

    if-eq v7, v9, :cond_c

    const/16 v9, 0xb

    if-ne v7, v9, :cond_d

    .line 271
    :cond_c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_TO_KOREA_CHANGED Keep the NW mode for engineer test, settingNetworkMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_TO_KOREA_CHANGED KEY_LTE_ROAMING_SKT mFirstImmigration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 275
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mDesiredNwMode:I

    .line 276
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->setPreferredNetworkForRoaming(I)V

    goto/16 :goto_0

    .line 283
    .end local v7           #settingNetworkMode:I
    :cond_e
    const-string v9, "KR"

    const-string v10, "KT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 286
    const/4 v9, 0x0

    const-string v10, "LTE_ROAMING_KT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 287
    const-string v9, "EVENT_WCDMA_NET_TO_KOREA_CHANGED KEY_LTE_ROAMING_KT"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->checkAndNWModeChange()V

    goto/16 :goto_0

    .line 298
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #isCampedMccChanged:Z
    .end local v4           #mcc:I
    .end local v6           #rat:I
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 299
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 300
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 301
    .restart local v4       #mcc:I
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 302
    .restart local v6       #rat:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_TO_KOREA_CHANGED mcc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rat = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->saveNetworkInfo(I)Z

    move-result v2

    .line 305
    .restart local v2       #isCampedMccChanged:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_WCDMA_NET_TO_KOREA_CHANGED : isCampedMccChanged = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 308
    const-string v9, "persist.radio.isroaming"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-eqz v2, :cond_f

    .line 313
    const-string v9, "450"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "001"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 314
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.lge.intent.action.LGE_CAMPED_MCC_CHANGE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v9, "newmcc"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v9, "oldmcc"

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_CAMPED_MCC_CHANGE : EXTRA_NEW_MCC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mCurCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", EXTRA_OLD_MCC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mOldCampedMcc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 318
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 324
    .end local v1           #intent:Landroid/content/Intent;
    :cond_f
    if-eqz v2, :cond_10

    const/4 v9, 0x0

    const-string v10, "OEM_RAD_DIALER_POPUP"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 325
    iget-object v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "oem_rad_dialer_popup"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    const-string v9, "TelephonyUtils.OEM_RAD_DIALER_POPUP set 0 by SKT scenario"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 331
    :cond_10
    const/4 v9, 0x0

    const-string v10, "LTE_ROAMING_SKT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 332
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->mFirstImmigration:Z

    .line 333
    const-string v9, "Set true the mFirstImmigration for next roaming"

    invoke-static {v9}, Lcom/android/internal/telephony/LgeRoamingEventDispatcher;->log(Ljava/lang/String;)V

    .line 337
    :cond_11
    const-string v9, "KR"

    const-string v10, "LGU"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 340
    const-string v9, "KR"

    const-string v10, "SKT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 343
    const-string v9, "KR"

    const-string v10, "KT"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x3ee -> :sswitch_1
        0x3ef -> :sswitch_2
        0x44d -> :sswitch_0
    .end sparse-switch
.end method
