.class Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebCoreThreadWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageNotRespondingRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mActiveWebView:Landroid/webkit/WebView;

.field mContext:Landroid/content/Context;

.field private mWatchdogHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/webkit/WebCoreThreadWatchdog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const-class v0, Landroid/webkit/WebCoreThreadWatchdog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebCoreThreadWatchdog;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "watchdogHandler"

    .prologue
    .line 241
    iput-object p1, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->this$0:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    .line 243
    iput-object p3, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mWatchdogHandler:Landroid/os/Handler;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebCoreThreadWatchdog;Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "webView"
    .parameter "watchdogHandler"

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;-><init>(Landroid/webkit/WebCoreThreadWatchdog;Landroid/content/Context;Landroid/os/Handler;)V

    .line 249
    iput-object p2, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mActiveWebView:Landroid/webkit/WebView;

    .line 250
    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mWatchdogHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 256
    sget-boolean v4, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 260
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mActiveWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 261
    .local v3, settings:Landroid/webkit/WebSettings;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getFloatingMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 263
    .local v2, outValue:Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010309

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 270
    .end local v2           #outValue:Landroid/util/TypedValue;
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    const v4, 0x1040406

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040403

    new-instance v6, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable$3;

    invoke-direct {v6, p0}, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable$3;-><init>(Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040405

    new-instance v6, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;

    invoke-direct {v6, p0}, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable$2;-><init>(Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable$1;

    invoke-direct {v5, p0}, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable$1;-><init>(Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 305
    .local v1, dlg:Landroid/app/AlertDialog;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getFloatingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 307
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const-string v5, "Floating: Browser"

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 309
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 311
    return-void

    .line 268
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    goto :goto_0
.end method
