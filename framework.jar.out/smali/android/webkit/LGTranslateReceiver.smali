.class public Landroid/webkit/LGTranslateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LGTranslateReceiver.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EMAIL:Ljava/lang/String; = "com.lge.email"

.field private static final LOG_TAG:Ljava/lang/String; = "LGTranslateReceiver"

.field private static final TRANSLATE_EXIT:Ljava/lang/String; = "com.lge.texttranslate.EXIT"

.field private static final TRANSLATE_ROTATE_DELAY:I = 0x5dc

.field private static final TRANSLATOR:Ljava/lang/String; = "com.lge.texttranslate"

.field private static volatile sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTranslateMode:Z

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "c"
    .parameter "v"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LGTranslateReceiver;->mTranslateMode:Z

    .line 35
    iput-object p1, p0, Landroid/webkit/LGTranslateReceiver;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LGTranslateReceiver;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method private calcTranslateRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 72
    iget-object v1, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getParagraphRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    .local v0, rect:Landroid/graphics/Rect;
    const-string v1, "com.lge.email"

    invoke-direct {p0}, Landroid/webkit/LGTranslateReceiver;->getRegisteredPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 76
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 78
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_1

    .line 79
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 81
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 82
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 84
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/LGTranslateReceiver;
    .locals 2
    .parameter "c"
    .parameter "v"

    .prologue
    .line 40
    const-class v1, Landroid/webkit/LGTranslateReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/webkit/LGTranslateReceiver;

    invoke-direct {v0, p0, p1}, Landroid/webkit/LGTranslateReceiver;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    sput-object v0, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;

    .line 43
    :cond_0
    sget-object v0, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRegisteredPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/LGTranslateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized setupTranslateListener()V
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.texttranslate.EXIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Landroid/webkit/LGTranslateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 51
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized disableTranslateListener()V
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/webkit/LGTranslateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Landroid/webkit/LGTranslateReceiver;->sTranslateReceiver:Landroid/webkit/LGTranslateReceiver;

    .line 67
    const-string v1, "LGTranslateReceiver"

    const-string/jumbo v2, "sTranslateReceiver is destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.texttranslate.EXIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v2, "orientation"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 122
    .local v1, mTranslateOrientaion:Z
    const-string v2, "LGTranslateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "orientation is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v1, :cond_1

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 126
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v2, Landroid/webkit/LGTranslateReceiver$1;

    invoke-direct {v2, p0}, Landroid/webkit/LGTranslateReceiver$1;-><init>(Landroid/webkit/LGTranslateReceiver;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .end local v0           #mHandler:Landroid/os/Handler;
    .end local v1           #mTranslateOrientaion:Z
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v1       #mTranslateOrientaion:Z
    :cond_1
    iget-object v2, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2, v5}, Landroid/webkit/WebViewClassic;->setTranslateMode(Z)V

    .line 136
    iget-object v2, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 137
    invoke-virtual {p0}, Landroid/webkit/LGTranslateReceiver;->disableTranslateListener()V

    .line 139
    const-string v2, "LGTranslateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not received orientation, so Be closed., getTranslateMode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTranslateMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public translateSelection()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 88
    invoke-direct {p0}, Landroid/webkit/LGTranslateReceiver;->setupTranslateListener()V

    .line 89
    iget-object v4, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 91
    invoke-direct {p0}, Landroid/webkit/LGTranslateReceiver;->calcTranslateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 93
    .local v2, rect:Landroid/graphics/Rect;
    const-string v4, "LGTranslateReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "text is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v4, "LGTranslateReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSelectionRegion:topleft.y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v4, "LGTranslateReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSelectionRegion:bottomright.y : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.texttranslate"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, i:Landroid/content/Intent;
    const-string/jumbo v4, "leftMost"

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string/jumbo v4, "topOfSelected"

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string/jumbo v4, "rightMost"

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v4, "bottomOfSelected"

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string/jumbo v4, "textString"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v4, "enable"

    const-string v5, "com.lge.texttranslate"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v4, "isWebView"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const/high16 v4, 0x1400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v4, p0, Landroid/webkit/LGTranslateReceiver;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4, v7}, Landroid/webkit/WebViewClassic;->setTranslateMode(Z)V

    .line 110
    :try_start_0
    iget-object v4, p0, Landroid/webkit/LGTranslateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #rect:Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
