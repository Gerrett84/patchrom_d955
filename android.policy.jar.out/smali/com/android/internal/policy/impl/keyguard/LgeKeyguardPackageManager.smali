.class public Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;
.super Ljava/lang/Object;
.source "LgeKeyguardPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IEffectSurfaceDrawingCompleteListener;,
        Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CAPP_LOCKSCREEN:Z = false

.field private static final DBG:Z = true

.field private static final DEFAULT_LOCKSCREEN_PACKAGE_NAME:Ljava/lang/String; = "com.lge.lockscreen"

.field public static final EFFECT_VIEW_TAG:Ljava/lang/String; = "EffectSurfaceView"

.field private static final LOCKSCREEN_FACTORY_CLASS_NAME:Ljava/lang/String; = "LgeKeyguardHostViewFactoryImpl"

.field private static final LOCKSCREE_HOSTVIEW_LAYOUT_NAME:Ljava/lang/String; = "lge_keyguard_host_view"

.field private static final MSG_PACKAGE_ADDED:I = 0x64

.field private static final MSG_PACKAGE_REMOVED:I = 0x65

.field private static final MSG_PACKAGE_REPLACED:I = 0x66

.field private static final QUICK_COVER_WINDOW_HOSTVIEW_LAYOUT_NAME:Ljava/lang/String; = "lge_quick_cover_window_host_view"

.field private static final TAG:Ljava/lang/String; = "LgeKeyguardPackageManager"

.field private static mInstance:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

.field private mHostViewID:I

.field private mHostViewLayoutID:I

.field private mIsKeyguardEffectEnabled:Z

.field private mIsNaviRemoved:Z

.field private mIsPatternEffectEnabled:Z

.field private mIsScreenDecoTransparent:Z

.field private mIsScreenRotationEnabled:Z

.field private mIsSupportForgotPinPassword:Z

.field private mIsSupportLollipopCover:Z

.field private mIsSupportQuickCover:Z

.field private mIsSupportQuickCoverWindow:Z

.field private mIsUseHardwareAcceleration:Z

.field private mPackageContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mQuickCoverWindowHostViewID:I

.field private mQuickCoverWindowHostViewLayoutID:I

.field private mShouldShowSwipeBeforeSecure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->CAPP_LOCKSCREEN:Z

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mInstance:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    .line 54
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    .line 56
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    .line 57
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    .line 59
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewLayoutID:I

    .line 60
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewID:I

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsScreenRotationEnabled:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsUseHardwareAcceleration:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsKeyguardEffectEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mShouldShowSwipeBeforeSecure:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsScreenDecoTransparent:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportForgotPinPassword:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsPatternEffectEnabled:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsNaviRemoved:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportQuickCoverWindow:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportQuickCover:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportLollipopCover:Z

    .line 77
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHandler:Landroid/os/Handler;

    .line 226
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mCallbacks:Ljava/util/ArrayList;

    .line 110
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->loadLockScreenPackage(Landroid/content/Context;)Z

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onCreate()V

    .line 118
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->handlePackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->handlePackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->handlePackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mInstance:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    return-object v0
.end method

.method private handlePackageAdded(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onDestory()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->loadLockScreenPackage(Landroid/content/Context;)Z

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onCreate()V

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->notifyPackageStateChanged()V

    .line 298
    return-void
.end method

.method private handlePackageRemoved(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onDestory()V

    .line 305
    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageName:Ljava/lang/String;

    .line 306
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    .line 307
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    .line 308
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    .line 309
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    .line 310
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->notifyPackageStateChanged()V

    .line 311
    return-void
.end method

.method private handlePackageReplaced(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onDestory()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->loadLockScreenPackage(Landroid/content/Context;)Z

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onCreate()V

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->notifyPackageStateChanged()V

    .line 324
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mInstance:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mInstance:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;

    .line 100
    :cond_0
    return-void
.end method

.method private loadLockScreenPackage(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 165
    :try_start_0
    const-string v8, "com.lge.lockscreen"

    const/4 v11, 0x3

    invoke-virtual {p1, v8, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 171
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const-string v8, "com.lge.lockscreen"

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 173
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageName:Ljava/lang/String;

    .line 175
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 176
    .local v2, classLoader:Ljava/lang/ClassLoader;
    const-string v8, "com.lge.lockscreen.LgeKeyguardHostViewFactoryImpl"

    const/4 v11, 0x1

    invoke-static {v8, v11, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 179
    .local v5, lockScreenFactroyclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Class;

    .line 180
    .local v0, argClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v0, v8

    .line 181
    const/4 v8, 0x1

    const-class v11, Landroid/content/Context;

    aput-object v11, v0, v8

    .line 182
    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 184
    .local v4, localConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/Object;

    .line 185
    .local v1, argObjects:[Ljava/lang/Object;
    const/4 v8, 0x0

    aput-object p1, v1, v8

    .line 186
    const/4 v8, 0x1

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    aput-object v11, v1, v8

    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    .line 191
    const-string v8, "lge_keyguard_host_view"

    const-string v11, "layout"

    invoke-virtual {p0, v8, v11}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    .line 192
    const-string v8, "lge_keyguard_host_view"

    const-string v11, "id"

    invoke-virtual {p0, v8, v11}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    .line 194
    const-string v8, "lge_quick_cover_window_host_view"

    const-string v11, "layout"

    invoke-virtual {p0, v8, v11}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewLayoutID:I

    .line 195
    const-string v8, "lge_quick_cover_window_host_view"

    const-string v11, "id"

    invoke-virtual {p0, v8, v11}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewID:I

    .line 197
    const-string v8, "config_feature_enable_screen_rotation"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsScreenRotationEnabled:Z

    .line 198
    const-string v8, "config_feature_low_tier"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsUseHardwareAcceleration:Z

    .line 199
    const-string v8, "config_feature_lockscreen_effect"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsKeyguardEffectEnabled:Z

    .line 200
    const-string v8, "config_feature_show_swipe_before_security"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mShouldShowSwipeBeforeSecure:Z

    .line 201
    const-string v8, "config_feature_transparent_screen_deco"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsScreenDecoTransparent:Z

    .line 202
    const-string v8, "config_feature_forgot_pin_password"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportForgotPinPassword:Z

    .line 203
    const-string v8, "config_feature_pattern_effect"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsPatternEffectEnabled:Z

    .line 207
    const-string v8, "config_feature_remove_navibar"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsNaviRemoved:Z

    .line 209
    const-string v8, "config_feature_quick_cover_window"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportQuickCoverWindow:Z

    .line 210
    const-string v8, "config_feature_quick_cover"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportQuickCover:Z

    .line 211
    const-string v8, "config_feature_lollipop_cover"

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportLollipopCover:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 222
    .end local v0           #argClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v1           #argObjects:[Ljava/lang/Object;
    .end local v2           #classLoader:Ljava/lang/ClassLoader;
    .end local v4           #localConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #lockScreenFactroyclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :goto_1
    return v8

    .restart local v0       #argClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v1       #argObjects:[Ljava/lang/Object;
    .restart local v2       #classLoader:Ljava/lang/ClassLoader;
    .restart local v4       #localConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .restart local v5       #lockScreenFactroyclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v6       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    move v8, v10

    .line 198
    goto :goto_0

    .line 213
    .end local v0           #argClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v1           #argObjects:[Ljava/lang/Object;
    .end local v2           #classLoader:Ljava/lang/ClassLoader;
    .end local v4           #localConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #lockScreenFactroyclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 215
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "LgeKeyguardPackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to load a lock screen package!"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-object v12, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageName:Ljava/lang/String;

    .line 218
    iput-object v12, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    .line 219
    iput-object v12, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    .line 220
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    .line 221
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    move v8, v10

    .line 222
    goto :goto_1
.end method

.method private notifyPackageStateChanged()V
    .locals 3

    .prologue
    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;

    .line 279
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;->onKeyguardPackageStateChanged()V

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;
    :cond_1
    return-void
.end method


# virtual methods
.method public createKeyguardHostView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    .locals 10
    .parameter "context"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 417
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 418
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    if-nez v6, :cond_1

    .line 419
    :cond_0
    const-string v6, "LgeKeyguardPackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to createKeyguardHostView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 441
    :goto_0
    return-object v6

    .line 425
    :cond_1
    :try_start_0
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 426
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 427
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 430
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewLayoutID:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 431
    .local v5, view:Landroid/view/View;
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #v:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LgeKeyguardPackageManager"

    const-string v8, "fail to createKeyguardHostView"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 435
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 436
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, exceptionAsStrting:Ljava/lang/String;
    const-string v6, "LgeKeyguardPackageManager"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 438
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exceptionAsStrting:Ljava/lang/String;
    .end local v3           #sw:Ljava/io/StringWriter;
    :cond_3
    move-object v6, v7

    .line 441
    goto :goto_0
.end method

.method public createQuickCoverHostView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    .locals 10
    .parameter "context"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 446
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    .line 447
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewLayoutID:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewID:I

    if-nez v6, :cond_1

    .line 448
    :cond_0
    const-string v6, "LgeKeyguardPackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to createQuickCoverHostView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewLayoutID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 470
    :goto_0
    return-object v6

    .line 454
    :cond_1
    :try_start_0
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewID:I

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 455
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 456
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 458
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 459
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewLayoutID:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 460
    .local v5, view:Landroid/view/View;
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mQuickCoverWindowHostViewID:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #v:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LgeKeyguardPackageManager"

    const-string v8, "fail to createQuickCoverHostView"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 464
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 465
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, exceptionAsStrting:Ljava/lang/String;
    const-string v6, "LgeKeyguardPackageManager"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 467
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exceptionAsStrting:Ljava/lang/String;
    .end local v3           #sw:Ljava/io/StringWriter;
    :cond_3
    move-object v6, v7

    .line 470
    goto :goto_0
.end method

.method public destroyKeyguardHostView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 535
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewID:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 536
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 537
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->cleanUp()V

    .line 538
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 540
    :cond_0
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeatureString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "featureName"

    .prologue
    .line 518
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 520
    :try_start_0
    const-string v3, "default"

    .line 521
    .local v3, ret:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 522
    .local v2, res:Landroid/content/res/Resources;
    const-string v4, "string"

    const-string v5, "com.lge.lockscreen"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 524
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 531
    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LgeKeyguardPackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get feature\'s value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v3, "default"

    goto :goto_0

    .line 531
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "default"

    goto :goto_0
.end method

.method public getPackageContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    return-object v0
.end method

.method public getQuickCoverWidgetIds()[I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->getQuickCoverWidgetIds()[I

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "name"
    .parameter "defType"

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 505
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 506
    .local v2, res:Landroid/content/res/Resources;
    const-string v3, "com.lge.lockscreen"

    invoke-virtual {v2, p1, p2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 514
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return v1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LgeKeyguardPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "arrayName"

    .prologue
    const/4 v3, 0x0

    .line 482
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 485
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 486
    .local v2, res:Landroid/content/res/Resources;
    const-string v4, "array"

    const-string v5, "com.lge.lockscreen"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 488
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 495
    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LgeKeyguardPackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVersionNumber()I
    .locals 2

    .prologue
    .line 347
    const/4 v0, -0x1

    .line 349
    .local v0, version:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->getVersionNumber()I

    move-result v0

    .line 353
    :cond_0
    return v0
.end method

.method public isFeatureEnabled(Ljava/lang/String;)Z
    .locals 8
    .parameter "featureName"

    .prologue
    const/4 v4, 0x0

    .line 327
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, ret:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mPackageContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 331
    .local v2, res:Landroid/content/res/Resources;
    const-string v5, "bool"

    const-string v6, "com.lge.lockscreen"

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 333
    .local v1, id:I
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 340
    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #ret:Z
    :goto_0
    return v3

    .line 335
    .restart local v3       #ret:Z
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "LgeKeyguardPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to get resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 337
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #ret:Z
    :cond_0
    move v3, v4

    .line 340
    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsUseHardwareAcceleration:Z

    return v0
.end method

.method public isKeyguardEffectEnabled()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsKeyguardEffectEnabled:Z

    return v0
.end method

.method public isNaviBarRemoved()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsNaviRemoved:Z

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPatternEffectEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsPatternEffectEnabled:Z

    return v0
.end method

.method public isScreenDecoTransparent()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 373
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsScreenDecoTransparent:Z

    if-eqz v4, :cond_2

    .line 375
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    .line 377
    .local v1, transparentSystemBarEnabled:Z
    if-eqz v0, :cond_0

    .line 378
    const-string v4, "navigation_bar_option"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 383
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #transparentSystemBarEnabled:Z
    :cond_0
    :goto_0
    return v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #transparentSystemBarEnabled:Z
    :cond_1
    move v1, v3

    .line 378
    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #transparentSystemBarEnabled:Z
    :cond_2
    move v1, v3

    .line 383
    goto :goto_0
.end method

.method public isScreenRotationEnabled()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsScreenRotationEnabled:Z

    return v0
.end method

.method public isSupportForgotPinPassword()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportForgotPinPassword:Z

    return v0
.end method

.method public isSupportLollipopCover()Z
    .locals 3

    .prologue
    .line 406
    const-string v0, "LgeKeyguardPackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportLollipopCover : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportLollipopCover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportLollipopCover:Z

    return v0
.end method

.method public isSupportQuickCover()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportQuickCover:Z

    return v0
.end method

.method public isSupportQuickCoverWindow()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mIsSupportQuickCoverWindow:Z

    return v0
.end method

.method public notifyKeyguardDone()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->onKeyguardDone()V

    .line 478
    :cond_0
    return-void
.end method

.method registerPackageStateChangedCallback(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IKeyguardPackageStateChanged;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 274
    :goto_1
    return-void

    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public shouldShowSwipeBeforeSecure()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mShouldShowSwipeBeforeSecure:Z

    return v0
.end method

.method public waitForEffectSurfaceDrawn(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IEffectSurfaceDrawingCompleteListener;)Z
    .locals 1
    .parameter "drawingCompleteListener"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager;->mHostViewFactory:Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/ILgeKeyguardHostViewFactory;->waitForEffectSurfaceDrawn(Lcom/android/internal/policy/impl/keyguard/LgeKeyguardPackageManager$IEffectSurfaceDrawingCompleteListener;)Z

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
