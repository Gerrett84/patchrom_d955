.class public Lcom/android/providers/telephony/MmsProvider;
.super Landroid/content/ContentProvider;
.source "MmsProvider.java"


# static fields
.field private static final SYNC_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final THREAD_AFFECTING_ROWS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->THREAD_AFFECTING_ROWS:Ljava/util/HashSet;

    .line 73
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "source"

    aput-object v1, v0, v4

    const-string v1, "bind_id"

    aput-object v1, v0, v5

    const-string v1, "marker"

    aput-object v1, v0, v6

    const-string v1, "m_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_ms_part"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "file_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mx_status"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "timed"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "block_type"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->SYNC_COLUMNS:Ljava/util/HashSet;

    .line 1608
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 1611
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1612
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1613
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1614
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "inbox/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1615
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1616
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "sent/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1617
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1618
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drafts/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1619
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1620
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "outbox/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1621
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "part"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1622
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#/part"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1623
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "part/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1624
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "#/addr"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1625
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "rate"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1626
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "report-status/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1627
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "report-request/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1628
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drm"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1629
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "drm/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1630
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "threads"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1631
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "mms"

    const-string v2, "seen/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1632
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/MmsProvider;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    return-object v0
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "msgBox"

    .prologue
    .line 320
    const-string v0, "pdu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 322
    if-eqz p2, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_box="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    return-void
.end method

.method private crackFullDateProjection([Ljava/lang/String;)V
    .locals 3
    .parameter "projection"

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 312
    aget-object v1, p1, v0

    const-string v2, "date_full"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const-string v1, "(date*1000+date_ms_part) AS date_full"

    aput-object v1, p1, v0

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    return-void
.end method

.method private crackFullDateValues(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "values"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 809
    const-string v2, "date_full"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    const-string v2, "date_full"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 811
    .local v0, dateFull:J
    const-string v2, "date_full"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 812
    const-string v2, "date"

    div-long v3, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 813
    const-string v2, "date_ms_part"

    rem-long v3, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 815
    .end local v0           #dateFull:J
    :cond_0
    return-void
.end method

.method public static deleteAddrs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1003
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1006
    :try_start_0
    const-string v0, "addr"

    const-string v1, "DISTINCT msg_id"

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 1008
    const-string v1, "addr"

    invoke-virtual {p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1009
    if-lez v1, :cond_0

    if-nez p3, :cond_0

    .line 1010
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v2

    .line 1011
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1012
    invoke-virtual {v2, p0, v4, v5}, Lcom/android/providers/telephony/BatchModeHelper;->markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1017
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1015
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1019
    return v1
.end method

.method private static deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 1029
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1033
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v11

    .line 1059
    :goto_0
    return v0

    .line 1040
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .line 1044
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1047
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1048
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 1049
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1051
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1052
    .local v9, ex:Ljava/lang/Throwable;
    :try_start_3
    const-string v0, "MmsProvider"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1056
    .end local v9           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1059
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 927
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsUtils;->hasXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    .line 928
    invoke-static {p4}, Lcom/android/providers/telephony/MmsSmsUtils;->callerIsSyncAdapter(Landroid/net/Uri;)Z

    move-result v7

    .line 929
    invoke-static {p4}, Lcom/android/providers/telephony/MmsSmsUtils;->hasBlockedFlag(Landroid/net/Uri;)Z

    move-result v8

    .line 932
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 936
    :try_start_0
    sget-boolean v1, Lcom/android/providers/telephony/MmsSmsUtils;->SUPPORT_SYNC_ADAPTER:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez v7, :cond_0

    if-eqz v8, :cond_1

    .line 937
    :cond_0
    const-string v0, "pdu"

    const-string v1, "DISTINCT thread_id"

    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 939
    const-string v1, "pdu"

    invoke-virtual {p1, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v6, v1

    move-object v1, v0

    .line 953
    :goto_0
    if-lez v6, :cond_4

    .line 954
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v0

    .line 955
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 956
    if-eqz v8, :cond_2

    .line 957
    invoke-static {p1, v2, v3}, Lcom/android/providers/telephony/MmsSmsUtils;->getAddressIdFromThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v4

    move-object v1, p1

    .line 958
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThread(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 970
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 944
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 945
    const-string v0, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    const-string v0, "sync_state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    const-string v0, "deleted=0"

    invoke-static {p2, v0}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 949
    const-string v0, "pdu"

    const-string v3, "DISTINCT thread_id"

    invoke-static {p1, v0, v3, v2, p3}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 951
    const-string v3, "pdu"

    invoke-virtual {p1, v3, v1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v6, v1

    move-object v1, v0

    goto :goto_0

    .line 960
    :cond_2
    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/android/providers/telephony/BatchModeHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 961
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachment(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1

    .line 964
    :cond_3
    invoke-static {p0, v7}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;Z)V

    .line 966
    invoke-virtual {v0, p0, p4}, Lcom/android/providers/telephony/BatchModeHelper;->broadcastDeletedContents(Landroid/content/Context;Landroid/net/Uri;)V

    .line 968
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 970
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 972
    return v6
.end method

.method public static deleteParts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 980
    :try_start_0
    const-string v0, "part"

    const-string v1, "DISTINCT mid"

    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 982
    const-string v1, "part"

    invoke-static {p1, v1, p2, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 983
    if-lez v1, :cond_1

    .line 984
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v2

    .line 985
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 986
    if-nez p4, :cond_0

    .line 987
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/providers/telephony/BatchModeHelper;->markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 988
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/providers/telephony/BatchModeHelper;->clearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 989
    invoke-virtual {v2, p0, p1, v4, v5}, Lcom/android/providers/telephony/BatchModeHelper;->remakeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 991
    :cond_0
    invoke-virtual {v2, p1, v4, v5}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachmentByMsg(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 996
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 994
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 998
    return v1
.end method

.method private static deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1024
    const-string v0, "drm"

    invoke-static {p0, v0, p1, p2}, Lcom/android/providers/telephony/MmsProvider;->deleteDataRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private filterUnsupportedKeys(Landroid/content/ContentValues;)V
    .locals 1
    .parameter

    .prologue
    .line 1529
    const-string v0, "d_tm_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1530
    const-string v0, "s_vis"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1531
    const-string v0, "r_chg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1532
    const-string v0, "r_chg_dl_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1533
    const-string v0, "r_chg_dl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1534
    const-string v0, "r_chg_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1535
    const-string v0, "r_chg_sz"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1536
    const-string v0, "p_s_by"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1537
    const-string v0, "p_s_d"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1538
    const-string v0, "store"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1539
    const-string v0, "mm_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1540
    const-string v0, "mm_flg_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1541
    const-string v0, "mm_flg"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1542
    const-string v0, "store_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1543
    const-string v0, "store_st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1544
    const-string v0, "stored"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1545
    const-string v0, "totals"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1546
    const-string v0, "mb_t"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1547
    const-string v0, "mb_t_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1548
    const-string v0, "qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1549
    const-string v0, "mb_qt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1550
    const-string v0, "mb_qt_tok"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1551
    const-string v0, "m_cnt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1552
    const-string v0, "start"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1553
    const-string v0, "d_ind"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1554
    const-string v0, "e_des"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1555
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1556
    const-string v0, "r_r_mod"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1557
    const-string v0, "r_r_mod_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1558
    const-string v0, "st_txt"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1559
    const-string v0, "apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1560
    const-string v0, "r_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1561
    const-string v0, "aux_apl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1562
    const-string v0, "drm_c"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1563
    const-string v0, "adp_a"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1564
    const-string v0, "repl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1565
    const-string v0, "cl_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1566
    const-string v0, "cl_st"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1569
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1570
    return-void
.end method

.method private getAddressTypeFromMsgType(I)I
    .locals 1
    .parameter "msgType"

    .prologue
    .line 1442
    packed-switch p1, :pswitch_data_0

    .line 1449
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1445
    :pswitch_1
    const/16 v0, 0x89

    goto :goto_0

    .line 1447
    :pswitch_2
    const/16 v0, 0x97

    goto :goto_0

    .line 1442
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMessageBoxByMatch(I)I
    .locals 3
    .parameter "match"

    .prologue
    .line 818
    packed-switch p1, :pswitch_data_0

    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad Arg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :pswitch_0
    const/4 v0, 0x1

    .line 830
    :goto_0
    return v0

    .line 824
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 827
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 830
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static notifyChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 1573
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v0

    .line 1574
    .local v0, helper:Lcom/android/providers/telephony/BatchModeHelper;
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->notifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1575
    if-nez p1, :cond_0

    .line 1576
    invoke-virtual {v0, p0}, Lcom/android/providers/telephony/BatchModeHelper;->requestSync(Landroid/content/Context;)V

    .line 1578
    :cond_0
    return-void
.end method

.method private updateAddresses(Landroid/database/sqlite/SQLiteDatabase;JILjava/util/HashSet;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JI",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1456
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    const-string v0, "msg_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1458
    const-string v0, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1459
    const-string v0, "charset"

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1460
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1461
    const-string v3, "address"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v0, "addr"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 1464
    :cond_0
    return-void
.end method

.method private updateAddresses(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 10
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1420
    const-string v1, "pdu"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const/4 v0, 0x1

    const-string v6, "m_type"

    aput-object v6, v2, v0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1423
    .local v8, msgCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1425
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1426
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1428
    .local v2, msgId:J
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1429
    .local v9, msgType:I
    invoke-direct {p0, v9}, Lcom/android/providers/telephony/MmsProvider;->getAddressTypeFromMsgType(I)I

    move-result v4

    .line 1430
    .local v4, addressType:I
    if-eqz v4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    .line 1431
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsProvider;->updateAddresses(Landroid/database/sqlite/SQLiteDatabase;JILjava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1435
    .end local v2           #msgId:J
    .end local v4           #addressType:I
    .end local v9           #msgType:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1439
    :cond_2
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v0

    .line 107
    .local v0, helper:Lcom/android/providers/telephony/BatchModeHelper;
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/telephony/BatchModeHelper;->beginBatchOps(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, results:[Landroid/content/ContentProviderResult;
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 112
    invoke-virtual {v0}, Lcom/android/providers/telephony/BatchModeHelper;->endBatchOps()V

    .line 114
    return-object v1

    .line 112
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/providers/telephony/BatchModeHelper;->endBatchOps()V

    throw v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x0

    .line 838
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsUtils;->setPreviousOpTime()V

    .line 843
    new-instance v7, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with selection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;-><init>(Ljava/lang/String;)V

    .line 849
    .local v7, profiler:Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;
    const-string v9, "caller_is_syncadapter"

    invoke-static {p1, v9, v2}, Lcom/android/providers/telephony/MmsSmsUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 852
    .local v0, callerIsSyncAdapter:Z
    sget-object v9, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 857
    .local v5, match:I
    const/4 v3, 0x0

    .line 859
    .local v3, extraSelection:Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    .line 898
    :pswitch_0
    const-string v9, "MmsProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No match for URI \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :goto_0
    return v2

    .line 865
    :pswitch_1
    const-string v8, "pdu"

    .line 866
    .local v8, table:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    :cond_0
    :goto_1
    invoke-static {p2, v3}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 903
    .local v4, finalSelection:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v9}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 904
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 906
    .local v2, deletedRows:I
    const-string v9, "pdu"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 907
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v4, p3, p1}, Lcom/android/providers/telephony/MmsProvider;->deleteMessages(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    .line 918
    :goto_2
    invoke-virtual {v7}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->prof()V

    goto :goto_0

    .line 873
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #deletedRows:I
    .end local v4           #finalSelection:Ljava/lang/String;
    .end local v8           #table:Ljava/lang/String;
    :pswitch_2
    const-string v8, "pdu"

    .line 874
    .restart local v8       #table:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 875
    invoke-direct {p0, v5}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v6

    .line 876
    .local v6, msgBox:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msg_box="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 877
    goto :goto_1

    .line 880
    .end local v6           #msgBox:I
    .end local v8           #table:Ljava/lang/String;
    :pswitch_3
    const-string v8, "part"

    .line 881
    .restart local v8       #table:Ljava/lang/String;
    goto :goto_1

    .line 883
    .end local v8           #table:Ljava/lang/String;
    :pswitch_4
    const-string v8, "part"

    .line 884
    .restart local v8       #table:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 885
    goto :goto_1

    .line 887
    .end local v8           #table:Ljava/lang/String;
    :pswitch_5
    const-string v8, "part"

    .line 888
    .restart local v8       #table:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x1

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 889
    goto :goto_1

    .line 891
    .end local v8           #table:Ljava/lang/String;
    :pswitch_6
    const-string v8, "addr"

    .line 892
    .restart local v8       #table:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msg_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 893
    goto/16 :goto_1

    .line 895
    .end local v8           #table:Ljava/lang/String;
    :pswitch_7
    const-string v8, "drm"

    .line 896
    .restart local v8       #table:Ljava/lang/String;
    goto/16 :goto_1

    .line 908
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #deletedRows:I
    .restart local v4       #finalSelection:Ljava/lang/String;
    :cond_1
    const-string v9, "part"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 909
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1, v4, p3, v0}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    goto/16 :goto_2

    .line 910
    :cond_2
    const-string v9, "drm"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 911
    invoke-static {v1, v4, p3}, Lcom/android/providers/telephony/MmsProvider;->deleteTempDrmData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 912
    :cond_3
    const-string v9, "addr"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 913
    invoke-static {v1, v4, p3, v0}, Lcom/android/providers/telephony/MmsProvider;->deleteAddrs(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    goto/16 :goto_2

    .line 915
    :cond_4
    invoke-virtual {v1, v8, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 859
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 329
    sget-object v0, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 330
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 371
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 336
    :pswitch_1
    const-string v0, "vnd.android-dir/mms"

    goto :goto_0

    .line 342
    :pswitch_2
    const-string v0, "vnd.android/mms"

    goto :goto_0

    .line 344
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "part"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "ct"

    aput-object v3, v2, v7

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 352
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 354
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 357
    :cond_0
    :try_start_1
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.count() != 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 365
    :goto_1
    const-string v0, "*/*"

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 363
    :cond_1
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor == null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 74
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 377
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsUtils;->setPreviousOpTime()V

    .line 382
    new-instance v60, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;-><init>(Ljava/lang/String;)V

    .line 384
    .local v60, profiler:Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->callerIsSyncAdapter(Landroid/net/Uri;)Z

    move-result v24

    .line 385
    .local v24, callerIsSyncAdapter:Z
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->checkDuplication(Landroid/net/Uri;)Z

    move-result v25

    .line 386
    .local v25, checkDuplication:Z
    const-string v4, "block_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "block_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/16 v39, 0x1

    .line 388
    .local v39, isBlocked:Z
    :goto_0
    if-eqz p2, :cond_3

    .line 389
    if-nez v24, :cond_1

    if-nez v39, :cond_1

    const-string v4, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The non-sync-callers should not specify DELETED=1 for insert"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v39           #isBlocked:Z
    :cond_0
    const/16 v39, 0x0

    goto :goto_0

    .line 392
    .restart local v39       #isBlocked:Z
    :cond_1
    if-nez v24, :cond_2

    const-string v4, "sync_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The non-sync-callers should not specify SYNC_STATE in values."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_2
    const-string v4, "need_download"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Should not specify NEED_DOWNLOAD in values."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_3
    const-string v4, "need_full_insert_uri"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v48

    .line 403
    .local v48, needFullInsertUri:Z
    const/16 v43, 0x0

    .line 404
    .local v43, msgBox:I
    const/16 v50, 0x1

    .line 406
    .local v50, notify:Z
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v42

    .line 408
    .local v42, match:I
    const-string v69, "pdu"

    .line 409
    .local v69, table:Ljava/lang/String;
    packed-switch v42, :pswitch_data_0

    .line 449
    :pswitch_0
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert: invalid request: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/16 v62, 0x0

    .line 805
    :goto_1
    return-object v62

    .line 411
    :pswitch_1
    const-string v4, "msg_box"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v44

    .line 412
    .local v44, msgBoxObj:Ljava/lang/Integer;
    if-eqz v44, :cond_12

    .line 413
    check-cast v44, Ljava/lang/Integer;

    .end local v44           #msgBoxObj:Ljava/lang/Integer;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 453
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 454
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v32, 0x0

    .line 455
    .local v32, finalValues:Landroid/content/ContentValues;
    sget-object v62, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 456
    .local v62, res:Landroid/net/Uri;
    const-wide/16 v63, 0x0

    .line 458
    .local v63, rowID:J
    const-string v4, "need_notify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 459
    const-string v4, "need_notify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 462
    :cond_4
    const-string v4, "pdu"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 463
    const-string v37, ""

    .line 464
    .local v37, insertPath:Ljava/lang/String;
    if-eqz v48, :cond_5

    .line 465
    const-string v37, "ignored/"

    .line 468
    :cond_5
    const-string v4, "date"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "date_full"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const/16 v17, 0x1

    .line 470
    .local v17, addDate:Z
    :goto_3
    const-string v4, "msg_box"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const/16 v18, 0x1

    .line 473
    .local v18, addMsgBox:Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 477
    new-instance v32, Landroid/content/ContentValues;

    .end local v32           #finalValues:Landroid/content/ContentValues;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 479
    .restart local v32       #finalValues:Landroid/content/ContentValues;
    const-string v4, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 480
    const-string v4, "deleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    :cond_6
    if-eqz v24, :cond_15

    .line 483
    const-string v4, "sync_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 484
    const-string v4, "sync_state"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->crackFullDateValues(Landroid/content/ContentValues;)V

    .line 492
    if-eqz v17, :cond_8

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v71

    .line 494
    .local v71, timeInMillis:J
    const-string v4, "date"

    const-wide/16 v7, 0x3e8

    div-long v7, v71, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 495
    const-string v4, "date_ms_part"

    const-wide/16 v7, 0x3e8

    rem-long v7, v71, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    .end local v71           #timeInMillis:J
    :cond_8
    if-eqz v18, :cond_9

    if-eqz v43, :cond_9

    .line 499
    const-string v4, "msg_box"

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, v43

    if-eq v0, v4, :cond_a

    .line 504
    const-string v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    :cond_a
    const-string v4, "read"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v61

    .line 509
    .local v61, read:Ljava/lang/Integer;
    if-eqz v61, :cond_b

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 510
    const-string v4, "seen"

    move-object/from16 v0, v32

    move-object/from16 v1, v61

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 511
    const-string v4, "advanced_seen"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    :cond_b
    const-string v4, "block_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 516
    const-string v4, "block_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 517
    const-string v4, "deleted"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    :cond_c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 523
    :try_start_0
    invoke-static/range {v32 .. v32}, Lcom/android/providers/telephony/MmsSmsUtils;->getAddressList(Landroid/content/ContentValues;)Ljava/util/HashSet;

    move-result-object v20

    .line 524
    .local v20, addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v4, "addresses"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 525
    const-string v4, "error_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 526
    const-string v4, "thread_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v70

    .line 527
    .local v70, threadId:Ljava/lang/Long;
    if-nez v70, :cond_d

    if-eqz v20, :cond_d

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    .line 529
    const-string v4, "thread_id"

    move-object/from16 v0, v32

    move-object/from16 v1, v70

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 532
    :cond_d
    const/16 v21, 0x0

    .line 533
    .local v21, addressType:I
    const-string v4, "m_type"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    .line 534
    .local v47, msgType:Ljava/lang/Integer;
    if-eqz v47, :cond_e

    .line 535
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/telephony/MmsProvider;->getAddressTypeFromMsgType(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-result v21

    .line 538
    :cond_e
    if-eqz v25, :cond_36

    .line 539
    const/16 v22, 0x0

    .line 541
    .local v22, c:Landroid/database/Cursor;
    :try_start_1
    const-string v4, "date"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    .line 542
    .local v27, date:Ljava/lang/Long;
    const-string v4, "date_ms_part"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 543
    .local v28, date_ms_part:Ljava/lang/Long;
    if-eqz v27, :cond_10

    if-eqz v20, :cond_10

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, where:Ljava/lang/String;
    if-eqz v28, :cond_f

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND date_ms_part="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 548
    :cond_f
    const-string v4, "pdu"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "sync_state"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "marker"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "deleted"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 554
    .end local v6           #where:Ljava/lang/String;
    :cond_10
    if-eqz v22, :cond_1f

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1f

    .line 555
    new-instance v65, Ljava/util/HashSet;

    invoke-direct/range {v65 .. v65}, Ljava/util/HashSet;-><init>()V

    .line 556
    .local v65, shortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 557
    .local v19, address:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/providers/telephony/MmsSmsUtils;->getLast7DigitRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 628
    .end local v19           #address:Ljava/lang/String;
    .end local v27           #date:Ljava/lang/Long;
    .end local v28           #date_ms_part:Ljava/lang/Long;
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v65           #shortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    move-wide/from16 v9, v63

    .end local v63           #rowID:J
    .local v9, rowID:J
    :goto_7
    if-eqz v22, :cond_11

    .line 629
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 669
    .end local v22           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    .end local v20           #addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #addressType:I
    .end local v47           #msgType:Ljava/lang/Integer;
    .end local v70           #threadId:Ljava/lang/Long;
    :goto_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 417
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #rowID:J
    .end local v17           #addDate:Z
    .end local v18           #addMsgBox:Z
    .end local v32           #finalValues:Landroid/content/ContentValues;
    .end local v37           #insertPath:Ljava/lang/String;
    .end local v61           #read:Ljava/lang/Integer;
    .end local v62           #res:Landroid/net/Uri;
    .restart local v44       #msgBoxObj:Ljava/lang/Integer;
    :cond_12
    const/16 v43, 0x1

    .line 419
    goto/16 :goto_2

    .line 421
    .end local v44           #msgBoxObj:Ljava/lang/Integer;
    :pswitch_2
    const/16 v43, 0x1

    .line 422
    goto/16 :goto_2

    .line 424
    :pswitch_3
    const/16 v43, 0x2

    .line 425
    goto/16 :goto_2

    .line 427
    :pswitch_4
    const/16 v43, 0x3

    .line 428
    goto/16 :goto_2

    .line 430
    :pswitch_5
    const/16 v43, 0x4

    .line 431
    goto/16 :goto_2

    .line 433
    :pswitch_6
    const/16 v50, 0x0

    .line 434
    const-string v69, "part"

    .line 435
    goto/16 :goto_2

    .line 437
    :pswitch_7
    const/16 v50, 0x0

    .line 438
    const-string v69, "addr"

    .line 439
    goto/16 :goto_2

    .line 441
    :pswitch_8
    const/16 v50, 0x0

    .line 442
    const-string v69, "rate"

    .line 443
    goto/16 :goto_2

    .line 445
    :pswitch_9
    const/16 v50, 0x0

    .line 446
    const-string v69, "drm"

    .line 447
    goto/16 :goto_2

    .line 468
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v32       #finalValues:Landroid/content/ContentValues;
    .restart local v37       #insertPath:Ljava/lang/String;
    .restart local v62       #res:Landroid/net/Uri;
    .restart local v63       #rowID:J
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 470
    .restart local v17       #addDate:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 487
    .restart local v18       #addMsgBox:Z
    :cond_15
    const-string v4, "sync_state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5

    .line 559
    .restart local v20       #addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #addressType:I
    .restart local v22       #c:Landroid/database/Cursor;
    .restart local v27       #date:Ljava/lang/Long;
    .restart local v28       #date_ms_part:Ljava/lang/Long;
    .restart local v34       #i$:Ljava/util/Iterator;
    .restart local v47       #msgType:Ljava/lang/Integer;
    .restart local v61       #read:Ljava/lang/Integer;
    .restart local v65       #shortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v70       #threadId:Ljava/lang/Long;
    :cond_16
    const/4 v4, -0x1

    :try_start_3
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 560
    :goto_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 561
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v35

    .line 562
    .local v35, id:J
    const/16 v23, 0x0

    .line 564
    .local v23, ca:Landroid/database/Cursor;
    :try_start_4
    new-instance v53, Ljava/util/HashSet;

    invoke-direct/range {v53 .. v53}, Ljava/util/HashSet;-><init>()V

    .line 565
    .local v53, oldShortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v8, "addr"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v9, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "address"

    move-object v7, v3

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 569
    if-eqz v23, :cond_18

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_18

    .line 570
    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 571
    :goto_a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 572
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsUtils;->getLast7DigitRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_a

    .line 621
    .end local v53           #oldShortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v4

    move-wide/from16 v9, v63

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    :goto_b
    if-eqz v23, :cond_17

    .line 622
    :try_start_5
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 628
    :catchall_3
    move-exception v4

    goto/16 :goto_7

    .line 575
    .end local v9           #rowID:J
    .restart local v53       #oldShortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v63       #rowID:J
    :cond_18
    :try_start_6
    move-object/from16 v0, v53

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v4

    if-eqz v4, :cond_35

    .line 576
    move-wide/from16 v9, v35

    .line 577
    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    const/4 v4, 0x3

    :try_start_7
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_1b

    const/16 v73, 0x1

    .line 578
    .local v73, wasDeleted:Z
    :goto_c
    if-eqz v24, :cond_1d

    .line 579
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v68

    .line 580
    .local v68, syncState:I
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 581
    .local v40, marker:J
    const-string v4, "marker"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v49

    .line 583
    .local v49, newMarker:Ljava/lang/Long;
    if-eqz v49, :cond_19

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-result-wide v4

    cmp-long v4, v4, v40

    if-lez v4, :cond_19

    .line 584
    packed-switch v68, :pswitch_data_1

    .line 621
    .end local v40           #marker:J
    .end local v49           #newMarker:Ljava/lang/Long;
    .end local v68           #syncState:I
    .end local v73           #wasDeleted:Z
    :cond_19
    :goto_d
    if-eqz v23, :cond_1a

    .line 622
    :try_start_8
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_1a
    move-wide/from16 v63, v9

    .line 625
    .end local v9           #rowID:J
    .restart local v63       #rowID:J
    goto/16 :goto_9

    .line 577
    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    :cond_1b
    const/16 v73, 0x0

    goto :goto_c

    .line 586
    .restart local v40       #marker:J
    .restart local v49       #newMarker:Ljava/lang/Long;
    .restart local v68       #syncState:I
    .restart local v73       #wasDeleted:Z
    :pswitch_a
    :try_start_9
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The state of downloaded message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is SYNCING."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :pswitch_b
    const-string v4, "pdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 590
    if-eqz v48, :cond_19

    .line 591
    if-eqz v73, :cond_1c

    .line 592
    const-string v37, "restored/"

    goto :goto_d

    .line 594
    :cond_1c
    const-string v37, "updated/"

    goto :goto_d

    .line 599
    :pswitch_c
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The state of downloaded message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is DIRTY. ignoring."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 621
    .end local v40           #marker:J
    .end local v49           #newMarker:Ljava/lang/Long;
    .end local v68           #syncState:I
    .end local v73           #wasDeleted:Z
    :catchall_4
    move-exception v4

    goto/16 :goto_b

    .line 602
    .restart local v40       #marker:J
    .restart local v49       #newMarker:Ljava/lang/Long;
    .restart local v68       #syncState:I
    .restart local v73       #wasDeleted:Z
    :pswitch_d
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The state of downloaded message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is SYNC_STATE_ERROR. Skip."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 605
    :pswitch_e
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The state of downloaded message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is SYNC_STATE_NOT_UPLOADALBE. Skip."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 610
    .end local v40           #marker:J
    .end local v49           #newMarker:Ljava/lang/Long;
    .end local v68           #syncState:I
    :cond_1d
    const-string v4, "pdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 611
    if-eqz v48, :cond_19

    .line 612
    if-eqz v73, :cond_1e

    .line 613
    const-string v37, "restored/"

    goto/16 :goto_d

    .line 615
    :cond_1e
    const-string v37, "updated/"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_d

    .end local v9           #rowID:J
    .end local v23           #ca:Landroid/database/Cursor;
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #id:J
    .end local v53           #oldShortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v65           #shortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v73           #wasDeleted:Z
    .restart local v63       #rowID:J
    :cond_1f
    move-wide/from16 v9, v63

    .line 628
    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    if-eqz v22, :cond_20

    .line 629
    :try_start_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 634
    .end local v22           #c:Landroid/database/Cursor;
    .end local v27           #date:Ljava/lang/Long;
    .end local v28           #date_ms_part:Ljava/lang/Long;
    :cond_20
    :goto_e
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-nez v4, :cond_22

    .line 635
    const-string v4, "file_id"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 636
    .local v31, fileId:Ljava/lang/String;
    const-string v5, "need_download"

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    :goto_f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 637
    const/4 v4, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 638
    if-eqz v48, :cond_21

    .line 639
    const-string v37, "inserted/"

    .line 641
    :cond_21
    if-eqz v20, :cond_22

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v11, v21

    move-object/from16 v12, v20

    .line 642
    invoke-direct/range {v7 .. v12}, Lcom/android/providers/telephony/MmsProvider;->updateAddresses(Landroid/database/sqlite/SQLiteDatabase;JILjava/util/HashSet;)V

    .line 646
    .end local v31           #fileId:Ljava/lang/String;
    :cond_22
    const/4 v4, 0x4

    move/from16 v0, v43

    if-ne v0, v4, :cond_23

    .line 647
    const-string v4, "error_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 648
    .local v30, errorType:Ljava/lang/Integer;
    if-eqz v30, :cond_23

    .line 649
    new-instance v58, Landroid/content/ContentValues;

    const/4 v4, 0x3

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 650
    .local v58, pendingMsgValues:Landroid/content/ContentValues;
    const-string v4, "proto_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v4, "msg_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    const-string v4, "err_type"

    move-object/from16 v0, v58

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v4, "pending_msgs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_23

    .line 655
    const-string v4, "pending_msgs"

    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 660
    .end local v30           #errorType:Ljava/lang/Integer;
    .end local v58           #pendingMsgValues:Landroid/content/ContentValues;
    :cond_23
    if-eqz v70, :cond_24

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_24

    .line 661
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v5, v3, v7, v8}, Lcom/android/providers/telephony/BatchModeHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 662
    if-eqz v39, :cond_24

    .line 663
    invoke-virtual/range {v70 .. v70}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->getAddressIdFromThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v15

    .line 664
    .local v15, addressId:J
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v11

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object v12, v3

    invoke-virtual/range {v11 .. v16}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThread(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 667
    .end local v15           #addressId:J
    :cond_24
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 669
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v62

    .line 672
    if-eqz v39, :cond_25

    .line 673
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "blocked_flag"

    const-string v7, "1"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v62

    .line 794
    .end local v17           #addDate:Z
    .end local v18           #addMsgBox:Z
    .end local v20           #addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #addressType:I
    .end local v37           #insertPath:Ljava/lang/String;
    .end local v47           #msgType:Ljava/lang/Integer;
    .end local v61           #read:Ljava/lang/Integer;
    .end local v70           #threadId:Ljava/lang/Long;
    :cond_25
    :goto_10
    if-eqz v50, :cond_26

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;Z)V

    .line 796
    if-eqz v39, :cond_26

    .line 797
    new-instance v38, Landroid/content/Intent;

    const-string v4, "android.intent.action.FIREWALL_UPDATED"

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v38, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 801
    .end local v38           #intent:Landroid/content/Intent;
    :cond_26
    invoke-virtual/range {v60 .. v60}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->prof()V

    goto/16 :goto_1

    .line 636
    .restart local v17       #addDate:Z
    .restart local v18       #addMsgBox:Z
    .restart local v20       #addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #addressType:I
    .restart local v31       #fileId:Ljava/lang/String;
    .restart local v37       #insertPath:Ljava/lang/String;
    .restart local v47       #msgType:Ljava/lang/Integer;
    .restart local v61       #read:Ljava/lang/Integer;
    .restart local v70       #threadId:Ljava/lang/Long;
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 677
    .end local v9           #rowID:J
    .end local v17           #addDate:Z
    .end local v18           #addMsgBox:Z
    .end local v20           #addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21           #addressType:I
    .end local v31           #fileId:Ljava/lang/String;
    .end local v37           #insertPath:Ljava/lang/String;
    .end local v47           #msgType:Ljava/lang/Integer;
    .end local v61           #read:Ljava/lang/Integer;
    .end local v70           #threadId:Ljava/lang/Long;
    .restart local v63       #rowID:J
    :cond_28
    const-string v4, "addr"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 678
    new-instance v32, Landroid/content/ContentValues;

    .end local v32           #finalValues:Landroid/content/ContentValues;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 679
    .restart local v32       #finalValues:Landroid/content/ContentValues;
    const-string v4, "address"

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsUtils;->removeSpaceForAddressValue(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v45

    .line 682
    .local v45, msgId:J
    const-string v4, "msg_id"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 684
    const/4 v4, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-gtz v4, :cond_29

    .line 685
    const-string v4, "MmsProvider"

    const-string v5, "Failed to insert address."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/16 v62, 0x0

    goto/16 :goto_1

    .line 688
    :cond_29
    if-nez v24, :cond_2a

    .line 689
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v4

    move-wide/from16 v0, v45

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 692
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v62

    .line 693
    goto/16 :goto_10

    .end local v9           #rowID:J
    .end local v45           #msgId:J
    .restart local v63       #rowID:J
    :cond_2b
    const-string v4, "part"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 694
    new-instance v32, Landroid/content/ContentValues;

    .end local v32           #finalValues:Landroid/content/ContentValues;
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 695
    .restart local v32       #finalValues:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v45

    .line 696
    .restart local v45       #msgId:J
    const/16 v4, 0xb

    move/from16 v0, v42

    if-ne v0, v4, :cond_2c

    .line 697
    const-string v4, "mid"

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    :cond_2c
    const-string v4, "ct"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 705
    .local v26, contentType:Ljava/lang/String;
    const-string v4, "text/plain"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    .line 706
    .local v59, plainText:Z
    const-string v4, "application/smil"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v66

    .line 707
    .local v66, smilText:Z
    if-nez v59, :cond_2d

    if-nez v66, :cond_2d

    .line 710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "parts"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PART_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 713
    .local v57, path:Ljava/lang/String;
    const-string v4, "_data"

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v56, Ljava/io/File;

    invoke-direct/range {v56 .. v57}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v56, partFile:Ljava/io/File;
    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 718
    :try_start_b
    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 719
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create new partFile: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 722
    :catch_0
    move-exception v29

    .line 723
    .local v29, e:Ljava/io/IOException;
    const-string v4, "MmsProvider"

    const-string v5, "createNewFile"

    move-object/from16 v0, v29

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create new partFile: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    .end local v29           #e:Ljava/io/IOException;
    .end local v56           #partFile:Ljava/io/File;
    .end local v57           #path:Ljava/lang/String;
    :cond_2d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 732
    const/4 v4, 0x0

    :try_start_c
    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-wide v9

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-gtz v4, :cond_2e

    .line 733
    :try_start_d
    const-string v4, "MmsProvider"

    const-string v5, "MmsProvider.insert: failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 734
    const/16 v62, 0x0

    .line 749
    .end local v62           #res:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 737
    .restart local v62       #res:Landroid/net/Uri;
    :cond_2e
    :try_start_e
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->suppressMakingMmsPreview(Landroid/net/Uri;)Z

    move-result v67

    .line 738
    .local v67, suppressMakingMmsPreview:Z
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v33

    .line 739
    .local v33, helper:Lcom/android/providers/telephony/BatchModeHelper;
    if-nez v24, :cond_2f

    .line 740
    move-object/from16 v0, v33

    move-wide/from16 v1, v45

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/telephony/BatchModeHelper;->markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 741
    move-object/from16 v0, v33

    move-wide/from16 v1, v45

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/telephony/BatchModeHelper;->clearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 742
    if-nez v67, :cond_2f

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v33

    move-wide/from16 v1, v45

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/providers/telephony/BatchModeHelper;->remakeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 746
    :cond_2f
    move-object/from16 v0, v33

    move-wide/from16 v1, v45

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachmentByMsg(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 747
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 749
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v62

    .line 753
    goto/16 :goto_10

    .line 749
    .end local v9           #rowID:J
    .end local v33           #helper:Lcom/android/providers/telephony/BatchModeHelper;
    .end local v67           #suppressMakingMmsPreview:Z
    .restart local v63       #rowID:J
    :catchall_5
    move-exception v4

    move-wide/from16 v9, v63

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    :goto_11
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 753
    .end local v9           #rowID:J
    .end local v26           #contentType:Ljava/lang/String;
    .end local v45           #msgId:J
    .end local v59           #plainText:Z
    .end local v66           #smilText:Z
    .restart local v63       #rowID:J
    :cond_30
    const-string v4, "rate"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 754
    const-string v4, "sent_time"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v51

    .line 755
    .local v51, now:J
    const-wide/32 v4, 0x36ee80

    sub-long v54, v51, v4

    .line 757
    .local v54, oneHourAgo:J
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 759
    :try_start_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent_time<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v54

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v69

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    const/4 v4, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 761
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 763
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide/from16 v9, v63

    .line 765
    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    goto/16 :goto_10

    .line 763
    .end local v9           #rowID:J
    .restart local v63       #rowID:J
    :catchall_6
    move-exception v4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 765
    .end local v51           #now:J
    .end local v54           #oneHourAgo:J
    :cond_31
    const-string v4, "drm"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "parts"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PART_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 768
    .restart local v57       #path:Ljava/lang/String;
    new-instance v32, Landroid/content/ContentValues;

    .end local v32           #finalValues:Landroid/content/ContentValues;
    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 769
    .restart local v32       #finalValues:Landroid/content/ContentValues;
    const-string v4, "_data"

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v56, Ljava/io/File;

    invoke-direct/range {v56 .. v57}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v56       #partFile:Ljava/io/File;
    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_32

    .line 774
    :try_start_10
    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_32

    .line 775
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create new file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 778
    :catch_1
    move-exception v29

    .line 779
    .restart local v29       #e:Ljava/io/IOException;
    const-string v4, "MmsProvider"

    const-string v5, "createNewFile"

    move-object/from16 v0, v29

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create new file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 785
    .end local v29           #e:Ljava/io/IOException;
    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-gtz v4, :cond_33

    .line 786
    const-string v4, "MmsProvider"

    const-string v5, "MmsProvider.insert: failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v62, 0x0

    goto/16 :goto_1

    .line 789
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/drm/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v62

    .line 790
    goto/16 :goto_10

    .line 791
    .end local v9           #rowID:J
    .end local v56           #partFile:Ljava/io/File;
    .end local v57           #path:Ljava/lang/String;
    .restart local v63       #rowID:J
    :cond_34
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown table type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 749
    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    .restart local v26       #contentType:Ljava/lang/String;
    .restart local v45       #msgId:J
    .restart local v59       #plainText:Z
    .restart local v66       #smilText:Z
    :catchall_7
    move-exception v4

    goto/16 :goto_11

    .line 669
    .end local v9           #rowID:J
    .end local v26           #contentType:Ljava/lang/String;
    .end local v45           #msgId:J
    .end local v59           #plainText:Z
    .end local v66           #smilText:Z
    .restart local v17       #addDate:Z
    .restart local v18       #addMsgBox:Z
    .restart local v37       #insertPath:Ljava/lang/String;
    .restart local v61       #read:Ljava/lang/Integer;
    .restart local v63       #rowID:J
    :catchall_8
    move-exception v4

    move-wide/from16 v9, v63

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    goto/16 :goto_8

    .end local v9           #rowID:J
    .restart local v20       #addressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v21       #addressType:I
    .restart local v22       #c:Landroid/database/Cursor;
    .restart local v23       #ca:Landroid/database/Cursor;
    .restart local v27       #date:Ljava/lang/Long;
    .restart local v28       #date_ms_part:Ljava/lang/Long;
    .restart local v34       #i$:Ljava/util/Iterator;
    .restart local v35       #id:J
    .restart local v47       #msgType:Ljava/lang/Integer;
    .restart local v53       #oldShortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v63       #rowID:J
    .restart local v65       #shortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v70       #threadId:Ljava/lang/Long;
    :cond_35
    move-wide/from16 v9, v63

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    goto/16 :goto_d

    .end local v9           #rowID:J
    .end local v22           #c:Landroid/database/Cursor;
    .end local v23           #ca:Landroid/database/Cursor;
    .end local v27           #date:Ljava/lang/Long;
    .end local v28           #date_ms_part:Ljava/lang/Long;
    .end local v34           #i$:Ljava/util/Iterator;
    .end local v35           #id:J
    .end local v53           #oldShortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v65           #shortAddressSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v63       #rowID:J
    :cond_36
    move-wide/from16 v9, v63

    .end local v63           #rowID:J
    .restart local v9       #rowID:J
    goto/16 :goto_e

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 584
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1468
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "mid"

    aput-object v0, v2, v6

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/MmsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1469
    if-nez v1, :cond_0

    .line 1523
    :goto_0
    return-object v3

    .line 1475
    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1476
    :goto_1
    if-nez v0, :cond_2

    .line 1477
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v6

    .line 1475
    goto :goto_1

    .line 1479
    :cond_2
    if-le v0, v7, :cond_3

    .line 1480
    :try_start_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple items at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1483
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1484
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1485
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1487
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1490
    if-nez v2, :cond_4

    .line 1491
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_4
    const-string v0, "MmsProvider"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1495
    const-string v0, "MmsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFile: uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_5
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 1499
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1501
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->suppressMakingMmsPreview(Landroid/net/Uri;)Z

    move-result v0

    .line 1502
    if-nez v0, :cond_6

    const/16 v0, 0x77

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1504
    new-instance v0, Lcom/android/providers/telephony/MmsProvider$1;

    const/16 v3, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/telephony/MmsProvider$1;-><init>(Lcom/android/providers/telephony/MmsProvider;Ljava/lang/String;IJ)V

    .line 1521
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_6
    move-object v3, v6

    .line 1523
    goto/16 :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 120
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsUtils;->setPreviousOpTime()V

    .line 125
    new-instance v16, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with selection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;-><init>(Ljava/lang/String;)V

    .line 127
    .local v16, profiler:Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->callerIsSyncAdapter(Landroid/net/Uri;)Z

    move-result v11

    .line 129
    .local v11, callerIsSyncAdapter:Z
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 132
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 134
    .local v15, match:I
    const/16 v4, 0xc

    if-eq v15, v4, :cond_0

    const/4 v4, 0x3

    if-eq v15, v4, :cond_0

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmiui/provider/ExtraSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v13

    .line 136
    .local v13, emptyCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    .line 307
    .end local v13           #emptyCursor:Landroid/database/Cursor;
    :goto_0
    return-object v13

    .line 140
    :cond_0
    const/4 v7, 0x0

    .line 141
    .local v7, groupby:Ljava/lang/String;
    packed-switch v15, :pswitch_data_0

    .line 263
    :pswitch_0
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query: invalid request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v13, 0x0

    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 267
    :goto_1
    const/4 v9, 0x0

    .line 268
    .local v9, finalSortOrder:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 270
    const-string v9, "date DESC, date_ms_part DESC"

    .line 278
    :cond_1
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->getSelectionByPrivatePermission(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsUtils;->getSelectionByBlockedPermission(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, blockSelection:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 282
    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 283
    if-eqz p2, :cond_2

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->crackFullDateProjection([Ljava/lang/String;)V

    .line 294
    .end local v10           #blockSelection:Ljava/lang/String;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 295
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 299
    .local v17, ret:Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 302
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->prof()V

    move-object/from16 v13, v17

    .line 307
    goto/16 :goto_0

    .line 146
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #finalSortOrder:Ljava/lang/String;
    .end local v17           #ret:Landroid/database/Cursor;
    :pswitch_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 149
    :pswitch_3
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto/16 :goto_1

    .line 152
    :pswitch_4
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto/16 :goto_1

    .line 155
    :pswitch_5
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/providers/telephony/MmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto/16 :goto_1

    .line 158
    :pswitch_6
    const-string v4, "pdu"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 165
    :pswitch_7
    const-string v4, "pdu"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND msg_box="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/telephony/MmsProvider;->getMessageBoxByMatch(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 171
    :pswitch_8
    const-string v4, "part"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 174
    :pswitch_9
    const-string v4, "part"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    :pswitch_a
    const-string v4, "part"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 182
    :pswitch_b
    const-string v4, "addr"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 204
    :pswitch_c
    const-string v4, "addr INNER JOIN (SELECT P1._id AS id1, P2._id AS id2, P3._id AS id3, ifnull(P2.st, 0) AS delivery_status, ifnull(P3.read_status, 0) AS read_status FROM pdu P1 INNER JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134 LEFT JOIN pdu P3 ON P1.m_id=P3.m_id AND P3.m_type=136 UNION SELECT P1._id AS id1, P2._id AS id2, P3._id AS id3, ifnull(P2.st, 0) AS delivery_status, ifnull(P3.read_status, 0) AS read_status FROM pdu P1 INNER JOIN pdu P3 ON P1.m_id=P3.m_id AND P3.m_type=136 LEFT JOIN pdu P2 ON P1.m_id=P2.m_id AND P2.m_type=134) T ON (msg_id=id2 AND type=151) OR (msg_id=id3 AND type=137)"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T.id1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_1

    .line 229
    :pswitch_d
    const-string v4, "addr join pdu on pdu._id = addr.msg_id"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdu._id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 232
    const-string v4, " AND addr.type = 151"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 235
    :pswitch_e
    const-string v4, "rate"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :pswitch_f
    const-string v4, "drm"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 242
    :pswitch_10
    const-string v4, "pdu"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 243
    const-string v7, "thread_id"

    .line 244
    goto/16 :goto_1

    .line 246
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 248
    .local v12, categoryId:Ljava/lang/String;
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    const-string v4, "MmsProvider"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    const-string v4, "MmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query seen of sms: categoryId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_4
    const-string v4, "pdu"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exists (SELECT 1 FROM threads WHERE threads._id=pdu.thread_id AND threads.sp_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 253
    :catch_0
    move-exception v14

    .line 254
    .local v14, ex:Ljava/lang/Exception;
    const-string v5, "MmsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad service category id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 271
    .end local v12           #categoryId:Ljava/lang/String;
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v9       #finalSortOrder:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    const-string v5, "part"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    const-string v9, "seq"

    goto/16 :goto_2

    .line 275
    :cond_6
    move-object/from16 v9, p5

    goto/16 :goto_2

    .line 286
    .restart local v10       #blockSelection:Ljava/lang/String;
    :cond_7
    if-nez v11, :cond_2

    .line 287
    const-string v4, "deleted = 0"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 288
    if-eqz p2, :cond_2

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->crackFullDateProjection([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1065
    invoke-static {}, Lcom/android/providers/telephony/MmsSmsUtils;->setPreviousOpTime()V

    .line 1070
    new-instance v16, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with selection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;-><init>(Ljava/lang/String;)V

    .line 1072
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->callerIsSyncAdapter(Landroid/net/Uri;)Z

    move-result v17

    .line 1073
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->hasBlockedFlag(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "block_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move v15, v2

    .line 1074
    :goto_0
    if-nez v17, :cond_3

    if-nez v15, :cond_3

    const-string v2, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sync_state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "need_download"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1078
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The non-sync-callers should not specify DELETED, SYNC_STATE OR NEED_DOWNLOAD in values."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1073
    :cond_2
    const/4 v2, 0x0

    move v15, v2

    goto :goto_0

    .line 1080
    :cond_3
    sget-object v2, Lcom/android/providers/telephony/MmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 1085
    const/4 v5, 0x0

    .line 1086
    const/4 v3, 0x0

    .line 1090
    packed-switch v6, :pswitch_data_0

    .line 1128
    :pswitch_0
    const-string v2, "MmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update operation for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not implemented."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v2, 0x0

    .line 1414
    :goto_1
    return v2

    .line 1096
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1103
    :goto_2
    const/4 v4, 0x1

    .line 1104
    const-string v3, "pdu"

    move v8, v4

    move-object v4, v2

    move-object v2, v3

    .line 1133
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/telephony/MmsProvider;->mOpenHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1135
    const-string v5, "pdu"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1137
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->filterUnsupportedKeys(Landroid/content/ContentValues;)V

    .line 1138
    new-instance v18, Landroid/content/ContentValues;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1141
    const-string v2, "read"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1142
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1143
    const-string v5, "seen"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    const-string v2, "advanced_seen"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1148
    :cond_4
    if-eqz v17, :cond_d

    .line 1149
    const-string v2, "sync_state"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1150
    const-string v2, "sync_state"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1162
    :cond_5
    :goto_4
    const-string v2, "block_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1163
    const-string v2, "block_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1164
    const/4 v5, 0x1

    if-le v2, v5, :cond_f

    .line 1165
    const-string v2, "deleted"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->getSelectionByPrivatePermission(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v2, p3

    .line 1172
    :goto_5
    if-eqz v15, :cond_6

    .line 1173
    const-string v5, "msg_box=1"

    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1177
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/MmsProvider;->crackFullDateValues(Landroid/content/ContentValues;)V

    .line 1179
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/MmsSmsUtils;->getAddressList(Landroid/content/ContentValues;)Ljava/util/HashSet;

    move-result-object v6

    .line 1180
    const-string v5, "addresses"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1181
    const-string v5, "error_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->getSelectionByBlockedPermission(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1185
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1186
    if-nez v17, :cond_7

    .line 1187
    const-string v5, "deleted=0"

    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1193
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1197
    :cond_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1199
    :try_start_0
    const-string v4, "pdu"

    const-string v5, "DISTINCT thread_id"

    move-object/from16 v0, p4

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v19

    .line 1201
    const/4 v5, 0x0

    .line 1203
    const-string v4, "msg_box"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1204
    const/4 v4, 0x0

    .line 1205
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_9

    .line 1206
    const-string v7, "error_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1207
    if-eqz v7, :cond_9

    .line 1208
    const-string v4, "pdu"

    const-string v5, "_id"

    move-object/from16 v0, p4

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v5

    .line 1210
    new-instance v4, Landroid/content/ContentValues;

    const/4 v9, 0x3

    invoke-direct {v4, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1211
    const-string v9, "err_type"

    invoke-virtual {v4, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    const-string v7, "proto_type"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1216
    :cond_9
    const-string v7, "pdu"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v3, v7, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1217
    if-lez v9, :cond_26

    .line 1218
    if-eqz v6, :cond_a

    .line 1219
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v2, v1, v6}, Lcom/android/providers/telephony/MmsProvider;->updateAddresses(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashSet;)V

    .line 1222
    :cond_a
    if-eqz v4, :cond_12

    .line 1223
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1224
    const-string v2, "msg_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1225
    const-string v2, "pending_msgs"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msg_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 1227
    const-string v2, "pending_msgs"

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 1355
    :catchall_0
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1108
    :pswitch_2
    const-string v2, "part"

    move-object v4, v3

    move v8, v5

    .line 1109
    goto/16 :goto_3

    .line 1111
    :pswitch_3
    const-string v4, "pdu"

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1114
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1115
    const-string v7, "MmsProvider"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1116
    const-string v7, "MmsProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query seen of sms: categoryId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1124
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exists (SELECT 1 FROM threads WHERE threads._id=pdu.thread_id AND threads.sp_type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v2, v4

    move v8, v5

    move-object v4, v3

    .line 1126
    goto/16 :goto_3

    .line 1119
    :catch_0
    move-exception v2

    .line 1120
    const-string v3, "MmsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad service category id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1153
    :cond_d
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1154
    sget-object v6, Lcom/android/providers/telephony/MmsProvider;->SYNC_COLUMNS:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1155
    const-string v2, "sync_state"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1169
    :cond_f
    const-string v2, "deleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    move-object/from16 v2, p3

    goto/16 :goto_5

    .line 1191
    :cond_11
    invoke-static {v2, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 1232
    :cond_12
    const/4 v13, 0x0

    .line 1233
    const/4 v11, 0x0

    .line 1234
    const/4 v10, 0x0

    .line 1235
    const/4 v7, 0x0

    .line 1236
    const/4 v6, 0x0

    .line 1237
    const/4 v12, 0x0

    .line 1240
    const/4 v5, 0x0

    .line 1241
    const/4 v4, 0x0

    .line 1242
    const/4 v2, 0x0

    .line 1244
    :try_start_2
    const-string v14, "thread_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 1245
    const/4 v13, 0x1

    .line 1246
    const/4 v11, 0x1

    .line 1247
    const/4 v10, 0x1

    .line 1248
    const/4 v7, 0x1

    .line 1249
    const/4 v6, 0x1

    .line 1250
    const/4 v12, 0x1

    move v14, v13

    .line 1253
    :goto_8
    const-string v13, "deleted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1254
    const/4 v11, 0x1

    .line 1255
    const/4 v10, 0x1

    .line 1256
    const/4 v7, 0x1

    .line 1257
    const/4 v6, 0x1

    .line 1258
    const/4 v12, 0x1

    .line 1261
    :cond_13
    const-string v13, "msg_box"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1262
    const/4 v11, 0x1

    .line 1263
    const/4 v10, 0x1

    .line 1264
    const/4 v7, 0x1

    .line 1265
    const/4 v12, 0x1

    .line 1268
    :cond_14
    const-string v13, "read"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    if-nez v15, :cond_15

    .line 1269
    const/4 v10, 0x1

    .line 1272
    :cond_15
    const-string v13, "sub"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    const-string v13, "sub_cs"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1273
    :cond_16
    const/4 v6, 0x1

    .line 1276
    :cond_17
    const-string v13, "date"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1277
    const/4 v6, 0x1

    .line 1278
    const/4 v12, 0x1

    .line 1281
    :cond_18
    const-string v13, "sim_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_30

    if-nez v15, :cond_30

    .line 1282
    const/4 v12, 0x1

    move v13, v12

    .line 1285
    :goto_9
    if-eqz v15, :cond_2f

    .line 1286
    const-string v12, "read"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1287
    const/4 v5, 0x1

    move v12, v10

    move v10, v2

    move/from16 v22, v5

    move v5, v4

    move v4, v11

    move v11, v7

    move v7, v6

    move/from16 v6, v22

    .line 1298
    :goto_a
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v2

    .line 1300
    if-eqz v14, :cond_19

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v20, "thread_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v14, v3, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1303
    :cond_19
    if-eqz v4, :cond_1b

    .line 1304
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v2, v4, v3, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadMessageCount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_b

    .line 1289
    :cond_1a
    const/4 v11, 0x1

    .line 1290
    const/4 v10, 0x1

    .line 1291
    const/4 v7, 0x1

    .line 1292
    const/4 v6, 0x1

    .line 1293
    const/4 v4, 0x1

    .line 1294
    const/4 v2, 0x1

    move v12, v10

    move v10, v2

    move/from16 v22, v5

    move v5, v4

    move v4, v11

    move v11, v7

    move v7, v6

    move/from16 v6, v22

    goto :goto_a

    .line 1308
    :cond_1b
    if-eqz v12, :cond_1c

    .line 1309
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 1310
    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_c

    .line 1313
    :cond_1c
    if-eqz v11, :cond_1d

    .line 1314
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 1315
    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadErrorState(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_d

    .line 1318
    :cond_1d
    if-eqz v7, :cond_1e

    .line 1319
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1320
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v11, v12}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadSnippet(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_e

    .line 1323
    :cond_1e
    if-eqz v13, :cond_1f

    .line 1324
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1325
    invoke-virtual {v2, v3, v11, v12}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_f

    .line 1328
    :cond_1f
    if-eqz v6, :cond_20

    .line 1329
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1330
    invoke-virtual {v2, v3, v11, v12}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThreadUnreadCount(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_10

    .line 1333
    :cond_20
    if-eqz v5, :cond_21

    .line 1334
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1335
    invoke-static {v3, v4, v5}, Lcom/android/providers/telephony/MmsSmsUtils;->getAddressIdFromThreadId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v6

    .line 1336
    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThread(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    goto :goto_11

    .line 1339
    :cond_21
    if-eqz v10, :cond_22

    .line 1340
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1341
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/providers/telephony/BatchModeHelper;->updateBlockedThreadLastSimId(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_12

    .line 1345
    :cond_22
    if-eqz v8, :cond_23

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_24

    :cond_23
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    const-string v4, "sync_state"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1347
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;Z)V

    .line 1349
    :cond_25
    if-eqz v15, :cond_26

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_THREAD_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5}, Lcom/android/providers/telephony/BatchModeHelper;->notifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1353
    :cond_26
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1355
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v2, v9

    .line 1410
    :goto_13
    invoke-virtual/range {v16 .. v16}, Lcom/android/providers/telephony/MmsSmsUtils$OperationPerfProfiler;->prof()V

    goto/16 :goto_1

    .line 1357
    :cond_27
    const-string v4, "part"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1358
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1361
    packed-switch v6, :pswitch_data_1

    .line 1373
    :goto_14
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1375
    :try_start_3
    const-string v2, "part"

    const-string v4, "DISTINCT mid"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/providers/telephony/MmsSmsUtils;->queryLongValuesToSet(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v2

    .line 1377
    const-string v4, "part"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1378
    if-lez v4, :cond_2d

    .line 1379
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/MmsSmsUtils;->suppressMakingMmsPreview(Landroid/net/Uri;)Z

    move-result v6

    .line 1380
    invoke-static {}, Lcom/android/providers/telephony/BatchModeHelper;->getInstance()Lcom/android/providers/telephony/BatchModeHelper;

    move-result-object v7

    .line 1381
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1382
    if-nez v17, :cond_28

    .line 1383
    invoke-virtual {v7, v3, v10, v11}, Lcom/android/providers/telephony/BatchModeHelper;->markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1384
    invoke-virtual {v7, v3, v10, v11}, Lcom/android/providers/telephony/BatchModeHelper;->clearFileId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1386
    :cond_28
    if-nez v6, :cond_29

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7, v2, v3, v10, v11}, Lcom/android/providers/telephony/BatchModeHelper;->remakeMmsPreview(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1389
    :cond_29
    invoke-virtual {v7, v3, v10, v11}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachmentByMsg(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_15

    .line 1404
    :catchall_1
    move-exception v2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1363
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_14

    .line 1367
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/android/providers/telephony/MmsSmsUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_14

    .line 1391
    :cond_2a
    :try_start_4
    const-string v2, "mid"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1392
    const-string v2, "mid"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1393
    if-nez v17, :cond_2b

    .line 1394
    invoke-virtual {v7, v3, v5, v6}, Lcom/android/providers/telephony/BatchModeHelper;->markMmsDirty(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1396
    :cond_2b
    invoke-virtual {v7, v3, v5, v6}, Lcom/android/providers/telephony/BatchModeHelper;->updateThreadHasAttachmentByMsg(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1398
    :cond_2c
    if-eqz v8, :cond_2d

    .line 1399
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/MmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/providers/telephony/MmsProvider;->notifyChange(Landroid/content/Context;Z)V

    .line 1402
    :cond_2d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1404
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v2, v4

    .line 1406
    goto/16 :goto_13

    .line 1407
    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2f
    move v12, v10

    move v10, v2

    move/from16 v22, v5

    move v5, v4

    move v4, v11

    move v11, v7

    move v7, v6

    move/from16 v6, v22

    goto/16 :goto_a

    :cond_30
    move v13, v12

    goto/16 :goto_9

    :cond_31
    move v14, v13

    goto/16 :goto_8

    :pswitch_6
    move-object v2, v3

    goto/16 :goto_2

    .line 1090
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1361
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
