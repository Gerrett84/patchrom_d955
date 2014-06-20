.class Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;
.super Landroid/os/HandlerThread;
.source "SoftReferenceCacheMap.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TK;>;"
        }
    .end annotation
.end field

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)V
    .locals 1
    .parameter

    .prologue
    .line 300
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.LoaderThread;"
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    .line 301
    const-string v0, "DataLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mContactIds:Ljava/util/ArrayList;

    .line 302
    return-void
.end method

.method private loadDataFromDatabase()V
    .locals 8

    .prologue
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.LoaderThread;"
    const/4 v7, 0x0

    .line 329
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    iget-object v5, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mContactIds:Ljava/util/ArrayList;

    #calls: Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->obtainContactIdsToLoad(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->access$200(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;Ljava/util/ArrayList;)V

    .line 331
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    .local v0, count:I
    if-nez v0, :cond_1

    .line 350
    :cond_0
    return-void

    .line 336
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    #getter for: Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z
    invoke-static {v4}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->access$300(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 337
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    iget-object v5, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->loadDataFromDatabase(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 338
    .local v3, ret:Ljava/lang/Object;,"TD;"
    new-instance v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;

    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    invoke-direct {v1, v4, v7}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;-><init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$1;)V

    .line 339
    .local v1, dataHolder:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    if-eqz v3, :cond_3

    .line 340
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    .line 344
    :goto_1
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    .line 345
    invoke-static {}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    const-string v4, "SoftReferenceCacheMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loaded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    #getter for: Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->access$500(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_3
    iput-object v7, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 323
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.LoaderThread;"
    invoke-direct {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->loadDataFromDatabase()V

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->this$0:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;

    #getter for: Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->access$100(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 3

    .prologue
    .line 308
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.LoaderThread;"
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 310
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 311
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 314
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    :cond_1
    return-void
.end method
