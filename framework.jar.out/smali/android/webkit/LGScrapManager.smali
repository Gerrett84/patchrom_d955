.class public Landroid/webkit/LGScrapManager;
.super Ljava/lang/Object;
.source "LGScrapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGScrapManager$ClearCopiedImage;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "LGScrapManager"

.field private static final NOTEBOOK_PACKAGE:Ljava/lang/String; = "com.lge.Notebook"

.field private static final NOTEBOOK_WEBSCRAP_ACTIVITY:Ljava/lang/String; = "com.lge.Notebook.RNote_WebScrapActivity"

.field private static final SCRAP_IMAGEPATH:Ljava/lang/String; = "scrapImagePath"

.field private static final SCRAP_TITLE:Ljava/lang/String; = "scrapTitle"

.field private static final SCRAP_URL:Ljava/lang/String; = "scrapURL"

.field private static mScrapRootDir:Ljava/io/File;

.field private static volatile sScrapManager:Landroid/webkit/LGScrapManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "c"
    .parameter "v"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/webkit/LGScrapManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/webkit/LGScrapManager;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 50
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/LGScrapManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/LGScrapManager;->sendIntent(Ljava/lang/String;)V

    return-void
.end method

.method private makedir()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebScrap"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    .line 76
    sget-object v1, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    sget-object v1, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 80
    :cond_0
    sget-object v1, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, children:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 83
    array-length v1, v0

    if-lez v1, :cond_1

    .line 84
    new-instance v1, Landroid/webkit/LGScrapManager$ClearCopiedImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/webkit/LGScrapManager$ClearCopiedImage;-><init>(Landroid/webkit/LGScrapManager$1;)V

    sget-object v2, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/LGScrapManager$ClearCopiedImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    .end local v0           #children:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private saveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .parameter "bitmap"
    .parameter "fileName"

    .prologue
    .line 125
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, fileCacheItem:Ljava/io/File;
    if-nez v1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object v0, p1

    .line 132
    .local v0, bitmap_copy:Landroid/graphics/Bitmap;
    move-object v2, p2

    .line 133
    .local v2, fileName_copy:Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/LGScrapManager$1;

    invoke-direct {v4, p0, v1, v0, v2}, Landroid/webkit/LGScrapManager$1;-><init>(Landroid/webkit/LGScrapManager;Ljava/io/File;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private sendIntent(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"

    .prologue
    .line 105
    iget-object v4, p0, Landroid/webkit/LGScrapManager;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/LGScrapManager;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v1, i:Landroid/content/Intent;
    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v4, "com.lge.Notebook"

    const-string v5, "com.lge.Notebook.RNote_WebScrapActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v4, "scrapTitle"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v4, "scrapURL"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v4, "scrapImagePath"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :try_start_0
    iget-object v4, p0, Landroid/webkit/LGScrapManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized scrapSelection()V
    .locals 7

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/webkit/LGScrapManager;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 55
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, host:Ljava/lang/String;
    sget-object v5, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    if-nez v5, :cond_0

    .line 58
    invoke-direct {p0}, Landroid/webkit/LGScrapManager;->makedir()V

    .line 61
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/webkit/LGScrapManager;->mScrapRootDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 64
    .local v2, image:Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/webkit/LGScrapManager;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getParagraphScreenShot()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    invoke-direct {p0, v2, v0}, Landroid/webkit/LGScrapManager;->saveBitmapToFileCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit p0

    return-void

    .line 53
    .end local v0           #fileName:Ljava/lang/String;
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #image:Landroid/graphics/Bitmap;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #url:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
