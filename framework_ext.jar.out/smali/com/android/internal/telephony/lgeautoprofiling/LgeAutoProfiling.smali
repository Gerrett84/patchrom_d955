.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;
.super Ljava/lang/Object;
.source "LgeAutoProfiling.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeKeyProfiling;
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# static fields
.field private static final DBG:Z = false

.field private static final EDBG:Z = true

.field public static final LOG_DIALSTRING:I = 0x10

.field public static final LOG_IDENTITY:I = 0x100

.field public static final LOG_USSD:I = 0x1

.field public static final PRIVATE_LOG_PROP:Ljava/lang/String; = null

.field public static final SYSTEM_PROP_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final VDBG:Z = true

.field private static isDebugMode:Z

.field private static isFirstSyncAfterSIMChange:Z

.field private static isenable:Z

.field private static mLogDialstring:I

.field private static mLogFeatureLoaded:Z

.field private static mLogIdentity:I

.field private static mLogUssd:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const-string v0, "US"

    const-string v3, "TMO"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "persist.service.privacy.enable"

    :goto_0
    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->PRIVATE_LOG_PROP:Ljava/lang/String;

    .line 58
    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogUssd:I

    .line 59
    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogDialstring:I

    .line 60
    sput v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogIdentity:I

    .line 61
    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogFeatureLoaded:Z

    .line 62
    const-string v0, "1"

    const-string/jumbo v3, "ro.debuggable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isDebugMode:Z

    .line 63
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->PRIVATE_LOG_PROP:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isDebugMode:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isenable:Z

    .line 69
    sput-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isFirstSyncAfterSIMChange:Z

    return-void

    .line 52
    :cond_1
    const-string/jumbo v0, "persist.service.plog.enable"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 63
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static checkEccIdleMode(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialNumber"

    .prologue
    const/4 v6, 0x0

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v6

    .line 172
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .line 174
    .local v1, defaultSubId:I
    const/4 v7, 0x0

    const-string v8, "ECC_IdleMode"

    invoke-static {v7, v8, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, eccIdleModeList:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 178
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 179
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 180
    sget-boolean v6, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->ENABLE_PRIVACY_LOG:Z

    if-eqz v6, :cond_2

    .line 181
    const-string v6, "TelephonyAutoProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[checkEccIdleMode] Ecc_IdleMode : true - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 178
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static checkShortCodeCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v6, 0x0

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v6

    .line 218
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .line 220
    .local v1, defaultSubId:I
    const-string v7, "ShortCodeCall"

    invoke-static {p0, v7, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, shortCode:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 223
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 224
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    const/4 v6, 0x1

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getClirSettingValue(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 130
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .line 131
    .local v1, defaultSubId:I
    invoke-static {p0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getClirSettingValue(Landroid/content/Context;I)I

    move-result v0

    .line 133
    .local v0, clirSettingValue:I
    return v0
.end method

.method public static getClirSettingValue(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "sub"

    .prologue
    .line 137
    const-string v3, "SendMyNumberInformation"

    invoke-static {p0, v3, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, clirSetting:Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.iccid-changed"

    const-string v4, "F"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, sim_changed:Ljava/lang/String;
    const/4 v1, -0x1

    .line 146
    .local v1, clirSettingValue:I
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isFirstSyncAfterSIMChange:Z

    if-eqz v3, :cond_0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 148
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[getClirSettingValue] This is First time after SIM change."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isFirstSyncAfterSIMChange:Z

    .line 155
    :cond_0
    return v1
.end method

.method public static getECCList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 277
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v2

    .line 278
    .local v2, defaultSubId:I
    const-string v6, "ECC_list"

    invoke-static {p0, v6, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, NumberString:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v5, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 285
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 289
    .local v1, StrArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 290
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v1, v3

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    :cond_1
    return-object v1
.end method

.method public static getEccListMerged(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "eccList"

    .prologue
    .line 190
    const-string/jumbo v10, "ril.ecclist.autoprofile"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, eccListAutoProfile:Ljava/lang/String;
    const-string v8, ""

    .line 195
    .local v8, tempEcclist:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v9, v0, v5

    .line 196
    .local v9, token:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v2, v1, v4

    .line 197
    .local v2, ecc:Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 198
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 199
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 195
    .end local v2           #ecc:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 205
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #token:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    return-object p0
.end method

.method public static getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "subId"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 246
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .line 248
    .local v0, defaultSubId:I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getRVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRVMS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "subId"

    .prologue
    .line 252
    const-string v0, "RVMS"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 236
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .line 238
    .local v0, defaultSubId:I
    invoke-static {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getVMS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVMS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "subId"

    .prologue
    .line 242
    const-string v0, "VMS"

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "phoneType"

    .prologue
    .line 77
    const-string v1, "TelephonyAutoProfiling"

    const-string v2, "[init] ******** Telephony Auto Profiling *******"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez p0, :cond_1

    .line 80
    const-string v1, "TelephonyAutoProfiling"

    const-string v2, "[init] context is null, return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeFeature;->loadFeature()V

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v0

    .line 88
    .local v0, defaultSubId:I
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 90
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 91
    const-string/jumbo v1, "ril.ecclist.autoprofile"

    const-string v2, "ECC_list"

    invoke-static {p0, v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getProfileInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isCountry(Ljava/lang/String;)Z
    .locals 1
    .parameter "country"

    .prologue
    .line 260
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isLogBlocked(I)Z
    .locals 3
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 354
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogFeatureLoaded:Z

    if-nez v2, :cond_0

    .line 355
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogFeatureLoad()V

    .line 356
    sput-boolean v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogFeatureLoaded:Z

    .line 359
    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isenable:Z

    if-eqz v2, :cond_2

    .line 379
    :cond_1
    :goto_0
    return v0

    .line 362
    :cond_2
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 364
    :sswitch_0
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogUssd:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 368
    :sswitch_1
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogDialstring:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 372
    :sswitch_2
    sget v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogIdentity:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 362
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .locals 1
    .parameter "operator"

    .prologue
    .line 264
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "Country"
    .parameter "Operator"

    .prologue
    .line 256
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 163
    .local v0, result:Z
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 166
    return v0
.end method

.method public static isUserMode()Z
    .locals 3

    .prologue
    .line 299
    const-string/jumbo v1, "user"

    .line 300
    .local v1, strUserMode:Ljava/lang/String;
    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, buildType:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private static privateLogFeatureLoad()V
    .locals 5

    .prologue
    .line 320
    const/4 v2, 0x0

    const-string v3, "block_private_log_level"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->getFeatureInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, feature:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 325
    const-string v2, "TelephonyAutoProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isenable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isenable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, loglevel:I
    sget-boolean v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isenable:Z

    if-nez v2, :cond_0

    .line 330
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 335
    :goto_0
    and-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogUssd:I

    .line 336
    and-int/lit8 v2, v1, 0x10

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogDialstring:I

    .line 337
    and-int/lit16 v2, v1, 0x100

    sput v2, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->mLogIdentity:I

    .line 345
    .end local v1           #loglevel:I
    :cond_0
    return-void

    .line 331
    .restart local v1       #loglevel:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "level"

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isenable:Z

    if-eqz v0, :cond_1

    .line 393
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 390
    .restart local p0
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isLogBlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string p0, ""

    goto :goto_0
.end method

.method protected static profileToMap(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;
    .locals 6
    .parameter "profile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v2, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 112
    .local v0, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 113
    .local v4, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 114
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #key:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 118
    .restart local v0       #key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    return-object v2
.end method

.method public static updateProfile(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->updateProfile(Landroid/content/Intent;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getTargetCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->OPERATOR:Ljava/lang/String;

    return-object v0
.end method
