.class Landroid/content/thm/ThemeIconManager$ThemeResources;
.super Ljava/lang/Object;
.source "ThemeIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/thm/ThemeIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeResources"
.end annotation


# instance fields
.field private mCompatibility:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mService:Landroid/content/thm/IThemeIconManager;

.field private mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

.field private mThemeRes:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private getThemeIconManager()Landroid/content/thm/IThemeIconManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string/jumbo v0, "themeicon"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/thm/IThemeIconManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/thm/IThemeIconManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    .line 74
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private peekResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "id"
    .parameter "density"

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 189
    if-nez p2, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    .end local v0           #r:Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 192
    .restart local v0       #r:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 194
    .end local v0           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 196
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPackageRedirectionMap(Ljava/lang/String;)Landroid/content/thm/ThemeIconRedirectionMap;
    .locals 3
    .parameter "targetPackageName"

    .prologue
    .line 170
    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v2, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    .line 172
    .local v0, themePackage:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 174
    :try_start_0
    invoke-direct {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemeIconManager()Landroid/content/thm/IThemeIconManager;

    move-result-object v1

    .line 175
    .local v1, tm:Landroid/content/thm/IThemeIconManager;
    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1, v0, p1}, Landroid/content/thm/IThemeIconManager;->getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;)Landroid/content/thm/ThemeIconRedirectionMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    .end local v0           #themePackage:Ljava/lang/String;
    .end local v1           #tm:Landroid/content/thm/IThemeIconManager;
    :goto_0
    return-object v2

    .line 178
    .restart local v0       #themePackage:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 182
    .end local v0           #themePackage:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object v1, v4

    .line 84
    .local v1, existing:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    .end local v1           #existing:Landroid/content/res/Resources;
    :goto_1
    return-object v1

    :cond_0
    move-object v1, v3

    .line 83
    goto :goto_0

    .line 88
    .restart local v1       #existing:Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->close()V

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemePackageInfo()Landroid/content/thm/ThemePackageInfo;

    move-result-object v2

    .line 92
    .local v2, info:Landroid/content/thm/ThemePackageInfo;
    if-nez v2, :cond_3

    move-object v1, v3

    .line 93
    goto :goto_1

    .line 96
    :cond_3
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 97
    .local v0, assets:Landroid/content/res/AssetManager;
    iget-object v4, v2, Landroid/content/thm/ThemePackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    move-object v1, v3

    .line 98
    goto :goto_1

    .line 101
    :cond_4
    new-instance v3, Landroid/content/res/Resources;

    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v5, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mCompatibility:Landroid/content/res/CompatibilityInfo;

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 102
    .local v3, r:Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    move-object v1, v3

    .line 103
    goto :goto_1
.end method

.method getThemePackageInfo()Landroid/content/thm/ThemePackageInfo;
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    .line 166
    :goto_0
    return-object v1

    .line 157
    :cond_0
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/content/thm/ThemeIconManager$ThemeResources;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemeIconManager()Landroid/content/thm/IThemeIconManager;

    move-result-object v0

    .line 160
    .local v0, tm:Landroid/content/thm/IThemeIconManager;
    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/thm/IThemeIconManager;->getThemePackageInfo(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0           #tm:Landroid/content/thm/IThemeIconManager;
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method init(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "dm"
    .parameter "compat"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    .line 109
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 110
    iput-object p2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 111
    iput-object p3, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mCompatibility:Landroid/content/res/CompatibilityInfo;

    .line 113
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 6
    .parameter "config"
    .parameter "dm"
    .parameter "compat"

    .prologue
    const/4 v5, 0x0

    .line 116
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 121
    .local v1, changes:I
    iput-object p2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 122
    iput-object p3, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mCompatibility:Landroid/content/res/CompatibilityInfo;

    .line 124
    const/high16 v4, 0x1000

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 125
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object v2, v4

    .line 126
    .local v2, old:Landroid/content/res/Resources;
    :goto_1
    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 128
    .local v0, assets:Landroid/content/res/AssetManager;
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 132
    .end local v0           #assets:Landroid/content/res/AssetManager;
    :cond_2
    iput-object v5, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    .line 133
    iput-object v5, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .end local v2           #old:Landroid/content/res/Resources;
    :cond_3
    move-object v2, v5

    .line 125
    goto :goto_1

    .line 139
    :cond_4
    invoke-direct {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->peekResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 140
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v3, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0
.end method
