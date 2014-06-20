.class Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMSSegmentExpirationRunnable"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private mFirstTime:J

.field private msgCount:I

.field private refNumber:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;IIJ)V
    .locals 2
    .parameter
    .parameter "mAddress"
    .parameter "referenceNumber"
    .parameter "messageCount"
    .parameter "firstTime"

    .prologue
    .line 4091
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4092
    iput p3, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->refNumber:I

    .line 4093
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->msgCount:I

    .line 4094
    iput-wide p5, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->mFirstTime:J

    .line 4096
    if-eqz p2, :cond_0

    .line 4097
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->address:Ljava/lang/String;

    .line 4102
    :goto_0
    return-void

    .line 4100
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Unkown sender"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private sendUncompletedEMS(Ljava/lang/String;)V
    .locals 14
    .parameter "where"

    .prologue
    const/4 v12, 0x0

    .line 4123
    const/4 v6, 0x0

    .line 4124
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->address:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 4125
    .local v4, whereArgs:[Ljava/lang/String;
    check-cast v12, [[B

    .line 4128
    .local v12, pdus:[[B
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$400()[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4133
    if-eqz v6, :cond_0

    .line 4134
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 4135
    .local v7, cursorCount:I
    const-string v0, "pdu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4136
    .local v11, pduColumn:I
    const-string v0, "sequence"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4138
    .local v13, sequenceColumn:I
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->msgCount:I

    new-array v12, v0, [[B

    .line 4139
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 4140
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 4141
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v8, v0

    .line 4142
    .local v8, cursorSequence:I
    add-int/lit8 v0, v8, -0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v12, v0

    .line 4139
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4146
    .end local v7           #cursorCount:I
    .end local v8           #cursorSequence:I
    .end local v10           #i:I
    .end local v11           #pduColumn:I
    .end local v13           #sequenceColumn:I
    :cond_0
    const-string v0, "sendUncompletedEMS(), cursorCount is null"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 4147
    const/4 v7, 0x0

    .line 4151
    .restart local v7       #cursorCount:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4161
    if-eqz v6, :cond_2

    .line 4162
    .end local v7           #cursorCount:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4165
    :cond_2
    return-void

    .line 4152
    :catch_0
    move-exception v9

    .line 4153
    .local v9, e:Landroid/database/SQLException;
    :try_start_1
    const-string v0, "sendUncompletedEMS(), send uncompleted EMS msg : query exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 4161
    if-eqz v6, :cond_2

    goto :goto_1

    .line 4155
    .end local v9           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v9

    .line 4156
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "sendUncompletedEMS(), send uncompleted EMS msg : query IllegalArgumentException catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I

    .line 4161
    if-eqz v6, :cond_2

    goto :goto_1

    .line 4158
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 4159
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v0, "sendUncompletedEMS(), send uncompleted EMS msg : null pointer exception catch"

    invoke-static {v0}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->d(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4161
    if-eqz v6, :cond_2

    goto :goto_1

    .end local v9           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4161
    :cond_3
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4107
    const-wide/32 v2, 0x493e0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4113
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reference_number ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4114
    .local v1, where:Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4115
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    const-string v2, "time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    iget-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->mFirstTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;->sendUncompletedEMS(Ljava/lang/String;)V

    .line 4120
    return-void

    .line 4108
    .end local v1           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 4109
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "EMSSegmentExpirationRunnable:run(), Thread Interrupted exception catch"

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
