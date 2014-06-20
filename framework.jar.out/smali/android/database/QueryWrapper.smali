.class public Landroid/database/QueryWrapper;
.super Ljava/lang/Object;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/QueryWrapper$QueryObject;
    }
.end annotation


# static fields
.field public static final DYNAMIC_MODE:I = 0x2

.field public static final STATIC_MODE:I = 0x1

.field public static final STORED_QUERY_LIMIT_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "QueryWrapper"

.field private static mNumMemTable:I

.field private static mQueryWrapperMode:I

.field static sQueryObjectPoolDynamic:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/QueryWrapper$QueryObject;",
            ">;"
        }
    .end annotation
.end field

.field static sQueryObjectPoolStatic:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/QueryWrapper$QueryObject;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryWrapper:Landroid/database/QueryWrapper;


# instance fields
.field private MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    sput v0, Landroid/database/QueryWrapper;->mNumMemTable:I

    .line 41
    sput v0, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    .line 42
    sput-object v1, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 43
    sput-object v1, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 45
    new-instance v0, Landroid/database/QueryWrapper;

    invoke-direct {v0}, Landroid/database/QueryWrapper;-><init>()V

    sput-object v0, Landroid/database/QueryWrapper;->sQueryWrapper:Landroid/database/QueryWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v0, "mem_table"

    iput-object v0, p0, Landroid/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/QueryWrapper;
    .locals 2
    .parameter "mDb"
    .parameter "storeSize"

    .prologue
    .line 90
    sget v0, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "QueryWrapper"

    const-string v1, "Already QueryWrapper Object created in other mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-object v0, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-nez v0, :cond_3

    .line 95
    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    if-gtz p1, :cond_2

    .line 96
    :cond_1
    const/16 p1, 0xa

    .line 98
    :cond_2
    new-instance v0, Landroid/database/QueryWrapper$1;

    invoke-direct {v0, p1, p0}, Landroid/database/QueryWrapper$1;-><init>(ILandroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 109
    :cond_3
    const/4 v0, 0x2

    sput v0, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    .line 110
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-string v0, "QueryWrapper"

    const-string v1, "QueryWrapper Object created in Dynamic mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    sget-object v0, Landroid/database/QueryWrapper;->sQueryWrapper:Landroid/database/QueryWrapper;

    goto :goto_0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/QueryWrapper;
    .locals 8
    .parameter "mDb"
    .parameter "arrQuery"

    .prologue
    const/4 v5, 0x0

    .line 117
    sget v6, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    if-eqz v6, :cond_0

    .line 118
    const-string v6, "QueryWrapper"

    const-string v7, "Already QueryWrapper Object created in other mode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-object v5

    .line 121
    :cond_0
    array-length v6, p1

    const/16 v7, 0xa

    if-le v6, v7, :cond_1

    .line 122
    const-string v6, "QueryWrapper"

    const-string v7, "Exceed avalable managing size. Size should be under 10"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_1
    const/4 v5, 0x1

    sput v5, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    .line 126
    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-nez v5, :cond_3

    .line 127
    new-instance v5, Landroid/database/QueryWrapper$2;

    array-length v6, p1

    invoke-direct {v5, v6, p0}, Landroid/database/QueryWrapper$2;-><init>(ILandroid/database/sqlite/SQLiteDatabase;)V

    sput-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 137
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 138
    .local v4, strQuery:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 137
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_2
    new-instance v3, Landroid/database/QueryWrapper$QueryObject;

    invoke-direct {v3, v4}, Landroid/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, qo:Landroid/database/QueryWrapper$QueryObject;
    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v5, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 145
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #qo:Landroid/database/QueryWrapper$QueryObject;
    .end local v4           #strQuery:Ljava/lang/String;
    :cond_3
    const-string v5, "QueryWrapper"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    const-string v5, "QueryWrapper"

    const-string v6, "QueryWrapper Object created in Static mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4
    sget-object v5, Landroid/database/QueryWrapper;->sQueryWrapper:Landroid/database/QueryWrapper;

    goto :goto_0
.end method

.method private declared-synchronized getQueryObject(Ljava/lang/String;)Landroid/database/QueryWrapper$QueryObject;
    .locals 5
    .parameter "requestQuery"

    .prologue
    .line 51
    monitor-enter p0

    const/4 v1, 0x0

    .line 52
    .local v1, qo:Landroid/database/QueryWrapper$QueryObject;
    :try_start_0
    sget v3, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v3, :cond_0

    .line 53
    sget-object v3, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/database/QueryWrapper$QueryObject;

    move-object v1, v0

    .line 54
    if-nez v1, :cond_0

    .line 55
    new-instance v2, Landroid/database/QueryWrapper$QueryObject;

    invoke-direct {v2, p1}, Landroid/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1           #qo:Landroid/database/QueryWrapper$QueryObject;
    .local v2, qo:Landroid/database/QueryWrapper$QueryObject;
    :try_start_1
    sget-object v3, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 59
    .end local v2           #qo:Landroid/database/QueryWrapper$QueryObject;
    .restart local v1       #qo:Landroid/database/QueryWrapper$QueryObject;
    :cond_0
    :try_start_2
    sget v3, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v3, :cond_1

    .line 60
    sget-object v3, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/database/QueryWrapper$QueryObject;

    move-object v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :cond_1
    monitor-exit p0

    return-object v1

    .line 51
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit p0

    throw v3

    .end local v1           #qo:Landroid/database/QueryWrapper$QueryObject;
    .restart local v2       #qo:Landroid/database/QueryWrapper$QueryObject;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #qo:Landroid/database/QueryWrapper$QueryObject;
    .restart local v1       #qo:Landroid/database/QueryWrapper$QueryObject;
    goto :goto_0
.end method

.method private declared-synchronized getQueryObject(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/QueryWrapper$QueryObject;
    .locals 7
    .parameter "requestQuery"
    .parameter "selectionArgs"

    .prologue
    .line 67
    monitor-enter p0

    const/4 v2, 0x0

    .line 68
    .local v2, qo:Landroid/database/QueryWrapper$QueryObject;
    :try_start_0
    sget v5, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v5, :cond_0

    .line 69
    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/database/QueryWrapper$QueryObject;

    move-object v2, v0

    .line 70
    if-nez v2, :cond_0

    .line 71
    new-instance v3, Landroid/database/QueryWrapper$QueryObject;

    invoke-direct {v3, p1, p2}, Landroid/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v2           #qo:Landroid/database/QueryWrapper$QueryObject;
    .local v3, qo:Landroid/database/QueryWrapper$QueryObject;
    :try_start_1
    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 75
    .end local v3           #qo:Landroid/database/QueryWrapper$QueryObject;
    .restart local v2       #qo:Landroid/database/QueryWrapper$QueryObject;
    :cond_0
    :try_start_2
    sget v5, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v5, :cond_3

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_1

    .line 78
    const-string v5, "[?]"

    aget-object v6, p2, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, stringBinding:Ljava/lang/String;
    move-object p1, v4

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v4           #stringBinding:Ljava/lang/String;
    :cond_1
    const-string v5, "QueryWrapper"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const-string v5, "QueryWrapper"

    const-string v6, "Replaces the match for ? within query with the given actual value"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    sget-object v5, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/database/QueryWrapper$QueryObject;

    move-object v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .end local v1           #i:I
    :cond_3
    monitor-exit p0

    return-object v2

    .line 67
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit p0

    throw v5

    .end local v2           #qo:Landroid/database/QueryWrapper$QueryObject;
    .restart local v3       #qo:Landroid/database/QueryWrapper$QueryObject;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #qo:Landroid/database/QueryWrapper$QueryObject;
    .restart local v2       #qo:Landroid/database/QueryWrapper$QueryObject;
    goto :goto_1
.end method

.method private queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .parameter "mDb"
    .parameter "query"
    .parameter "selectionArgs"
    .parameter "cancellationSignal"

    .prologue
    const/4 v5, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, mQueryObject:Landroid/database/QueryWrapper$QueryObject;
    if-nez p3, :cond_1

    .line 246
    invoke-direct {p0, p2}, Landroid/database/QueryWrapper;->getQueryObject(Ljava/lang/String;)Landroid/database/QueryWrapper$QueryObject;

    move-result-object v0

    .line 250
    :goto_0
    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {v0}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    if-nez p3, :cond_2

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/QueryWrapper$QueryObject;->setMemTableName(Ljava/lang/String;)V

    .line 258
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/database/QueryWrapper$QueryObject;->setChangeCount(J)V

    .line 259
    sget v1, Landroid/database/QueryWrapper;->mNumMemTable:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/database/QueryWrapper;->mNumMemTable:I

    .line 273
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 278
    :goto_3
    return-object v1

    .line 248
    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/database/QueryWrapper;->getQueryObject(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/QueryWrapper$QueryObject;

    move-result-object v0

    goto/16 :goto_0

    .line 255
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 262
    :cond_3
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/database/QueryWrapper$QueryObject;->getChangeCount()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop Table IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    if-nez p3, :cond_4

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    :goto_4
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/database/QueryWrapper$QueryObject;->setChangeCount(J)V

    goto/16 :goto_2

    .line 267
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 275
    :cond_5
    const-string v1, "QueryWrapper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 276
    const-string v1, "QueryWrapper"

    const-string v2, "Not use memory table. It works on Native routine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_6
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_3
.end method

.method private queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .parameter "mDb"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .parameter "cancellationSignal"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 157
    invoke-static/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, sql:Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, p11

    invoke-direct {p0, p1, v10, v0, v1}, Landroid/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "mDb"
    .parameter "qb"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"

    .prologue
    .line 213
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Landroid/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "mDb"
    .parameter "qb"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 220
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .parameter "mDb"
    .parameter "qb"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"
    .parameter "cancellationSignal"

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    .line 231
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, sql:Ljava/lang/String;
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "QueryWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v7, p5, v0}, Landroid/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "mDb"
    .parameter "query"

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "mDb"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 182
    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Landroid/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "mDb"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 190
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "mDb"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 167
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/database/QueryWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter "mDb"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"
    .parameter "cancellationSignal"

    .prologue
    .line 174
    invoke-direct/range {p0 .. p11}, Landroid/database/QueryWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "mDb"
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter "mDb"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "cancellationSignal"

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public releaseQueryWrapper(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "mDb"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 283
    sget-object v0, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 285
    sput-object v2, Landroid/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 287
    :cond_0
    sget-object v0, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 288
    sget-object v0, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 289
    sput-object v2, Landroid/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 291
    :cond_1
    sput v1, Landroid/database/QueryWrapper;->mQueryWrapperMode:I

    .line 292
    sput v1, Landroid/database/QueryWrapper;->mNumMemTable:I

    .line 293
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "QueryWrapper"

    const-string/jumbo v1, "released memory using by QueryWrapper "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    return-void
.end method
