.class public Lcom/android/providers/telephony/MakeMmsPreviewService;
.super Landroid/app/Service;
.source "MakeMmsPreviewService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPreviewDimension:I

.field private final mProcessNextMessage:Ljava/lang/Runnable;

.field private final mPushAllMessages:Ljava/lang/Runnable;

.field private final mStack:Lcom/android/providers/telephony/UniqueValuedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/providers/telephony/UniqueValuedStack",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lcom/android/providers/telephony/UniqueValuedStack;

    invoke-direct {v0}, Lcom/android/providers/telephony/UniqueValuedStack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mStack:Lcom/android/providers/telephony/UniqueValuedStack;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    .line 75
    new-instance v0, Lcom/android/providers/telephony/MakeMmsPreviewService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MakeMmsPreviewService$1;-><init>(Lcom/android/providers/telephony/MakeMmsPreviewService;)V

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mProcessNextMessage:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcom/android/providers/telephony/MakeMmsPreviewService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/MakeMmsPreviewService$2;-><init>(Lcom/android/providers/telephony/MakeMmsPreviewService;)V

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPushAllMessages:Ljava/lang/Runnable;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/MakeMmsPreviewService;)Lcom/android/providers/telephony/UniqueValuedStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mStack:Lcom/android/providers/telephony/UniqueValuedStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/MakeMmsPreviewService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/MakeMmsPreviewService;->makePreview(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/telephony/MakeMmsPreviewService;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/telephony/MakeMmsPreviewService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mProcessNextMessage:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static fromIsoString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "iso"

    .prologue
    .line 407
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    .end local p0
    :goto_0
    return-object p0

    .line 410
    .restart local p0
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/16 v1, 0x6a

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 412
    .local v0, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private locatePart(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10
    .parameter "c"
    .parameter "src"

    .prologue
    const/16 v9, 0x3c

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 340
    invoke-static {p2}, Lcom/android/providers/telephony/MakeMmsPreviewService;->unescapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 341
    const-string v4, "cid:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 342
    .local v0, isCid:Z
    if-eqz v0, :cond_0

    .line 343
    const-string v4, "cid:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 345
    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 346
    .local v1, lastDot:I
    const/4 v2, 0x0

    .line 347
    .local v2, strippedSrc:Ljava/lang/String;
    if-eq v1, v5, :cond_1

    .line 348
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 351
    :cond_1
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 352
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    if-eqz v0, :cond_5

    .line 355
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->fromIsoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_2

    .line 357
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    :cond_3
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Located part for src "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by content_id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in \'cid:\' form"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v3           #value:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 367
    :cond_5
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->fromIsoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .restart local v3       #value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 371
    :cond_6
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Located part for src "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_7
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->fromIsoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 379
    :cond_8
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Located part for src "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by filename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_9
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->fromIsoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 387
    :cond_a
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Located part for src "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by content_location "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 391
    :cond_b
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/MakeMmsPreviewService;->fromIsoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_c

    .line 393
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 395
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    :cond_d
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Located part for src "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by content_id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makePreview(J)V
    .locals 20
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    const-string v3, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making preview for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "part"

    sget-object v5, Lcom/android/providers/telephony/MakeMmsPreviewService;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mid="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 246
    .local v4, c:Landroid/database/Cursor;
    if-nez v4, :cond_0

    .line 247
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Cannot read database"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_0
    const/4 v8, 0x0

    .line 251
    .local v8, snippetSrc:Ljava/lang/String;
    const/4 v7, 0x1

    .line 252
    .local v7, previewType:I
    const/4 v9, 0x0

    .line 254
    .local v9, previewSrc:Ljava/lang/String;
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 256
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "application/smil"

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    .line 259
    const-string v3, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found smil doc for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Try parsing."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v3, 0x6

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 262
    .local v13, doc:Ljava/lang/String;
    if-nez v13, :cond_3

    .line 263
    const-string v3, "MakeMmsPreviewService"

    const-string v5, "No text field for smil doc, use raw make."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/providers/telephony/MakeMmsPreviewService;->makePreviewWithoutSmilDoc(Landroid/database/Cursor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 329
    .end local v13           #doc:Ljava/lang/String;
    :goto_0
    return-void

    .line 267
    .restart local v13       #doc:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v18

    .line 268
    .local v18, parser:Ljavax/xml/parsers/SAXParser;
    new-instance v16, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;-><init>(Lcom/android/providers/telephony/MakeMmsPreviewService;Lcom/android/providers/telephony/MakeMmsPreviewService$1;)V

    .line 269
    .local v16, handler:Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;
    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 270
    .local v19, reader:Ljava/io/StringReader;
    new-instance v17, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 272
    .local v17, input:Lorg/xml/sax/InputSource;
    :try_start_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/StringReader;->close()V

    .line 276
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewType:I

    .line 277
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mPreviewSrc:Ljava/lang/String;

    .line 278
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;->mSnippetSrc:Ljava/lang/String;

    .line 280
    const-string v3, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preview_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preview_src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", snippet_src="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v11, 0x0

    .line 291
    .local v11, attachmentCount:I
    const/4 v3, -0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 292
    const/4 v12, 0x0

    .line 293
    .local v12, contentType:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 294
    const/4 v3, 0x7

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 295
    .local v15, fileName:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 296
    add-int/lit8 v11, v11, 0x1

    .line 297
    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 274
    .end local v11           #attachmentCount:I
    .end local v12           #contentType:Ljava/lang/String;
    .end local v15           #fileName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/StringReader;->close()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 320
    .end local v13           #doc:Ljava/lang/String;
    .end local v16           #handler:Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;
    .end local v17           #input:Lorg/xml/sax/InputSource;
    .end local v18           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v19           #reader:Ljava/io/StringReader;
    :catch_0
    move-exception v14

    .line 321
    .local v14, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_4
    invoke-virtual {v14}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 284
    .end local v14           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_5
    :try_start_5
    const-string v3, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No smil doc for msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", use raw make."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v4, v1, v2}, Lcom/android/providers/telephony/MakeMmsPreviewService;->makePreviewWithoutSmilDoc(Landroid/database/Cursor;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 301
    .restart local v11       #attachmentCount:I
    .restart local v12       #contentType:Ljava/lang/String;
    .restart local v13       #doc:Ljava/lang/String;
    .restart local v16       #handler:Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;
    .restart local v17       #input:Lorg/xml/sax/InputSource;
    .restart local v18       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v19       #reader:Ljava/io/StringReader;
    :cond_6
    const/4 v3, 0x1

    if-ne v11, v3, :cond_8

    .line 304
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    const-string v3, "text/x-vCard"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 307
    const-string v3, "MakeMmsPreviewService"

    const-string v5, "Found v-card as the only attachment."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v7, 0x5

    .line 310
    const/4 v9, 0x0

    :cond_7
    :goto_2
    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    .line 319
    invoke-direct/range {v3 .. v9}, Lcom/android/providers/telephony/MakeMmsPreviewService;->makePreviewWithSmilDoc(Landroid/database/Cursor;JILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 312
    :cond_8
    const/4 v3, 0x1

    if-le v11, v3, :cond_7

    .line 314
    :try_start_7
    const-string v3, "MakeMmsPreviewService"

    const-string v5, "Found more than one attachment, forcing type to slideshow."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 316
    const/4 v7, 0x6

    goto :goto_2

    .line 322
    .end local v11           #attachmentCount:I
    .end local v12           #contentType:Ljava/lang/String;
    .end local v13           #doc:Ljava/lang/String;
    .end local v16           #handler:Lcom/android/providers/telephony/MakeMmsPreviewService$SmilHandler;
    .end local v17           #input:Lorg/xml/sax/InputSource;
    .end local v18           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v19           #reader:Ljava/io/StringReader;
    :catch_1
    move-exception v14

    .line 323
    .local v14, e:Lorg/xml/sax/SAXException;
    :try_start_8
    invoke-virtual {v14}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 324
    .end local v14           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v14

    .line 325
    .local v14, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 327
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v14           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private makePreviewWithSmilDoc(Landroid/database/Cursor;JILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "msgId"
    .parameter "previewType"
    .parameter "snippetSrc"
    .parameter "previewSrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 418
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePreviewWithSmilDoc for msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, snippet:Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 422
    invoke-direct {p0, p1, p5}, Lcom/android/providers/telephony/MakeMmsPreviewService;->locatePart(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 423
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 425
    if-nez v4, :cond_1

    .line 426
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text field of part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not filled. Bail out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_1
    const/4 v5, 0x0

    .line 436
    .local v5, previewDataPath:Ljava/lang/String;
    if-eqz p6, :cond_3

    .line 437
    invoke-direct {p0, p1, p6}, Lcom/android/providers/telephony/MakeMmsPreviewService;->locatePart(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 438
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 440
    if-nez v5, :cond_2

    .line 441
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data field of part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not filled. Bail out."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_2
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data field of part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    .line 452
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MakeMmsPreviewService;->setPreview(JILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_4
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makePreviewWithoutSmilDoc(Landroid/database/Cursor;J)V
    .locals 12
    .parameter "c"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    const-string v0, "MakeMmsPreviewService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePreviewWithoutSmilDoc for msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v8, 0x0

    .line 460
    .local v8, metImage:Z
    const/4 v11, 0x0

    .line 461
    .local v11, metVideo:Z
    const/4 v7, 0x0

    .line 462
    .local v7, metAudio:Z
    const/4 v10, 0x0

    .line 463
    .local v10, metVcard:Z
    const/4 v9, 0x0

    .line 465
    .local v9, metText:Z
    const/4 v4, 0x0

    .line 466
    .local v4, snippet:Ljava/lang/String;
    const/4 v5, 0x0

    .line 467
    .local v5, previewDataPath:Ljava/lang/String;
    const/4 v3, 0x1

    .line 469
    .local v3, previewType:I
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 470
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, ct:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 475
    const-string v0, "text/x-vCard"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 476
    if-nez v7, :cond_1

    if-nez v11, :cond_1

    if-nez v10, :cond_1

    if-eqz v8, :cond_3

    .line 477
    :cond_1
    const/4 v3, 0x6

    .end local v6           #ct:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v0, p0

    move-wide v1, p2

    .line 513
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MakeMmsPreviewService;->setPreview(JILjava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void

    .line 480
    .restart local v6       #ct:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    .line 481
    const/4 v3, 0x5

    goto :goto_0

    .line 482
    :cond_4
    const-string v0, "audio/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 483
    if-nez v7, :cond_5

    if-nez v11, :cond_5

    if-eqz v10, :cond_6

    .line 484
    :cond_5
    const/4 v3, 0x6

    .line 485
    goto :goto_1

    .line 487
    :cond_6
    const/4 v7, 0x1

    .line 488
    const/4 v3, 0x3

    goto :goto_0

    .line 489
    :cond_7
    const-string v0, "video/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 490
    if-nez v7, :cond_8

    if-nez v11, :cond_8

    if-nez v10, :cond_8

    if-eqz v8, :cond_9

    .line 491
    :cond_8
    const/4 v3, 0x6

    .line 492
    goto :goto_1

    .line 494
    :cond_9
    const/4 v11, 0x1

    .line 495
    const/4 v3, 0x4

    goto :goto_0

    .line 496
    :cond_a
    const-string v0, "image/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 497
    if-nez v11, :cond_b

    if-nez v10, :cond_b

    if-eqz v8, :cond_c

    .line 498
    :cond_b
    const/4 v3, 0x6

    .line 499
    goto :goto_1

    .line 501
    :cond_c
    const/4 v8, 0x1

    .line 502
    const/4 v3, 0x2

    .line 503
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 504
    :cond_d
    const-string v0, "text/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    if-eqz v9, :cond_e

    .line 506
    const/4 v3, 0x6

    .line 507
    goto :goto_1

    .line 509
    :cond_e
    const/4 v9, 0x1

    .line 510
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setPreview(JILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "msgId"
    .parameter "previewType"
    .parameter "snippet"
    .parameter "previewDataPath"

    .prologue
    .line 519
    const/4 v7, 0x0

    .line 520
    .local v7, previewData:[B
    if-eqz p5, :cond_2

    .line 521
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 522
    .local v5, ops:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 523
    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 524
    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v13, 0xc80

    if-ge v12, v13, :cond_7

    iget v12, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v13, 0xc80

    if-ge v12, v13, :cond_7

    .line 526
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 527
    .local v11, width:I
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 528
    .local v4, height:I
    const/4 v8, 0x1

    .line 529
    .local v8, sampleSize:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    if-le v11, v12, :cond_0

    .line 530
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    div-int v8, v11, v12

    .line 532
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    if-le v4, v12, :cond_1

    .line 533
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    div-int v12, v4, v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 537
    :cond_1
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5           #ops:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 538
    .restart local v5       #ops:Landroid/graphics/BitmapFactory$Options;
    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 539
    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 540
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 541
    const-string v12, "MakeMmsPreviewService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bitmap file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " doesn\'t exist. Bail out"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #height:I
    .end local v5           #ops:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #sampleSize:I
    .end local v11           #width:I
    :cond_2
    :goto_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .local v10, v:Landroid/content/ContentValues;
    const-string v12, "preview_type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 576
    const-string v12, "snippet"

    move-object/from16 v0, p4

    invoke-virtual {v10, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v12, "preview_data"

    invoke-virtual {v10, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 578
    const-string v14, "preview_data_ts"

    if-nez v7, :cond_8

    const-wide/16 v12, 0x0

    :goto_1
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "pdu"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 583
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v12, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 584
    sget-object v12, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 585
    const-string v12, "MakeMmsPreviewService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Created preview for msg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 543
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v10           #v:Landroid/content/ContentValues;
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #height:I
    .restart local v5       #ops:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #sampleSize:I
    .restart local v11       #width:I
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 544
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 545
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    if-gt v11, v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    if-le v4, v12, :cond_5

    .line 546
    :cond_4
    if-le v11, v4, :cond_6

    .line 547
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    mul-int/2addr v13, v4

    div-int/2addr v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 548
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    .line 554
    :cond_5
    :goto_2
    const/4 v12, 0x0

    invoke-static {v2, v11, v4, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 555
    .local v9, scaledBmp:Landroid/graphics/Bitmap;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 557
    .local v6, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v9, v12, v13, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :goto_3
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 565
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto/16 :goto_0

    .line 550
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    .end local v9           #scaledBmp:Landroid/graphics/Bitmap;
    :cond_6
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    mul-int/2addr v13, v11

    div-int/2addr v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 551
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    goto :goto_2

    .line 559
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #scaledBmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v12

    .line 560
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 562
    :goto_4
    throw v12

    .line 569
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #height:I
    .end local v6           #os:Ljava/io/ByteArrayOutputStream;
    .end local v8           #sampleSize:I
    .end local v9           #scaledBmp:Landroid/graphics/Bitmap;
    .end local v11           #width:I
    :cond_7
    const-string v12, "MakeMmsPreviewService"

    const-string v13, "Bitmap is too large"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 578
    .end local v5           #ops:Landroid/graphics/BitmapFactory$Options;
    .restart local v10       #v:Landroid/content/ContentValues;
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto/16 :goto_1

    .line 561
    .end local v10           #v:Landroid/content/ContentValues;
    .restart local v2       #bmp:Landroid/graphics/Bitmap;
    .restart local v4       #height:I
    .restart local v5       #ops:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #sampleSize:I
    .restart local v9       #scaledBmp:Landroid/graphics/Bitmap;
    .restart local v11       #width:I
    :catch_0
    move-exception v12

    goto :goto_3

    :catch_1
    move-exception v13

    goto :goto_4
.end method

.method private static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 332
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MakeMmsPreviewService"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 68
    invoke-virtual {p0}, Lcom/android/providers/telephony/MakeMmsPreviewService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPreviewDimension:I

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v7, 0x2

    .line 140
    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v7

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.provider.Telephony.MAKE_MMS_PREVIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 146
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 147
    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPushAllMessages:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, id:Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 152
    const-string v4, "MakeMmsPreviewService"

    const-string v5, "Received a request to make preview for all new messages."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mPushAllMessages:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 155
    :cond_3
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_4

    .line 157
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received a request to make preview for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/providers/telephony/MakeMmsPreviewService$3;

    invoke-direct {v5, p0, v2}, Lcom/android/providers/telephony/MakeMmsPreviewService$3;-><init>(Lcom/android/providers/telephony/MakeMmsPreviewService;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 169
    :cond_4
    instance-of v4, v2, [J

    if-eqz v4, :cond_0

    .line 170
    check-cast v2, [J

    .end local v2           #id:Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, [J

    .line 172
    .local v3, ids:[J
    const-string v4, "MakeMmsPreviewService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received a request to make preview for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/android/providers/telephony/MakeMmsPreviewService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/providers/telephony/MakeMmsPreviewService$4;

    invoke-direct {v5, p0, v3}, Lcom/android/providers/telephony/MakeMmsPreviewService$4;-><init>(Lcom/android/providers/telephony/MakeMmsPreviewService;[J)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
