.class public Lcom/android/lgesettings/hotkey/AllAppsList;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "AllAppsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;,
        Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;,
        Lcom/android/lgesettings/hotkey/AllAppsList$FreqAppsListAdapter;,
        Lcom/android/lgesettings/hotkey/AllAppsList$RecommendedAppsListAdapter;,
        Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;
    }
.end annotation


# instance fields
.field private FEATURE_EXCLUDE_APP_LIST:Z

.field private final FREQ_APPS_TO_BE_DISPLAYED:I

.field private l:Landroid/widget/ListView;

.field public mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private mFrequentlyApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRecommendedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private mStats:[Lcom/android/internal/os/PkgUsageStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->FEATURE_EXCLUDE_APP_LIST:Z

    .line 78
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->FREQ_APPS_TO_BE_DISPLAYED:I

    .line 506
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/hotkey/AllAppsList;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/lgesettings/hotkey/AllAppsList;->getAppLaunchCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/hotkey/AllAppsList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mFixedApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mRecommendedApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/hotkey/AllAppsList;->setAppIcon(Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mFrequentlyApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/hotkey/AllAppsList;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    return-object v0
.end method

.method private filterApps()V
    .locals 12

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900ba

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, exclusionList:[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v8, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;>;"
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v1, v4

    .line 265
    .local v7, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .line 266
    .local v5, info:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 268
    .local v0, activityName:Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 269
    const-string v9, "LockScreenSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AllAppsList:OnCreate] App excluded : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v0           #activityName:Ljava/lang/String;
    .end local v5           #info:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 276
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 277
    return-void
.end method

.method private getAppLaunchCount(Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"

    .prologue
    .line 243
    iget-object v4, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mStats:[Lcom/android/internal/os/PkgUsageStats;

    if-eqz v4, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mStats:[Lcom/android/internal/os/PkgUsageStats;

    .local v0, arr$:[Lcom/android/internal/os/PkgUsageStats;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 245
    .local v3, pus:Lcom/android/internal/os/PkgUsageStats;
    iget-object v4, v3, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 246
    iget v4, v3, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    .line 250
    .end local v0           #arr$:[Lcom/android/internal/os/PkgUsageStats;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pus:Lcom/android/internal/os/PkgUsageStats;
    :goto_1
    return v4

    .line 244
    .restart local v0       #arr$:[Lcom/android/internal/os/PkgUsageStats;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #pus:Lcom/android/internal/os/PkgUsageStats;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0           #arr$:[Lcom/android/internal/os/PkgUsageStats;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pus:Lcom/android/internal/os/PkgUsageStats;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private isV5V7Model()Z
    .locals 2

    .prologue
    .line 175
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee5ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee5e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee5ss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee5nfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee7ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vee7e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAppListItems()V
    .locals 5

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    .local v1, intentLauncher:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    .line 222
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 223
    .local v2, resolveinfo:Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    new-instance v4, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    invoke-direct {v4, p0, v2}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;-><init>(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v2           #resolveinfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    new-instance v4, Lcom/android/lgesettings/hotkey/AllAppsList$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/hotkey/AllAppsList$2;-><init>(Lcom/android/lgesettings/hotkey/AllAppsList;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 237
    iget-boolean v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->FEATURE_EXCLUDE_APP_LIST:Z

    if-eqz v3, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->filterApps()V

    .line 240
    :cond_1
    return-void
.end method

.method private makeFixedAppListItems()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mFixedApps:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mFixedApps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private makeRecommendedAppListItems()V
    .locals 5

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, recommendedApps:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->isV5V7Model()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 154
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mRecommendedApps:Ljava/util/List;

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 157
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResolveInfo(Ljava/lang/String;)Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    move-result-object v2

    .line 159
    .local v2, ri:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    const-string v3, "com.lge.QuickClip"

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mRecommendedApps:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    .end local v0           #i:I
    .end local v2           #ri:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    .restart local v0       #i:I
    .restart local v2       #ri:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_3
    const-string v3, "sim_switch"

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    const-string v3, "com.android.lgesettings"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResolveInfo(Ljava/lang/String;)Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    move-result-object v2

    .line 165
    const-string v3, "sim_switch"

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->setPKGName(Ljava/lang/String;)V

    .line 168
    :cond_4
    if-eqz v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mRecommendedApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 172
    .end local v2           #ri:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_5
    return-void
.end method

.method private setAppIcon(Landroid/widget/ImageView;Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;)V
    .locals 1
    .parameter "iv"
    .parameter "appInfo"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v0}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    return-void
.end method


# virtual methods
.method getResolveInfo(Ljava/lang/String;)Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 137
    :goto_0
    return-object v1

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAllApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .line 133
    .local v1, ri:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v1           #ri:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    :cond_3
    move-object v1, v2

    .line 137
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 85
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    :cond_0
    new-instance v1, Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    move-object v0, p1

    .line 96
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04009e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, rootView:Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->l:Landroid/widget/ListView;

    .line 101
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->l:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->makeFixedAppListItems()V

    .line 106
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->makeAppListItems()V

    .line 107
    invoke-direct {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->makeRecommendedAppListItems()V

    .line 109
    new-instance v2, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    .line 110
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    const-string v3, "NO_HEADER"

    new-instance v4, Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/hotkey/AllAppsList$FixedAppsListAdapter;-><init>(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 111
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    const v3, 0x7f080975

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/hotkey/AllAppsList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/hotkey/AllAppsList$RecommendedAppsListAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/hotkey/AllAppsList$RecommendedAppsListAdapter;-><init>(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 112
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    const v3, 0x7f080976

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/hotkey/AllAppsList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/hotkey/AllAppsList$AllAppsListAdapter;-><init>(Lcom/android/lgesettings/hotkey/AllAppsList;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 114
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->l:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->l:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->l:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    :cond_1
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->l:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->recycleView(Landroid/view/View;)V

    .line 256
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 257
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 258
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, l:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v4, 0x7f08097a

    .line 280
    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mAdapter:Lcom/android/lgesettings/hotkey/SeparatedListAdpater;

    invoke-virtual {v1, p3}, Lcom/android/lgesettings/hotkey/SeparatedListAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;

    .line 282
    .local v0, appInfo:Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->getPKGName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->isNormalPackage(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->setDBHotKeyShortPKG(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->setDBHotKeyShortClass(Ljava/lang/String;)V

    .line 286
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick Normal - label : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick Normal - package_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick Normal - class_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->finishFragment()V

    .line 322
    return-void

    .line 290
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->getPKGName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->isNormalPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->getPKGName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->setDBHotKeyShortPKG(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mHotkeyInfo:Lcom/android/lgesettings/hotkey/HotkeyInfo;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/hotkey/HotkeyInfo;->setDBHotKeyShortClass(Ljava/lang/String;)V

    .line 293
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick Dummy - label : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick Dummy - package_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/lgesettings/hotkey/AllAppsList$ResolveInfoEx;->getPKGName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v1, "AllAppsList"

    const-string v2, "onListItemClick Dummy - class_name : none"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_1
    if-nez p3, :cond_2

    .line 300
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotkey_short_package"

    const-string v3, "none"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotkey_short_class"

    const-string v3, "none"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 303
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick - label : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick - package_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick - class_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotkey_short_package"

    const-string v3, "com.lge.QuickClip"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotkey_short_class"

    const-string v3, "com.lge.QuickClip.QuickClipActivity"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 312
    const-string v1, "AllAppsList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListItemClick - label : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/lgesettings/hotkey/AllAppsList;->mPm:Landroid/content/pm/PackageManager;

    const-string v5, "com.lge.QuickClip"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "AllAppsList"

    const-string v2, "onListItemClick - package_name : com.lge.QuickClip"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "AllAppsList"

    const-string v2, "onListItemClick - class_name : com.lge.QuickClip.QuickClipActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 316
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 498
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 499
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/lgesettings/hotkey/AllAppsList;->finish()V

    .line 501
    const/4 v1, 0x1

    .line 503
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
