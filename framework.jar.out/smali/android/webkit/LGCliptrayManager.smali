.class public Landroid/webkit/LGCliptrayManager;
.super Ljava/lang/Object;
.source "LGCliptrayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;
    }
.end annotation


# static fields
.field public static final CLIPTRAY_FEATURE_NAME:Ljava/lang/String; = "com.lge.software.cliptray"

.field private static final LGCLIPTRAY_COPY_DATA:I = 0x4

.field private static final LGCLIPTRAY_COPY_IMAGE:I = 0x3

.field private static final LGCLIPTRAY_COPY_TEXT:I = 0x2

.field private static final LGCLIPTRAY_ONPASTE:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "LGCliptrayManager"

.field private static sInstance:Landroid/webkit/LGCliptrayManager;


# instance fields
.field private mClipTrayPasteListener:Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;

.field private mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

.field private mHandler:Landroid/os/Handler;

.field private mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    .line 30
    iput-object v0, p0, Landroid/webkit/LGCliptrayManager;->mClipTrayPasteListener:Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;

    .line 31
    iput-object v0, p0, Landroid/webkit/LGCliptrayManager;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 32
    iput-object v0, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v3, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    .line 30
    iput-object v3, p0, Landroid/webkit/LGCliptrayManager;->mClipTrayPasteListener:Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;

    .line 31
    iput-object v3, p0, Landroid/webkit/LGCliptrayManager;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 32
    iput-object v3, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    .line 47
    sget-object v1, Lcom/lge/loader/RuntimeLibraryLoader;->CLIPTRAY_MANAGER:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/loader/RuntimeLibraryLoader;->getCreator(Ljava/lang/String;)Lcom/lge/loader/InstanceCreator;

    move-result-object v0

    .line 48
    .local v0, creator:Lcom/lge/loader/InstanceCreator;
    if-nez v0, :cond_0

    .line 49
    const-string v1, "LGCliptrayManager"

    const-string v2, "LGCliptrayManager(): Fail to get CliptrayManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lcom/lge/loader/InstanceCreator;->getDefaultInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    iput-object v1, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    .line 54
    iget-object v1, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    if-nez v1, :cond_1

    .line 55
    const-string v1, "LGCliptrayManager"

    const-string v2, "LGCliptrayManager(): mCliptrayManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    new-instance v1, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;

    invoke-direct {v1, p0, v3}, Landroid/webkit/LGCliptrayManager$LGCliptrayHandler;-><init>(Landroid/webkit/LGCliptrayManager;Landroid/webkit/LGCliptrayManager$1;)V

    iput-object v1, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v1, Landroid/webkit/LGCliptrayManager$1;

    invoke-direct {v1, p0}, Landroid/webkit/LGCliptrayManager$1;-><init>(Landroid/webkit/LGCliptrayManager;)V

    iput-object v1, p0, Landroid/webkit/LGCliptrayManager;->mClipTrayPasteListener:Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/webkit/LGCliptrayManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/LGCliptrayManager;)Landroid/webkit/WebViewClassic$WebViewInputConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/LGCliptrayManager;)Lcom/lge/loader/cliptray/ICliptrayManagerLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    return-object v0
.end method

.method public static getInstance()Landroid/webkit/LGCliptrayManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/webkit/LGCliptrayManager;->sInstance:Landroid/webkit/LGCliptrayManager;

    return-object v0
.end method

.method public static hasLGSystemCliptrayServiceFeature(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lge.software.cliptray"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initCliptray(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Landroid/webkit/LGCliptrayManager;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Landroid/webkit/LGCliptrayManager;->sInstance:Landroid/webkit/LGCliptrayManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/webkit/LGCliptrayManager;

    invoke-direct {v0, p0}, Landroid/webkit/LGCliptrayManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/LGCliptrayManager;->sInstance:Landroid/webkit/LGCliptrayManager;

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public copyImageToCliptray(Landroid/net/Uri;)V
    .locals 2
    .parameter "imgUri"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_0
    return-void
.end method

.method public copyToCliptray(Landroid/content/ClipData;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    :cond_0
    return-void
.end method

.method public copyToCliptray(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "selectedText"

    .prologue
    .line 104
    iget-object v1, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 106
    .local v0, clip:Landroid/content/ClipData;
    iget-object v1, p0, Landroid/webkit/LGCliptrayManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 108
    .end local v0           #clip:Landroid/content/ClipData;
    :cond_0
    return-void
.end method

.method public hideCliptray()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v0}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v0}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v0}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->hideCliptray()V

    .line 101
    :cond_0
    return-void
.end method

.method public showCliptray(Landroid/webkit/WebViewClassic$WebViewInputConnection;)V
    .locals 2
    .parameter "inputConnection"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v0}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Landroid/webkit/LGCliptrayManager;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    .line 89
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    iget-object v1, p0, Landroid/webkit/LGCliptrayManager;->mClipTrayPasteListener:Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;

    invoke-interface {v0, v1}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->setPasteListener(Lcom/lge/loader/cliptray/ICliptrayManagerLoader$OnPasteListener;)V

    .line 90
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->setInputType(I)V

    .line 91
    iget-object v0, p0, Landroid/webkit/LGCliptrayManager;->mCliptrayManager:Lcom/lge/loader/cliptray/ICliptrayManagerLoader;

    invoke-interface {v0}, Lcom/lge/loader/cliptray/ICliptrayManagerLoader;->showCliptray()V

    .line 93
    :cond_0
    return-void
.end method
