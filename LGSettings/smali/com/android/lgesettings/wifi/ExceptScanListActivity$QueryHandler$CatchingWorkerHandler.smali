.class public Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "ExceptScanListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler$CatchingWorkerHandler;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;

    .line 437
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 438
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 444
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    .line 452
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 447
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 448
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-static {}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 449
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    .line 450
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-static {}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
