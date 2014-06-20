.class public Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;
.super Ljava/lang/Object;
.source "LgeProfile.java"

# interfaces
.implements Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfilingConstants;


# static fields
.field private static final DBG:Z = true

.field private static final EDBG:Z = true

.field private static final VDBG:Z = true

.field private static instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastSimState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method private getEccListSimLock(I)Ljava/lang/String;
    .locals 4
    .parameter "subId"

    .prologue
    .line 282
    const-string/jumbo v2, "sim_lock_ecclist"

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, eccListSimLock:Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.iccid-mcc"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 287
    .local v1, mcc:I
    const/16 v2, 0xea

    if-eq v1, v2, :cond_0

    const/16 v2, 0x110

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1c6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1c7

    if-eq v1, v2, :cond_0

    const/16 v2, 0xde

    if-ne v1, v2, :cond_2

    const-string v2, "H3G"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    :cond_0
    const-string v0, "999"

    .line 300
    :cond_1
    :goto_0
    return-object v0

    .line 296
    :cond_2
    const/16 v2, 0x1cc

    if-ne v1, v2, :cond_1

    .line 297
    const-string v0, "110,119,120,122"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    .line 64
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->instance:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private loadProfileFromPreferences(IZ)Z
    .locals 7
    .parameter "subId"
    .parameter "defaultProfile"

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadProfileFromPreferences] *** start profile loading from preferences - defaultProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, prefName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 103
    const-string v0, "defaultProfile"

    .line 108
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v4, "init"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 111
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[loadProfileFromPreferences] preferences do not exist - subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_1
    return v3

    .line 105
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local v1       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 119
    .local v2, profile:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "init"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromPreferences] *** profile loading from preferences complete - defaultProfile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V
    .locals 6
    .parameter "simInfo"
    .parameter "subId"

    .prologue
    .line 129
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromXml] *** start profile loading from xml - subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;

    invoke-direct {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;-><init>()V

    .line 133
    .local v0, parser:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser;->getMatchedProfile(ILcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$ProfileData;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;

    .line 135
    .local v1, profileFromXml:Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;
    if-nez v1, :cond_0

    .line 136
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[profileFromXml] load profile from xml failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->profileToMap(Lcom/android/internal/telephony/lgeautoprofiling/LgeProfileParser$NameValueProfile;)Ljava/util/HashMap;

    move-result-object v2

    .line 143
    .local v2, profileMapFromXml:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 144
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[loadDataFromXml] load profile Map from xml failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    const-string v3, "TelephonyAutoProfiling"

    const-string v4, "[loadProfileFromXml] save SimInfo to preferences"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->writeToPreference(Landroid/content/Context;Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 156
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->saveProfileToPreferences(Ljava/util/HashMap;IZ)V

    .line 159
    :cond_3
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadProfileFromXml] *** end profile loading from xml - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveProfileToPreferences(Ljava/util/HashMap;IZ)V
    .locals 7
    .parameter
    .parameter "subId"
    .parameter "simInfoIsNull"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 166
    .local v3, prefName:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 167
    const-string v3, "defaultProfile"

    .line 176
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[saveProfileToPreferences] save to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v4, "init"

    const-string v5, "done"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 168
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    if-nez p3, :cond_1

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 171
    :cond_1
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[saveProfileToPreferences] simInfo is null, do not save to preferences, subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_2
    return-void

    .line 188
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastSimState(I)Ljava/lang/String;
    .locals 3
    .parameter "subId"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, lastSimState:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #lastSimState:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "subId"

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #value:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 314
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    const-string v1, "TelephonyAutoProfiling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getValue] PROFILE key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-nez v0, :cond_2

    const-string v0, ""

    .end local v0           #value:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public loadProfile(I)V
    .locals 5
    .parameter "subId"

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getSimInfo(I)Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    move-result-object v1

    .line 75
    .local v1, simInfo:Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;
    const/4 v0, 0x0

    .line 77
    .local v0, loadSuccessFromPreferences:Z
    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromPreferences(IZ)Z

    move-result v0

    .line 85
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 90
    :cond_1
    const-string v2, "1"

    const-string/jumbo v3, "persist.sys.cupss.changed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "TelephonyAutoProfiling"

    const-string v3, "[SBP] Operator is changed. Need to reload!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromXml(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;I)V

    .line 95
    :cond_2
    return-void

    .line 80
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->isNull()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->createFromPreference(Landroid/content/Context;I)Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->equals(Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfileFromPreferences(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setEccList(Ljava/lang/String;I)V
    .locals 6
    .parameter "simState"
    .parameter "subId"

    .prologue
    .line 250
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v1

    .line 251
    .local v1, defaultSubId:I
    const/4 v2, 0x0

    .line 252
    .local v2, eccList:Ljava/lang/String;
    const/4 v0, 0x0

    .line 254
    .local v0, changed:Z
    if-ne p2, v1, :cond_1

    .line 255
    const-string v3, "ABSENT"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    const-string/jumbo v3, "no_sim_ecclist"

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 257
    const/4 v0, 0x1

    .line 259
    sget-boolean v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->ENABLE_PRIVACY_LOG:Z

    if-eqz v3, :cond_0

    .line 260
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setEccList] subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", KEY_NO_SIM_ECCLIST : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 276
    const-string/jumbo v3, "ril.ecclist.autoprofile"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_1
    return-void

    .line 261
    :cond_2
    const-string v3, "LOCKED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getEccListSimLock(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    const/4 v0, 0x1

    .line 265
    sget-boolean v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->ENABLE_PRIVACY_LOG:Z

    if-eqz v3, :cond_0

    .line 266
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setEccList] subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", KEY_SIM_LOCK_ECCLIST : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_3
    const-string v3, "LOADED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    const-string v3, "ECC_list"

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 269
    const/4 v0, 0x1

    .line 271
    sget-boolean v3, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->ENABLE_PRIVACY_LOG:Z

    if-eqz v3, :cond_0

    .line 272
    const-string v3, "TelephonyAutoProfiling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setEccList] subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", KEY_ECC_LIST : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLastSimState(ILjava/lang/String;)V
    .locals 2
    .parameter "subId"
    .parameter "simState"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mLastSimState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public updateProfile(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 192
    iget-object v4, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 193
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] context is null, return"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/lgeautoprofiling/LgeSimInfo;->getDefaultSubScription()I

    move-result v3

    .line 203
    .local v3, subId:I
    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->MULTI_SIM_ENABLED:Z

    if-eqz v4, :cond_2

    .line 204
    const-string/jumbo v4, "subscription"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 207
    :cond_2
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    const-string/jumbo v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, simState:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    :cond_3
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateProfile] ACTION_SIM_STATE_CHANGED - simState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getLastSimState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] repeated SIM_STATE, ignore"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_4
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] new SIM_STATE, continue process"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setLastSimState(ILjava/lang/String;)V

    .line 223
    const-string v4, "TelephonyAutoProfiling"

    const-string v5, "[updateProfile] loadProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->loadProfile(I)V

    .line 227
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->setEccList(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 229
    .end local v2           #simState:Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "qualcomm.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    const-string v4, "ECC_list"

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, eccList:Ljava/lang/String;
    const-string/jumbo v4, "ril.ecclist.autoprofile"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-boolean v4, Lcom/android/internal/telephony/lgeautoprofiling/LgeProfile;->ENABLE_PRIVACY_LOG:Z

    if-eqz v4, :cond_0

    .line 235
    const-string v4, "TelephonyAutoProfiling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateProfile] ACTION_DEFAULT_SUBSCRIPTION_CHANGED - subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", setEccList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
