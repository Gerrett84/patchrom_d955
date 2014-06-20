.class Lcom/android/providers/telephony/MakeMmsPreviewService$2;
.super Ljava/lang/Object;
.source "MakeMmsPreviewService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MakeMmsPreviewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MakeMmsPreviewService;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$2;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$2;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$300(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pdu"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "need_download=0 AND preview_type=0 AND msg_box!=3 AND (m_type=132 OR m_type=128)"

    const-string v7, "date,date_ms_part"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 115
    const-string v0, "MakeMmsPreviewService"

    const-string v1, "Cannot read database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 121
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 123
    .local v9, msgId:J
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$2;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mStack:Lcom/android/providers/telephony/UniqueValuedStack;
    invoke-static {v0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$100(Lcom/android/providers/telephony/MakeMmsPreviewService;)Lcom/android/providers/telephony/UniqueValuedStack;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/telephony/UniqueValuedStack;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 127
    .end local v9           #msgId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 125
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$2;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$000(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService$2;->this$0:Lcom/android/providers/telephony/MakeMmsPreviewService;

    #getter for: Lcom/android/providers/telephony/MakeMmsPreviewService;->mProcessNextMessage:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/providers/telephony/MakeMmsPreviewService;->access$400(Lcom/android/providers/telephony/MakeMmsPreviewService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
