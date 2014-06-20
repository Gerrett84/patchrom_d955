.class public Lcom/android/server/thm/ThemeIconManagerService;
.super Landroid/content/thm/IThemeIconManager$Stub;
.source "ThemeIconManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static DEFAULT_THEME_PACKAGE:Ljava/lang/String; = null

.field private static final LGHOME_PACKAGE:Ljava/lang/String; = "com.lge.launcher2"

.field private static final LGHOME_THEME_OPTIMUS:Ljava/lang/String; = "com.lge.launcher2.theme.optimus"

.field private static final MAX_REDIRECTIONMAP_ENTRIES:I = 0x32

.field private static final MAX_THEMEPACKAGEINFO_ENTRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ThemeManagerService"

.field public static final THEME_PROPERTY:Ljava/lang/String; = "persist.sys.theme"


# instance fields
.field private mAppStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBackgroundEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRedirectionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;",
            "Landroid/content/thm/ThemeIconRedirectionMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mThemePackageInfoMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/thm/ThemePackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "com.lge.launcher2.theme.optimus"

    sput-object v0, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f40

    const/4 v7, 0x0

    .line 234
    invoke-direct {p0}, Landroid/content/thm/IThemeIconManager$Stub;-><init>()V

    .line 62
    new-instance v6, Lcom/android/server/thm/ThemeIconManagerService$1;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/server/thm/ThemeIconManagerService$1;-><init>(Lcom/android/server/thm/ThemeIconManagerService;IFZ)V

    iput-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    .line 69
    new-instance v6, Lcom/android/server/thm/ThemeIconManagerService$2;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/server/thm/ThemeIconManagerService$2;-><init>(Lcom/android/server/thm/ThemeIconManagerService;IFZ)V

    iput-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mLock:Ljava/lang/Object;

    .line 201
    new-instance v6, Lcom/android/server/thm/ThemeIconManagerService$3;

    invoke-direct {v6, p0}, Lcom/android/server/thm/ThemeIconManagerService$3;-><init>(Lcom/android/server/thm/ThemeIconManagerService;)V

    iput-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mAppStateReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    iput-object p1, p0, Lcom/android/server/thm/ThemeIconManagerService;->mContext:Landroid/content/Context;

    .line 236
    iget-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.lge.launcher2.theme.optimus"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    if-nez v0, :cond_0

    .line 246
    const-string v6, "com.lge.launcher2"

    sput-object v6, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    .line 249
    :cond_0
    sget-object v6, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/server/thm/ThemeIconManagerService;->getResourcesForApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 250
    .local v5, r:Landroid/content/res/Resources;
    if-eqz v5, :cond_2

    .line 251
    const-string v6, "config_feature_use_theme_icon_bg"

    const-string v7, "bool"

    sget-object v8, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 253
    .local v4, id:I
    if-eqz v4, :cond_1

    .line 254
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mBackgroundEnabled:Z

    .line 256
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 257
    .local v1, assets:Landroid/content/res/AssetManager;
    if-eqz v1, :cond_2

    .line 258
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 262
    .end local v1           #assets:Landroid/content/res/AssetManager;
    .end local v4           #id:I
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v6, "package"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 265
    iget-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mAppStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    return-void

    .line 241
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v5           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 242
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ThemeManagerService"

    const-string v7, "can not find com.lge.launcher2.theme.optimus packages"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generatePackageRedirectionMapLocked(Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;)Landroid/content/thm/ThemeIconRedirectionMap;
    .locals 25
    .parameter "key"

    .prologue
    .line 448
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/thm/ThemeIconManagerService;->getThemePackageInfoLocked(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;

    move-result-object v12

    .line 449
    .local v12, info:Landroid/content/thm/ThemePackageInfo;
    if-eqz v12, :cond_7

    .line 450
    new-instance v17, Landroid/content/thm/ThemeIconRedirectionMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/thm/ThemeIconRedirectionMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v17, map:Landroid/content/thm/ThemeIconRedirectionMap;
    iget-object v0, v12, Landroid/content/thm/ThemePackageInfo;->componentToResMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 454
    .local v13, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-eqz v13, :cond_1

    .line 455
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 456
    .local v15, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 457
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 458
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 460
    .local v7, comp:Landroid/content/ComponentName;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 461
    .local v5, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    .line 462
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v8

    .line 463
    .local v8, fromIdent:I
    if-eqz v8, :cond_0

    .line 464
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/thm/ThemeIconRedirectionMap;->redirectionMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #fromIdent:I
    :catch_0
    move-exception v21

    goto :goto_0

    .line 473
    .end local v7           #comp:Landroid/content/ComponentName;
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v15           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    iget-object v0, v12, Landroid/content/thm/ThemePackageInfo;->bgIcons:[I

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    iget-object v0, v12, Landroid/content/thm/ThemePackageInfo;->bgIcons:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v3, v0

    .line 474
    .local v3, N:I
    :goto_1
    if-lez v3, :cond_8

    .line 475
    new-instance v16, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 476
    .local v16, mainIntent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x200

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 480
    .local v6, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_8

    .line 481
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 482
    .local v20, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 483
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v11

    .line 484
    .local v11, id:I
    if-eqz v11, :cond_2

    .line 487
    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 488
    .local v19, packageName:Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 489
    .local v18, name:Ljava/lang/String;
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 490
    .local v9, hashCode:I
    :goto_3
    if-eqz v18, :cond_3

    .line 491
    mul-int/lit8 v21, v9, 0x1f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v22

    add-int v9, v21, v22

    .line 493
    :cond_3
    if-gez v9, :cond_4

    .line 494
    neg-int v9, v9

    .line 496
    :cond_4
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/thm/ThemeIconRedirectionMap;->backgroundMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/Integer;

    iget-object v0, v12, Landroid/content/thm/ThemePackageInfo;->bgIcons:[I

    move-object/from16 v23, v0

    rem-int v24, v9, v3

    aget v23, v23, v24

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 473
    .end local v3           #N:I
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #hashCode:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #id:I
    .end local v16           #mainIntent:Landroid/content/Intent;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #packageName:Ljava/lang/String;
    .end local v20           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 489
    .restart local v3       #N:I
    .restart local v4       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v6       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #id:I
    .restart local v16       #mainIntent:Landroid/content/Intent;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v19       #packageName:Ljava/lang/String;
    .restart local v20       #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 502
    .end local v3           #N:I
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #id:I
    .end local v13           #items:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v16           #mainIntent:Landroid/content/Intent;
    .end local v17           #map:Landroid/content/thm/ThemeIconRedirectionMap;
    .end local v18           #name:Ljava/lang/String;
    .end local v19           #packageName:Ljava/lang/String;
    .end local v20           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    const/16 v17, 0x0

    :cond_8
    return-object v17
.end method

.method private generateThemePackageInfo(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;
    .locals 28
    .parameter "themePackageName"

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    const/16 v20, 0x0

    .line 426
    :goto_0
    return-object v20

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 325
    .local v9, ctxRes:Landroid/content/res/Resources;
    if-nez v9, :cond_1

    .line 326
    const/16 v20, 0x0

    goto :goto_0

    .line 329
    :cond_1
    const/16 v23, 0x0

    .line 331
    .local v23, themeInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/thm/ThemeIconManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 335
    :goto_1
    if-nez v23, :cond_2

    .line 336
    const/16 v20, 0x0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v10

    .line 333
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x0

    goto :goto_1

    .line 339
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    new-instance v6, Landroid/content/res/AssetManager;

    invoke-direct {v6}, Landroid/content/res/AssetManager;-><init>()V

    .line 340
    .local v6, assets:Landroid/content/res/AssetManager;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    .line 341
    .local v8, cookie:I
    if-nez v8, :cond_3

    .line 342
    const-string v25, "ThemeManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed adding asset path: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 344
    const/16 v20, 0x0

    goto :goto_0

    .line 347
    :cond_3
    new-instance v18, Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v6, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 349
    .local v18, res:Landroid/content/res/Resources;
    const-string v25, "theme_resources"

    const-string v26, "xml"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 350
    .local v24, theme_resid:I
    if-nez v24, :cond_4

    .line 351
    const-string v25, "ThemeManagerService"

    const-string v26, "theme_resources.xml not found"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 353
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 356
    :cond_4
    new-instance v20, Landroid/content/thm/ThemePackageInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/thm/ThemePackageInfo;-><init>()V

    .line 357
    .local v20, result:Landroid/content/thm/ThemePackageInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/thm/ThemePackageInfo;->packageName:Ljava/lang/String;

    .line 358
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/thm/ThemePackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 359
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/thm/ThemePackageInfo;->heightAlpha:I

    .line 360
    const v25, 0x3f4ccccd

    move/from16 v0, v25

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/thm/ThemePackageInfo;->resizeRate:F

    .line 362
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v7, backgroundList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 366
    .local v16, parser:Landroid/content/res/XmlResourceParser;
    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 367
    if-nez v16, :cond_6

    .line 368
    const/16 v20, 0x0

    .line 421
    .end local v20           #result:Landroid/content/thm/ThemePackageInfo;
    if-eqz v16, :cond_5

    .line 422
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 424
    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_0

    .line 370
    .restart local v20       #result:Landroid/content/thm/ThemePackageInfo;
    :cond_6
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    .line 371
    .local v11, eventType:I
    :goto_3
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_b

    .line 372
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v11, v0, :cond_8

    .line 373
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 375
    .local v21, tagName:Ljava/lang/String;
    const-string v25, "AppIcon"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 376
    const/16 v25, 0x0

    const-string v26, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 377
    .local v15, nameValue:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, imageValue:Ljava/lang/String;
    if-eqz v15, :cond_8

    if-eqz v13, :cond_8

    .line 380
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 381
    .local v5, actComp:Landroid/content/ComponentName;
    if-eqz v5, :cond_8

    .line 382
    const-string v25, "drawable"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 384
    .local v22, themeIcon:I
    if-eqz v22, :cond_8

    .line 385
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 386
    .local v17, pkgName:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/thm/ThemePackageInfo;->componentToResMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 387
    .local v14, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    if-nez v14, :cond_7

    .line 388
    new-instance v14, Ljava/util/HashMap;

    .end local v14           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 389
    .restart local v14       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/thm/ThemePackageInfo;->componentToResMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_7
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .end local v5           #actComp:Landroid/content/ComponentName;
    .end local v13           #imageValue:Ljava/lang/String;
    .end local v14           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v15           #nameValue:Ljava/lang/String;
    .end local v17           #pkgName:Ljava/lang/String;
    .end local v21           #tagName:Ljava/lang/String;
    .end local v22           #themeIcon:I
    :cond_8
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    goto/16 :goto_3

    .line 395
    .restart local v21       #tagName:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/thm/ThemeIconManagerService;->mBackgroundEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    const-string v25, "AppIconBG"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 396
    const/16 v25, 0x0

    const-string v26, "image"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 397
    .restart local v13       #imageValue:Ljava/lang/String;
    const-string v25, "drawable"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 399
    .local v19, resid:I
    if-eqz v19, :cond_8

    .line 400
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 418
    .end local v11           #eventType:I
    .end local v13           #imageValue:Ljava/lang/String;
    .end local v19           #resid:I
    .end local v21           #tagName:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 419
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    const-string v25, "ThemeManagerService"

    const-string v26, "Got exception while loading theme resources"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    if-eqz v16, :cond_a

    .line 422
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 424
    :cond_a
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 426
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 407
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #eventType:I
    :cond_b
    :try_start_4
    const-string v25, "ThemeManagerService"

    const-string v26, "ThemePackageInfo loaded."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 410
    .local v4, N:I
    if-lez v4, :cond_d

    .line 411
    new-array v0, v4, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/thm/ThemePackageInfo;->bgIcons:[I

    .line 412
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5
    if-ge v12, v4, :cond_d

    .line 413
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/thm/ThemePackageInfo;->bgIcons:[I

    move-object/from16 v26, v0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    aput v25, v26, v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 412
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 421
    .end local v4           #N:I
    .end local v11           #eventType:I
    .end local v12           #i:I
    :catchall_0
    move-exception v25

    if-eqz v16, :cond_c

    .line 422
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 424
    :cond_c
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 421
    throw v25

    .restart local v4       #N:I
    .restart local v11       #eventType:I
    :cond_d
    if-eqz v16, :cond_5

    .line 422
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_2
.end method

.method public static getConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "context"
    .parameter "config"

    .prologue
    .line 176
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v4, ""

    iput-object v4, p1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    .line 182
    const-string v4, "persist.sys.theme"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, themePackage:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    :cond_2
    invoke-static {p0}, Lcom/android/server/thm/ThemeIconManagerService;->getDefaultThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, defaultThemePackage:Ljava/lang/String;
    const-string v4, "persist.sys.theme"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object v1, p1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    goto :goto_0

    .line 190
    .end local v1           #defaultThemePackage:Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 191
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iput-object v3, p1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 194
    .local v2, e:Ljava/lang/Exception;
    invoke-static {p0}, Lcom/android/server/thm/ThemeIconManagerService;->getDefaultThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1       #defaultThemePackage:Ljava/lang/String;
    const-string v4, "persist.sys.theme"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iput-object v1, p1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDefaultThemePackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 113
    .local v5, pm:Landroid/content/pm/PackageManager;
    sget-object v2, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    .line 114
    .local v2, defaultTheme:Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, candidate:Ljava/lang/String;
    sget-object v9, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/android/server/thm/ThemeIconManagerService;->getResourcesForApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 119
    .local v6, res:Landroid/content/res/Resources;
    if-eqz v6, :cond_2

    .line 120
    const-string v9, "config_feature_default_theme"

    const-string v10, "array"

    sget-object v11, Lcom/android/server/thm/ThemeIconManagerService;->DEFAULT_THEME_PACKAGE:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 122
    .local v4, id:I
    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, themePackages:[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 125
    array-length v9, v8

    if-ne v9, v13, :cond_3

    .line 126
    aget-object v1, v8, v12

    .line 139
    .end local v8           #themePackages:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 140
    .local v0, assets:Landroid/content/res/AssetManager;
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 145
    :cond_1
    if-eqz v1, :cond_2

    .line 147
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v4           #id:I
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 165
    .end local v1           #candidate:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 127
    .restart local v1       #candidate:Ljava/lang/String;
    .restart local v4       #id:I
    .restart local v8       #themePackages:[Ljava/lang/String;
    :cond_3
    array-length v9, v8

    if-le v9, v13, :cond_0

    .line 129
    :try_start_1
    const-string v9, "sys.theme"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 130
    .local v7, sysTheme:I
    if-lez v7, :cond_0

    array-length v9, v8

    if-gt v7, v9, :cond_0

    .line 131
    add-int/lit8 v9, v7, -0x1

    aget-object v1, v8, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 148
    .end local v7           #sysTheme:I
    .end local v8           #themePackages:[Ljava/lang/String;
    .restart local v0       #assets:Landroid/content/res/AssetManager;
    :catch_0
    move-exception v3

    .line 149
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 160
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #id:I
    :cond_4
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v5, v2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object v1, v2

    .line 165
    goto :goto_2

    .line 161
    :catch_1
    move-exception v3

    .line 162
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto :goto_3

    .line 133
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #id:I
    .restart local v8       #themePackages:[Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_0
.end method

.method private static getResourcesForApplication(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 81
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v5

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 86
    .local v4, res:Landroid/content/res/Resources;
    if-eqz v4, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_1
    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 101
    .local v1, assets:Landroid/content/res/AssetManager;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, cookie:I
    if-nez v2, :cond_2

    .line 103
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto :goto_0

    .line 93
    .end local v1           #assets:Landroid/content/res/AssetManager;
    .end local v2           #cookie:I
    :catch_0
    move-exception v3

    .line 94
    .local v3, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_1

    .line 107
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #assets:Landroid/content/res/AssetManager;
    .restart local v2       #cookie:I
    :cond_2
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method private getThemePackageInfoLocked(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;
    .locals 3
    .parameter "themePackageName"

    .prologue
    .line 300
    iget-object v2, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/thm/ThemePackageInfo;

    .line 301
    .local v0, info:Landroid/content/thm/ThemePackageInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 308
    .end local v0           #info:Landroid/content/thm/ThemePackageInfo;
    .local v1, info:Landroid/content/thm/ThemePackageInfo;
    :goto_0
    return-object v1

    .line 304
    .end local v1           #info:Landroid/content/thm/ThemePackageInfo;
    .restart local v0       #info:Landroid/content/thm/ThemePackageInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/thm/ThemeIconManagerService;->generateThemePackageInfo(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_1

    .line 306
    iget-object v2, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 308
    .end local v0           #info:Landroid/content/thm/ThemePackageInfo;
    .restart local v1       #info:Landroid/content/thm/ThemePackageInfo;
    goto :goto_0
.end method

.method public static putConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, "persist.sys.theme"

    iget-object v1, p0, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 507
    iget-object v5, p0, Lcom/android/server/thm/ThemeIconManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump ThemeManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v6, p0, Lcom/android/server/thm/ThemeIconManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 517
    :try_start_0
    const-string v5, "mBackgroundEnabled:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 519
    iget-boolean v5, p0, Lcom/android/server/thm/ThemeIconManagerService;->mBackgroundEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 521
    const-string v5, "mThemePackageInfoMap:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    iget-object v5, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 523
    iget-object v5, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 524
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 525
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    .local v2, key:Ljava/lang/String;
    const-string v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 545
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 531
    :cond_1
    :try_start_1
    const-string v5, "mRedirectionMap:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v5, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 533
    iget-object v5, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 534
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 535
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;

    .line 537
    .local v2, key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    const-string v5, "    "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    const-string v5, "<"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 539
    iget-object v5, v2, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    iget-object v5, v2, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    const-string v5, ">"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 545
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    .end local v2           #key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;)Landroid/content/thm/ThemeIconRedirectionMap;
    .locals 5
    .parameter "themePackageName"
    .parameter "targetPackageName"

    .prologue
    .line 432
    iget-object v4, p0, Lcom/android/server/thm/ThemeIconManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 433
    :try_start_0
    new-instance v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v0, key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/thm/ThemeIconRedirectionMap;

    .line 435
    .local v1, map:Landroid/content/thm/ThemeIconRedirectionMap;
    if-eqz v1, :cond_0

    .line 436
    monitor-exit v4

    move-object v2, v1

    .line 442
    .end local v1           #map:Landroid/content/thm/ThemeIconRedirectionMap;
    .local v2, map:Landroid/content/thm/ThemeIconRedirectionMap;
    :goto_0
    return-object v2

    .line 438
    .end local v2           #map:Landroid/content/thm/ThemeIconRedirectionMap;
    .restart local v1       #map:Landroid/content/thm/ThemeIconRedirectionMap;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/thm/ThemeIconManagerService;->generatePackageRedirectionMapLocked(Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;)Landroid/content/thm/ThemeIconRedirectionMap;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_1

    .line 440
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_1
    monitor-exit v4

    move-object v2, v1

    .end local v1           #map:Landroid/content/thm/ThemeIconRedirectionMap;
    .restart local v2       #map:Landroid/content/thm/ThemeIconRedirectionMap;
    goto :goto_0

    .line 444
    .end local v0           #key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    .end local v2           #map:Landroid/content/thm/ThemeIconRedirectionMap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getThemePackageInfo(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;
    .locals 2
    .parameter "themePackageName"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/thm/ThemeIconManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/thm/ThemeIconManagerService;->getThemePackageInfoLocked(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePackageRedirectionMap(Ljava/lang/String;)V
    .locals 5
    .parameter "targetPackageName"

    .prologue
    .line 287
    iget-object v4, p0, Lcom/android/server/thm/ThemeIconManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 289
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;

    .line 292
    .local v1, key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    iget-object v3, v1, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 296
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    .end local v1           #key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    return-void
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "themePackageName"

    .prologue
    .line 270
    iget-object v4, p0, Lcom/android/server/thm/ThemeIconManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService;->mThemePackageInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService;->mRedirectionMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 275
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 276
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;

    .line 278
    .local v1, key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    iget-object v3, v1, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 282
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    .end local v1           #key:Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    return-void
.end method
