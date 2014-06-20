.class public Lcom/android/providers/telephony/BatchModeHelper;
.super Ljava/lang/Object;
.source "BatchModeHelper.java"


# static fields
.field private static sInstances:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/telephony/BatchModeHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatchLevel:I

.field private mBlockedThreadsToUpdateLastSimId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedThreadsToUpdateMessageCount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedThreadsToUpdateSnippet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedThreadsToUpdateUnreadCount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeletedUriToBroadcast:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsToClearFileId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsToMarkDirty:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsToRemakePreview:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRequested:Z

.field private mThreadsToUpdateErrorState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateHasAttachment:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateLastSimId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateMessageCount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateSnippet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateStickTime:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadsToUpdateUnreadCount:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUrisToNotify:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/BatchModeHelper;->sInstances:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateLastSimId:Ljava/util/HashSet;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateStickTime:Ljava/util/HashSet;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToMarkDirty:Ljava/util/HashSet;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToClearFileId:Ljava/util/HashSet;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToRemakePreview:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateMessageCount:Ljava/util/HashSet;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateSnippet:Ljava/util/HashSet;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateLastSimId:Ljava/util/HashSet;

    .line 35
    iput-boolean v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    return-void
.end method

.method public static getInstance()Lcom/android/providers/telephony/BatchModeHelper;
    .locals 2

    .prologue
    .line 42
    sget-object v1, Lcom/android/providers/telephony/BatchModeHelper;->sInstances:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/telephony/BatchModeHelper;

    .line 43
    .local v0, instance:Lcom/android/providers/telephony/BatchModeHelper;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/providers/telephony/BatchModeHelper;

    .end local v0           #instance:Lcom/android/providers/telephony/BatchModeHelper;
    invoke-direct {v0}, Lcom/android/providers/telephony/BatchModeHelper;-><init>()V

    .line 45
    .restart local v0       #instance:Lcom/android/providers/telephony/BatchModeHelper;
    sget-object v1, Lcom/android/providers/telephony/BatchModeHelper;->sInstances:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-object v0
.end method

.method private internalBroadcastDeletedContents(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CONTENT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleted_contents"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method private internalClearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "mmsId"

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pdu SET file_id=null, need_download=0  WHERE _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method private internalMarkMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "mmsId"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pdu SET sync_state=0 WHERE _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public beginBatchOps(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "context"
    .parameter "db"

    .prologue
    .line 51
    const-string v0, "BatchModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entering batch level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 57
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 58
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 59
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 60
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateLastSimId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 61
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateStickTime:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 63
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToMarkDirty:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 64
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToClearFileId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 65
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToRemakePreview:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 66
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    .line 69
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 70
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 71
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateLastSimId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 73
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    :cond_0
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    .line 76
    const-string v0, "BatchModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entered batch level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public broadcastDeletedContents(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 326
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/BatchModeHelper;->internalBroadcastDeletedContents(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public clearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "mmsId"

    .prologue
    .line 303
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToClearFileId:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->internalClearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public endBatchOps()V
    .locals 11

    .prologue
    .line 80
    const-string v7, "BatchModeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exiting batch level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    .line 82
    iget v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-gez v7, :cond_0

    .line 83
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Negative batch level"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 85
    :cond_0
    iget v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-nez v7, :cond_11

    .line 88
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 89
    .local v4, threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadMessageCount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #threadId:J
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 92
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 93
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1

    .line 96
    .end local v4           #threadId:J
    :cond_2
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 97
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_2

    .line 100
    .end local v4           #threadId:J
    :cond_3
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 101
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v8, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadSnippet(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_3

    .line 104
    .end local v4           #threadId:J
    :cond_4
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateLastSimId:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 105
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_4

    .line 109
    .end local v4           #threadId:J
    :cond_5
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 110
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_5

    .line 113
    .end local v4           #threadId:J
    :cond_6
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateStickTime:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 114
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateStickTime(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_6

    .line 117
    .end local v4           #threadId:J
    :cond_7
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToMarkDirty:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 118
    .local v2, mmsId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v7, v2, v3}, Lcom/android/providers/telephony/BatchModeHelper;->internalMarkMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_7

    .line 121
    .end local v2           #mmsId:J
    :cond_8
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToClearFileId:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 122
    .restart local v2       #mmsId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v7, v2, v3}, Lcom/android/providers/telephony/BatchModeHelper;->internalClearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_8

    .line 125
    .end local v2           #mmsId:J
    :cond_9
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToRemakePreview:Ljava/util/HashSet;

    invoke-static {v7, v8, v9, v10}, Lcom/android/providers/telephony/MmsSmsUtils;->makeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZLjava/util/Collection;)V

    .line 128
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 129
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 130
    .local v6, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_9

    .line 134
    .end local v6           #uri:Landroid/net/Uri;
    :cond_a
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDeletedUriToBroadcast:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 135
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v6}, Lcom/android/providers/telephony/BatchModeHelper;->internalBroadcastDeletedContents(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_a

    .line 139
    .end local v6           #uri:Landroid/net/Uri;
    :cond_b
    iget-boolean v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    if-eqz v7, :cond_c

    .line 140
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/providers/telephony/MmsSmsUtils;->requestSync(Landroid/content/Context;)V

    .line 144
    :cond_c
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 145
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_b

    .line 148
    .end local v4           #threadId:J
    :cond_d
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 149
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_c

    .line 152
    .end local v4           #threadId:J
    :cond_e
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 153
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_d

    .line 156
    .end local v4           #threadId:J
    :cond_f
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateLastSimId:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 157
    .restart local v4       #threadId:J
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v7, v4, v5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_e

    .line 160
    .end local v4           #threadId:J
    :cond_10
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    iget-object v7, p0, Lcom/android/providers/telephony/BatchModeHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_11
    const-string v7, "BatchModeHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exited batch level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "mmsId"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToMarkDirty:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->internalMarkMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public notifyChange(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 340
    iget v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/providers/telephony/BatchModeHelper;->mUrisToNotify:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public remakeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "context"
    .parameter "db"
    .parameter "mmsId"

    .prologue
    .line 311
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mMmsToRemakePreview:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/providers/telephony/MmsSmsUtils;->makeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZJ)V

    goto :goto_0
.end method

.method public requestSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 349
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mSyncRequested:Z

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->requestSync(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateBlockedThread(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 4
    .parameter "db"
    .parameter "threadId"
    .parameter "addressId"

    .prologue
    const-wide/16 v2, -0x1

    .line 242
    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    cmp-long v1, p4, v2

    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteEmptyBlockedThread(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    .line 246
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 249
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->checkToCreateBlockedThread(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 252
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateBlockedThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 281
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateLastSimId:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateBlockedThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 257
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateBlockedThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 273
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadSnippet(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateBlockedThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 265
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBlockedThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateBlockedThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .parameter "context"
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadMessageCount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 170
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 171
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadSnippet(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 173
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 174
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadStickTime(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 176
    return-void
.end method

.method public updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 195
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateErrorState:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 219
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateHasAttachment:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadHasAttachmentByMsg(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "msgId"

    .prologue
    .line 235
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsUtils;->msgIdToThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 236
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 237
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 239
    :cond_0
    return-void
.end method

.method public updateThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 211
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateLastSimId:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadMessageCount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "context"
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 179
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateMessageCount:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadMessageCount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadSnippet(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "context"
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 203
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateSnippet:Ljava/util/HashSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadSnippet(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadStickTime(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 227
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateStickTime:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateStickTime(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "threadId"

    .prologue
    .line 187
    iget v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/providers/telephony/BatchModeHelper;->mThreadsToUpdateUnreadCount:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method
