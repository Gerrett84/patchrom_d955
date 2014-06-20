.class public Lcom/android/lgesettings/lge/HideNavigationAppSelect;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "HideNavigationAppSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;,
        Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageListItemCache;,
        Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;,
        Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;
    }
.end annotation


# static fields
.field private static final BOOTUP_APK_PATH:Ljava/lang/String;

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private isExistDB:Z

.field private list:Landroid/widget/ListView;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrixCursor:Landroid/database/MatrixCursor;

.field private final mPackageAdd:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps/bootup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->BOOTUP_APK_PATH:Ljava/lang/String;

    .line 66
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;

    .line 58
    iput-object v1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->isExistDB:Z

    .line 413
    new-instance v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$1;-><init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mPackageAdd:Landroid/content/BroadcastReceiver;

    .line 434
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->makingIgnoreList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->makingList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->readDB()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/text/TextUtils$SimpleStringSplitter;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Landroid/app/IActivityManager;)Landroid/app/IActivityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->setHideNavigationApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->deleteHideNavigationApp(Ljava/lang/String;)V

    return-void
.end method

.method private deleteHideNavigationApp(Ljava/lang/String;)V
    .locals 7
    .parameter "mPackageMame"

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->readDB()Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, enableHideApp:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 455
    const-string v2, ""

    .line 458
    :cond_0
    sget-object v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 459
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .local v3, enabledHideNavigationBuilder:Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, componentNameString:Ljava/lang/String;
    const-string v4, "HideNavigationAppSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete componentNameString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 466
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 467
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->isExistDB:Z

    goto :goto_0

    .line 470
    .end local v1           #componentNameString:Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->isExistDB:Z

    if-eqz v4, :cond_3

    .line 471
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->writeDB(Ljava/lang/String;)V

    .line 472
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->isExistDB:Z

    .line 474
    :cond_3
    return-void
.end method

.method private makingIgnoreList()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 143
    new-instance v2, Ljava/io/File;

    sget-object v12, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->BOOTUP_APK_PATH:Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 145
    .local v9, list:[Ljava/io/File;
    if-nez v9, :cond_0

    .line 175
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 151
    .local v10, pm:Landroid/content/pm/PackageManager;
    iget-object v12, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_1
    const/4 v7, 0x1

    .line 154
    .local v7, isIgnoreListEmpty:Z
    :goto_1
    const/4 v5, 0x0

    .line 155
    .local v5, ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v12, v9

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .restart local v5       #ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    move-object v1, v9

    .local v1, arr$:[Ljava/io/File;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v8, :cond_6

    aget-object v3, v1, v4

    .line 164
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, apkPath:Ljava/lang/String;
    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 166
    .local v6, info:Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_3

    .line 167
    if-nez v7, :cond_2

    iget-object v12, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 168
    :cond_2
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v12, "jp.co.nttdocomo.carriermail"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v12, "com.nttdocomo.android.mascot"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #apkPath:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #isIgnoreListEmpty:Z
    .end local v8           #len$:I
    :cond_4
    move v7, v11

    .line 151
    goto :goto_1

    .line 158
    .restart local v5       #ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #isIgnoreListEmpty:Z
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v12, v9

    iget-object v13, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .restart local v5       #ignorePackagesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 174
    .restart local v1       #arr$:[Ljava/io/File;
    .restart local v4       #i$:I
    .restart local v8       #len$:I
    :cond_6
    iput-object v5, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    goto :goto_0
.end method

.method private makingList()V
    .locals 26

    .prologue
    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 196
    .local v16, pm:Landroid/content/pm/PackageManager;
    new-instance v20, Landroid/database/MatrixCursor;

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "_id"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string v23, "packagename"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    const-string v23, "appname"

    aput-object v23, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 198
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v21

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :try_start_1
    new-instance v14, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    .local v14, mainIntent:Landroid/content/Intent;
    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 204
    .local v13, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v20, "android.intent.category.HOME"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 207
    .local v10, homelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 212
    .local v4, _id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v22, 0x207002f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-nez v20, :cond_8

    .line 215
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 216
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v17, rInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 218
    .local v15, packageName:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, appName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 220
    .local v8, count:I
    if-nez v15, :cond_1

    .line 215
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 224
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-nez v20, :cond_0

    .line 227
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 228
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 229
    .local v18, rInfo_h:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 227
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 235
    .end local v18           #rInfo_h:Landroid/content/pm/ResolveInfo;
    :cond_3
    const-string v20, "android.permission.SET_WALLPAPER"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 245
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 245
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 251
    :cond_5
    if-nez v8, :cond_0

    .line 252
    new-instance v6, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    invoke-direct {v6}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;-><init>()V

    .line 253
    .local v6, appData:Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;
    iput-object v7, v6, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->appName:Ljava/lang/String;

    .line 254
    iput-object v15, v6, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->packageName:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 310
    .end local v4           #_id:I
    .end local v6           #appData:Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;
    .end local v7           #appName:Ljava/lang/String;
    .end local v8           #count:I
    .end local v10           #homelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #i:I
    .end local v12           #j:I
    .end local v13           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #mainIntent:Landroid/content/Intent;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v17           #rInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    :catch_0
    move-exception v9

    .line 313
    .local v9, e:Ljava/lang/Exception;
    const-string v20, "HideNavigationAppSelect"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "exception occurred "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v9           #e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getListView()Landroid/widget/ListView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->list:Landroid/widget/ListView;

    .line 316
    new-instance v5, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f040098

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;-><init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 317
    .local v5, adapter:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getView()Landroid/view/View;

    move-result-object v21

    const v22, 0x1020004

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 320
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    return-void

    .line 260
    .end local v5           #adapter:Lcom/android/lgesettings/lge/HideNavigationAppSelect$PackageConfigListItemAdapter;
    .restart local v4       #_id:I
    .restart local v10       #homelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11       #i:I
    .restart local v13       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14       #mainIntent:Landroid/content/Intent;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 261
    .local v19, total:I
    if-eqz v19, :cond_e

    .line 263
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v20, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v23, v20

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v25, v11, 0x1

    sub-int v25, v19, v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v25, v11, 0x1

    sub-int v25, v19, v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->appName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v4, v4, 0x1

    .line 263
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 273
    .end local v11           #i:I
    .end local v19           #total:I
    :cond_8
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_d

    .line 274
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 275
    .restart local v17       #rInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 276
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 277
    .restart local v7       #appName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 278
    .restart local v8       #count:I
    if-nez v15, :cond_a

    .line 273
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 283
    :cond_a
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_c

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 285
    add-int/lit8 v8, v8, 0x1

    .line 283
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 289
    :cond_c
    if-nez v8, :cond_9

    .line 290
    new-instance v6, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    invoke-direct {v6}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;-><init>()V

    .line 291
    .restart local v6       #appData:Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;
    iput-object v7, v6, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->appName:Ljava/lang/String;

    .line 292
    iput-object v15, v6, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->packageName:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 297
    .end local v6           #appData:Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;
    .end local v7           #appName:Ljava/lang/String;
    .end local v8           #count:I
    .end local v12           #j:I
    .end local v15           #packageName:Ljava/lang/String;
    .end local v17           #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 298
    .restart local v19       #total:I
    if-eqz v19, :cond_e

    .line 300
    const/4 v11, 0x0

    :goto_9
    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v22, v0

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v20, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v23, v20

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v25, v11, 0x1

    sub-int v25, v19, v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v25, v11, 0x1

    sub-int v25, v19, v25

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$AppData;->appName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 306
    add-int/lit8 v4, v4, 0x1

    .line 300
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 310
    :cond_e
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private readDB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_hide_navigation_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerBReceiver()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mPackageAdd:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    return-void
.end method

.method private setHideNavigationApp(Ljava/lang/String;)V
    .locals 5
    .parameter "mPackageMame"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->readDB()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, enableHideApp:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 442
    const-string v0, ""

    .line 445
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, enabledHideNavigationBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    const-string v2, "HideNavigationAppSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add componentNameString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->writeDB(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method private writeDB(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_hide_navigation_apps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    const-string v0, "HideNavigationAppSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write HideNavigation app DB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_hide_navigation_apps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 88
    move-object v0, p1

    .line 89
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040099

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, rootView:Landroid/view/View;
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    .line 94
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mActivityManager:Landroid/app/IActivityManager;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mIgnoreList:Ljava/util/List;

    .line 98
    invoke-direct {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->registerBReceiver()V

    .line 99
    new-instance v2, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;

    invoke-direct {v2, p0, p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;-><init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mPackageAdd:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 400
    iget-object v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->list:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/lgesettings/Utils;->recycleView(Landroid/view/View;)V

    .line 401
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 402
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 403
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
