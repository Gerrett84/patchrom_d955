.class public Lcom/lge/cliptray/ClipDBOpenHelper;
.super Ljava/lang/Object;
.source "ClipDBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/cliptray/ClipDBOpenHelper$CreateDB;,
        Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "clipdata.db"

.field private static final DATABASE_VERSION:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    iget-object v2, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mContext:Landroid/content/Context;

    const-string v3, "clipdata.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;-><init>(Lcom/lge/cliptray/ClipDBOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    .line 55
    return-void
.end method


# virtual methods
.method public deleteAll()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, doneDelete:I
    iget-object v2, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "clipdb"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 195
    if-lez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteGlobalPosition(I)V
    .locals 7
    .parameter "delete_pos"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    const-string v2, "clipdb"

    const-string v3, "global_position=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE clipdb SET global_position = global_position-1 WHERE global_position > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "ClipTray"

    const-string v3, "ClipDBOpenHelper: deleteGlobalPosition failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public getClipdata()Landroid/content/ClipData;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v11, 0x0

    .line 89
    .local v11, clip:Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    invoke-virtual {v2}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    .line 92
    .local v14, mCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "clipdb"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "global_position"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "local_position"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "global_position DESC, local_position ASC"

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 96
    if-nez v14, :cond_1

    .line 124
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v11

    .line 128
    .end local v11           #clip:Landroid/content/ClipData;
    .local v12, clip:Landroid/content/ClipData;
    :goto_0
    return-object v12

    .line 100
    .end local v12           #clip:Landroid/content/ClipData;
    .restart local v11       #clip:Landroid/content/ClipData;
    :cond_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    const-string v2, "data_type"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 102
    .local v16, mIdxDataType:I
    const-string v2, "data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 104
    .local v15, mIdxData:I
    :cond_2
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, type:Ljava/lang/String;
    const-string/jumbo v2, "text"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 106
    if-nez v11, :cond_6

    .line 107
    const-string/jumbo v2, "text"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v11

    .line 119
    :cond_3
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 124
    .end local v15           #mIdxData:I
    .end local v16           #mIdxDataType:I
    .end local v17           #type:Ljava/lang/String;
    :cond_4
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 125
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    move-object v12, v11

    .line 128
    .end local v11           #clip:Landroid/content/ClipData;
    .restart local v12       #clip:Landroid/content/ClipData;
    goto :goto_0

    .line 109
    .end local v12           #clip:Landroid/content/ClipData;
    .restart local v11       #clip:Landroid/content/ClipData;
    .restart local v15       #mIdxData:I
    .restart local v16       #mIdxDataType:I
    .restart local v17       #type:Ljava/lang/String;
    :cond_6
    :try_start_2
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 121
    .end local v15           #mIdxData:I
    .end local v16           #mIdxDataType:I
    .end local v17           #type:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 122
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v2, "ClipTray"

    const-string v3, "ClipDBOpenHelper: getClipdata  failed!"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 125
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 111
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #mIdxData:I
    .restart local v16       #mIdxDataType:I
    .restart local v17       #type:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v2, "img"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    if-nez v11, :cond_8

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/cliptray/ClipDBOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "img"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v11

    goto :goto_1

    .line 116
    :cond_8
    new-instance v2, Landroid/content/ClipData$Item;

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v11, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 124
    .end local v15           #mIdxData:I
    .end local v16           #mIdxDataType:I
    .end local v17           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 125
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method

.method public getClipdataList()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v13, clipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ClipData;>;"
    const/4 v12, 0x0

    .line 140
    .local v12, clip:Landroid/content/ClipData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    invoke-virtual {v3}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 141
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 143
    .local v17, mCursor:Landroid/database/Cursor;
    const/4 v3, 0x1

    :try_start_0
    const-string v4, "clipdb"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "global_position"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "local_position"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "data_num"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "data_type"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "data"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "global_position , local_position"

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 147
    if-nez v17, :cond_1

    .line 184
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_0
    :goto_0
    return-object v13

    .line 150
    :cond_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    const-string v3, "data_num"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 152
    .local v20, mIdxItemNum:I
    const-string/jumbo v3, "local_position"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 153
    .local v21, mIdxLocalPos:I
    const-string v3, "data_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 154
    .local v19, mIdxDataType:I
    const-string v3, "data"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 156
    .local v18, mIdxData:I
    :cond_2
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 157
    .local v15, itemNum:I
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 158
    .local v16, localPos:I
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 160
    .local v22, type:Ljava/lang/String;
    const-string/jumbo v3, "text"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 161
    if-nez v12, :cond_6

    .line 162
    const-string/jumbo v3, "text"

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v12

    .line 175
    :cond_3
    :goto_1
    add-int/lit8 v3, v15, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 176
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v12, 0x0

    .line 179
    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 184
    .end local v15           #itemNum:I
    .end local v16           #localPos:I
    .end local v18           #mIdxData:I
    .end local v19           #mIdxDataType:I
    .end local v20           #mIdxItemNum:I
    .end local v21           #mIdxLocalPos:I
    .end local v22           #type:Ljava/lang/String;
    :cond_5
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 164
    .restart local v15       #itemNum:I
    .restart local v16       #localPos:I
    .restart local v18       #mIdxData:I
    .restart local v19       #mIdxDataType:I
    .restart local v20       #mIdxItemNum:I
    .restart local v21       #mIdxLocalPos:I
    .restart local v22       #type:Ljava/lang/String;
    :cond_6
    :try_start_2
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 181
    .end local v15           #itemNum:I
    .end local v16           #localPos:I
    .end local v18           #mIdxData:I
    .end local v19           #mIdxDataType:I
    .end local v20           #mIdxItemNum:I
    .end local v21           #mIdxLocalPos:I
    .end local v22           #type:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 182
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v3, "ClipTray"

    const-string v4, "ClipDBOpenHelper: getClipdataList failed!"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 166
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #itemNum:I
    .restart local v16       #localPos:I
    .restart local v18       #mIdxData:I
    .restart local v19       #mIdxDataType:I
    .restart local v20       #mIdxItemNum:I
    .restart local v21       #mIdxLocalPos:I
    .restart local v22       #type:Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v3, "img"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    if-nez v12, :cond_8

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/cliptray/ClipDBOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "img"

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v12

    goto :goto_1

    .line 171
    :cond_8
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v12, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 184
    .end local v15           #itemNum:I
    .end local v16           #localPos:I
    .end local v18           #mIdxData:I
    .end local v19           #mIdxDataType:I
    .end local v20           #mIdxItemNum:I
    .end local v21           #mIdxLocalPos:I
    .end local v22           #type:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 185
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3
.end method

.method public hasClipData()Z
    .locals 5

    .prologue
    .line 132
    iget-object v3, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    invoke-virtual {v3}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 133
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "Select exists(select 1 from clipdb);"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 134
    .local v0, count:J
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public insert(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "globalpos"
    .parameter "localpos"
    .parameter "itemnum"
    .parameter "datatype"
    .parameter "data"

    .prologue
    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "global_position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string/jumbo v4, "local_position"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v4, "data_num"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v4, "data_type"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v4, "data"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lcom/lge/cliptray/ClipDBOpenHelper;->mDBHelper:Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;

    invoke-virtual {v4}, Lcom/lge/cliptray/ClipDBOpenHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "clipdb"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 69
    .local v2, id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
