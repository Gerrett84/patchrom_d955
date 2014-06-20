.class public abstract Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;
.super Ljava/lang/Object;
.source "SoftReferenceCacheMap.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$1;,
        Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;,
        Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field private static LOGD:Z


# instance fields
.field private final mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap",
            "<TK;TV;TD;>.DataHolder;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap",
            "<TK;TV;TD;>.",
            "LoaderThread;"
        }
    .end annotation
.end field

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mMainThreadHandler:Landroid/os/Handler;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    .line 95
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->obtainContactIdsToLoad(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private loadCachedData(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    .local p1, view:Ljava/lang/Object;,"TV;"
    .local p2, contactId:Ljava/lang/Object;,"TK;"
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x0

    .line 154
    iget-object v5, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;

    .line 156
    .local v1, holder:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    if-nez v1, :cond_1

    .line 157
    new-instance v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;

    .end local v1           #holder:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    invoke-direct {v1, p0, v6}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;-><init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$1;)V

    .line 158
    .restart local v1       #holder:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    :goto_0
    iput v4, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    move v2, v4

    .line 194
    :goto_1
    return v2

    .line 159
    :cond_1
    iget v5, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    if-ne v5, v2, :cond_5

    .line 160
    iget-object v3, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    if-nez v3, :cond_2

    .line 161
    invoke-virtual {p0, p1, v6}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->updateView(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v3, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, data:Ljava/lang/Object;,"TD;"
    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->updateView(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_3
    sget-boolean v2, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v2, :cond_4

    .line 171
    const-string v2, "SoftReferenceCacheMap"

    const-string v3, "reference is garbage collected requery data!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    iput-object v6, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 175
    .end local v0           #data:Ljava/lang/Object;,"TD;"
    :cond_5
    iget v2, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    iget v2, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    if-ne v2, v3, :cond_0

    .line 176
    :cond_6
    iget-object v2, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_7

    .line 177
    invoke-virtual {p0, p1, v6}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->updateView(Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v3

    .line 178
    goto :goto_1

    .line 181
    :cond_7
    iget-object v2, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .restart local v0       #data:Ljava/lang/Object;,"TD;"
    if-eqz v0, :cond_8

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->updateView(Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v3

    .line 184
    goto :goto_1

    .line 186
    :cond_8
    sget-boolean v2, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v2, :cond_9

    .line 187
    const-string v2, "SoftReferenceCacheMap"

    const-string v3, "reference is garbage collected requery data!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_9
    iput-object v6, v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->dataRef:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method private obtainContactIdsToLoad(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    .local p1, contactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TK;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 382
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, id:Ljava/lang/Object;,"TK;"
    iget-object v3, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;

    .line 385
    .local v0, holder:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    if-eqz v0, :cond_0

    .line 386
    iget v3, v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    if-nez v3, :cond_2

    .line 387
    sget-boolean v3, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v3, :cond_1

    .line 388
    const-string v3, "SoftReferenceCacheMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "obtainContactIdsToLoad contactid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    .line 392
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_2
    iget v3, v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 395
    const/4 v3, 0x4

    iput v3, v0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;->state:I

    .line 396
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    .end local v0           #holder:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$DataHolder;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>.DataHolder;"
    .end local v1           #id:Ljava/lang/Object;,"TK;"
    :cond_3
    return-void
.end method

.method private processLoadedData()V
    .locals 7

    .prologue
    .line 354
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 356
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 359
    .local v3, view:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    .local v0, contactID:Ljava/lang/Object;,"TK;"
    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0, v3, v0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->loadCachedData(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 364
    .local v2, state:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 365
    sget-boolean v4, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v4, :cond_1

    .line 366
    const-string v4, "SoftReferenceCacheMap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processLoadedData Loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 373
    .end local v0           #contactID:Ljava/lang/Object;,"TK;"
    .end local v2           #state:I
    .end local v3           #view:Ljava/lang/Object;,"TV;"
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 374
    invoke-direct {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->requestLoading()V

    .line 376
    :cond_3
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    const/4 v1, 0x1

    .line 254
    iget-boolean v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 255
    iput-boolean v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoadingRequested:Z

    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 263
    :pswitch_0
    sget-boolean v2, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "SoftReferenceCacheMap"

    const-string v3, "MESSAGE_REQUEST_LOADING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iput-boolean v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoadingRequested:Z

    .line 267
    iget-boolean v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    if-nez v1, :cond_2

    .line 269
    new-instance v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;-><init>(Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;)V

    iput-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    .line 270
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    invoke-virtual {v1}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->start()V

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    invoke-virtual {v1}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 279
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    if-nez v1, :cond_0

    .line 280
    sget-boolean v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v1, :cond_3

    .line 281
    const-string v1, "SoftReferenceCacheMap"

    const-string v2, "MESSAGE_DATA_LOADED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    invoke-direct {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->processLoadedData()V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    .local p1, view:Ljava/lang/Object;,"TV;"
    .local p2, contactId:Ljava/lang/Object;,"TK;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    if-nez p2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->loadCachedData(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 128
    .local v0, status:I
    packed-switch v0, :pswitch_data_0

    .line 144
    iget-object v2, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-boolean v2, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    if-nez v2, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->requestLoading()V

    goto :goto_0

    .line 130
    :pswitch_0
    sget-boolean v1, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->LOGD:Z

    if-eqz v1, :cond_2

    .line 131
    const-string v1, "SoftReferenceCacheMap"

    const-string v3, "cache hit!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    .line 134
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-boolean v1, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    if-nez v1, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->requestLoading()V

    :cond_3
    move v1, v2

    .line 142
    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract loadDataFromDatabase(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TD;"
        }
    .end annotation
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 240
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPaused:Z

    .line 241
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 201
    .local p0, this:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;,"Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap<TK;TV;TD;>;"
    invoke-virtual {p0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->pause()V

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    invoke-virtual {v0}, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;->quit()Z

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mLoaderThread:Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap$LoaderThread;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/SoftReferenceCacheMap;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 210
    return-void
.end method

.method protected abstract updateView(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TD;)V"
        }
    .end annotation
.end method
