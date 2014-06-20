.class public Landroid/database/BackupDB;
.super Ljava/lang/Object;
.source "BackupDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/BackupDB$BackupDatabaseProgress;
    }
.end annotation


# static fields
.field public static final BACKUP_FAIL:I = 0x2

.field private static final BACKUP_LIST_NAME:Ljava/lang/String; = "backupList"

.field public static final BACKUP_SUCCESS:I = 0x1

.field private static final DEBUG_MODE:Z = true

.field public static final DELETE_FAIL:I = 0x3

.field private static final OTHER_FILE_SIZE:I = 0x2210

.field public static final TAG:Ljava/lang/String; = "BackupDB_Log"

.field private static sBackupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/BackupDBInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

.field private static sIsInProgress:Z

.field private static sIsModified:Z

.field private static sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Landroid/database/BackupDB;->sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/BackupDB;->sLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/database/BackupDB;->sIsInProgress:Z

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Landroid/database/BackupDB;->sIsModified:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static backupDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/BackupDB$BackupDatabaseProgress;)Z
    .locals 14
    .parameter "db"
    .parameter "backupPath"
    .parameter "progress"

    .prologue
    .line 61
    sget-object v9, Landroid/database/BackupDB;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 63
    :try_start_0
    const-string v8, "BackupDB_Log"

    const-string v10, "Backup Start"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_0

    .line 67
    const-string v8, "BackupDB_Log"

    const-string v10, "Backup Failed : DB is not opened."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v8, 0x0

    monitor-exit v9

    .line 159
    :goto_0
    return v8

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 72
    const-string v8, "BackupDB_Log"

    const-string v10, "Backup Failed : Backup name is equal to db name."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 76
    :cond_1
    :try_start_1
    sget-boolean v8, Landroid/database/BackupDB;->sIsModified:Z

    if-eqz v8, :cond_2

    .line 77
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/database/BackupDB;->readBackupList(Ljava/io/File;)V

    .line 78
    :cond_2
    sput-object p2, Landroid/database/BackupDB;->sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

    .line 81
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sCallback Status : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/database/BackupDB;->sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, dbFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, backupDir:Ljava/io/File;
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup Path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-nez v0, :cond_3

    .line 92
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 96
    .local v6, usableSpace:J
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x2210

    add-long v3, v10, v12

    .line 99
    .local v3, neededSpace:J
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Usable Space : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Needed Space : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    cmp-long v8, v6, v3

    if-gtz v8, :cond_4

    .line 104
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup Failed : Use does not have enough space. Usable Space ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), Needed Space ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 112
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_5

    .line 113
    const-string v8, "BackupDB_Log"

    const-string v10, "Backup Failed : Do not have permission for write."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 118
    :cond_5
    const/4 v2, 0x0

    .line 119
    .local v2, duplicateBackup:Z
    invoke-static {p1}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_6

    .line 120
    const/4 v2, 0x1

    .line 123
    :cond_6
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplication : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v2, :cond_7

    .line 127
    sget-object v8, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/BackupDBInfo;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/database/BackupDBInfo;->setBackupStatus(I)V

    .line 134
    :goto_1
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/database/BackupDB;->writeBackupList(Ljava/io/File;)V

    .line 137
    const/4 v8, 0x1

    sput-boolean v8, Landroid/database/BackupDB;->sIsInProgress:Z

    .line 138
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->backupDB(Ljava/lang/String;)I

    move-result v5

    .line 139
    .local v5, rc:I
    const/4 v8, 0x0

    sput-boolean v8, Landroid/database/BackupDB;->sIsInProgress:Z

    .line 142
    const-string v8, "BackupDB_Log"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value of rc (backup) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {p1}, Landroid/database/BackupDB;->cleanOtherFiles(Ljava/lang/String;)V

    .line 147
    const/4 v8, -0x1

    if-ne v5, v8, :cond_8

    .line 148
    const-string v8, "BackupDB_Log"

    const-string v10, "SQLiteException is generated in backupDB API."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v8, 0x0

    monitor-exit v9

    goto/16 :goto_0

    .line 130
    .end local v5           #rc:I
    :cond_7
    sget-object v8, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    new-instance v10, Landroid/database/BackupDBInfo;

    const/4 v11, 0x2

    invoke-direct {v10, p1, v11}, Landroid/database/BackupDBInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    .restart local v5       #rc:I
    :cond_8
    sget-object v8, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/BackupDBInfo;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/database/BackupDBInfo;->setBackupStatus(I)V

    .line 155
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Landroid/database/BackupDB;->writeBackupList(Ljava/io/File;)V

    .line 158
    const-string v8, "BackupDB_Log"

    const-string v10, "Backup End"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v8, 0x1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static backupDatabaseProgressCallback(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 533
    const-string v0, "BackupDB_Log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v0, Landroid/database/BackupDB;->sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

    if-eqz v0, :cond_0

    .line 536
    sget-object v0, Landroid/database/BackupDB;->sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

    invoke-interface {v0, p0}, Landroid/database/BackupDB$BackupDatabaseProgress;->onProgress(I)V

    .line 538
    :cond_0
    return-void
.end method

.method private static cleanOtherFiles(Ljava/lang/String;)V
    .locals 5
    .parameter "backupPath"

    .prologue
    .line 521
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "-journal"

    aput-object v4, v2, v3

    .line 522
    .local v2, postFix:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 524
    .local v0, deleteFile:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 525
    new-instance v0, Ljava/io/File;

    .end local v0           #deleteFile:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v0       #deleteFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 524
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_1
    return-void
.end method

.method public static deleteAllBackupDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 262
    sget-object v8, Landroid/database/BackupDB;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 265
    const-string v7, "BackupDB_Log"

    const-string v9, "Delete all backup Failed : DB is not opened."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    monitor-exit v8

    .line 316
    :goto_0
    return v4

    .line 269
    :cond_0
    sget-boolean v7, Landroid/database/BackupDB;->sIsModified:Z

    if-eqz v7, :cond_1

    .line 270
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Landroid/database/BackupDB;->readBackupList(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    const/4 v4, 0x1

    .line 275
    .local v4, isSuccess:Z
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v3, failList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/BackupDBInfo;>;"
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 280
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 281
    .local v5, str:Ljava/lang/String;
    const/4 v6, 0x0

    .line 282
    .local v6, strs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 284
    .local v1, deleteFile:Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 285
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 286
    new-instance v1, Ljava/io/File;

    .end local v1           #deleteFile:Ljava/io/File;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .restart local v1       #deleteFile:Ljava/io/File;
    const-string v7, "BackupDB_Log"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleted file path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Deleted file exist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Delete Status : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 297
    new-instance v7, Landroid/database/BackupDBInfo;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10}, Landroid/database/BackupDBInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v7, "BackupDB_Log"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleted file path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Delete Status : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 303
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 305
    sget-object v7, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 306
    sput-object v3, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    .line 308
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Landroid/database/BackupDB;->writeBackupList(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #deleteFile:Ljava/io/File;
    .end local v3           #failList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/BackupDBInfo;>;"
    .end local v5           #str:Ljava/lang/String;
    .end local v6           #strs:[Ljava/lang/String;
    :goto_2
    :try_start_2
    monitor-exit v8

    goto/16 :goto_0

    .line 317
    .end local v4           #isSuccess:Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 309
    .restart local v4       #isSuccess:Z
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 314
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public static deleteBackupDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 8
    .parameter "db"
    .parameter "backupPath"

    .prologue
    const/4 v4, 0x0

    .line 322
    sget-object v5, Landroid/database/BackupDB;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 324
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    const-string v3, "BackupDB_Log"

    const-string v6, "Delete backup Failed : DB is not opened."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    monitor-exit v5

    move v3, v4

    .line 361
    :goto_0
    return v3

    .line 329
    :cond_0
    sget-boolean v3, Landroid/database/BackupDB;->sIsModified:Z

    if-eqz v3, :cond_1

    .line 330
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/database/BackupDB;->readBackupList(Ljava/io/File;)V

    .line 332
    :cond_1
    invoke-static {p1}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v1

    .line 334
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 335
    const-string v3, "BackupDB_Log"

    const-string v6, "Delete Failed : Not find backup."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 341
    :cond_2
    sget-object v3, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/BackupDBInfo;

    invoke-virtual {v3}, Landroid/database/BackupDBInfo;->getBackupPath()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, strs:[Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, deleteFile:Ljava/io/File;
    const-string v3, "BackupDB_Log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted file path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Deleted file exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delete Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 351
    sget-object v3, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/BackupDBInfo;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/database/BackupDBInfo;->setBackupStatus(I)V

    .line 352
    const-string v3, "BackupDB_Log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted file path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delete Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    monitor-exit v5

    move v3, v4

    goto/16 :goto_0

    .line 357
    :cond_3
    sget-object v3, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 359
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/database/BackupDB;->writeBackupList(Ljava/io/File;)V

    .line 361
    const/4 v3, 0x1

    monitor-exit v5

    goto/16 :goto_0

    .line 362
    .end local v0           #deleteFile:Ljava/io/File;
    .end local v1           #index:I
    .end local v2           #strs:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static findBackupPathPosition(Ljava/lang/String;)I
    .locals 3
    .parameter "backupPath"

    .prologue
    .line 510
    const/4 v0, -0x1

    .line 511
    .local v0, foundItemPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 512
    sget-object v2, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/BackupDBInfo;

    invoke-virtual {v2}, Landroid/database/BackupDBInfo;->getBackupPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    move v0, v1

    .line 517
    :cond_0
    return v0

    .line 511
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getBackupDatabaseList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 4
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    const-string v2, "BackupDB_Log"

    const-string v3, "Getting list is failed : DB is not opened."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v1, 0x0

    .line 431
    :cond_0
    return-object v1

    .line 424
    :cond_1
    sget-boolean v2, Landroid/database/BackupDB;->sIsModified:Z

    if-eqz v2, :cond_2

    .line 425
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/database/BackupDB;->readBackupList(Ljava/io/File;)V

    .line 427
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 429
    sget-object v2, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/BackupDBInfo;

    invoke-virtual {v2}, Landroid/database/BackupDBInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;
    .locals 4
    .parameter "db"

    .prologue
    .line 449
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, listFileParentPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "backupList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static isInProgress()Z
    .locals 1

    .prologue
    .line 414
    sget-boolean v0, Landroid/database/BackupDB;->sIsInProgress:Z

    return v0
.end method

.method private static readBackupList(Ljava/io/File;)V
    .locals 8
    .parameter "listFile"

    .prologue
    .line 483
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 485
    .local v0, br:Ljava/io/BufferedReader;
    sget-object v4, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 487
    const/4 v2, 0x0

    .line 488
    .local v2, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 490
    .local v3, strs:[Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 491
    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 492
    sget-object v4, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    new-instance v5, Landroid/database/BackupDBInfo;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/database/BackupDBInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #strs:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 507
    :goto_1
    return-void

    .line 496
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #str:Ljava/lang/String;
    .restart local v3       #strs:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 497
    const/4 v4, 0x0

    sput-boolean v4, Landroid/database/BackupDB;->sIsModified:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 503
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #str:Ljava/lang/String;
    .end local v3           #strs:[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 505
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static renameBackup(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "db"
    .parameter "backupPath"
    .parameter "changedName"

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 367
    sget-object v5, Landroid/database/BackupDB;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 369
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 370
    const-string v6, "BackupDB_Log"

    const-string v7, "Rename Failed : DB is not opened."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v5

    .line 409
    :goto_0
    return v4

    .line 374
    :cond_0
    sget-boolean v6, Landroid/database/BackupDB;->sIsModified:Z

    if-eqz v6, :cond_1

    .line 375
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/database/BackupDB;->readBackupList(Ljava/io/File;)V

    .line 378
    :cond_1
    invoke-static {p1}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, index:I
    if-ne v1, v8, :cond_2

    .line 381
    const-string v6, "BackupDB_Log"

    const-string v7, "Rename Failed : Not find backup."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v5

    goto :goto_0

    .line 410
    .end local v1           #index:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 385
    .restart local v1       #index:I
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, backupFile:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, newPath:Ljava/lang/String;
    invoke-static {v3}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 391
    const-string v6, "BackupDB_Log"

    const-string v7, "Rename Failed : The changed name is duplicated."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    monitor-exit v5

    goto :goto_0

    .line 395
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v2, newFile:Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 399
    const-string v6, "BackupDB_Log"

    const-string v7, "Rename Failed : File not exist or permission denied."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    monitor-exit v5

    goto :goto_0

    .line 405
    :cond_4
    sget-object v4, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/BackupDBInfo;

    invoke-virtual {v4, v3}, Landroid/database/BackupDBInfo;->setPath(Ljava/lang/String;)V

    .line 407
    invoke-static {p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/database/BackupDB;->writeBackupList(Ljava/io/File;)V

    .line 409
    const/4 v4, 0x1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static restoreDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/BackupDB$BackupDatabaseProgress;)Z
    .locals 18
    .parameter "db"
    .parameter "backupPath"
    .parameter "progress"

    .prologue
    .line 165
    sget-object v13, Landroid/database/BackupDB;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 167
    :try_start_0
    const-string v12, "BackupDB_Log"

    const-string v14, "Restore Start"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v12

    if-nez v12, :cond_0

    .line 171
    const-string v12, "BackupDB_Log"

    const-string v14, "Restore Failed : DB is not opened."

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v12, 0x0

    monitor-exit v13

    .line 257
    :goto_0
    return v12

    .line 175
    :cond_0
    sget-boolean v12, Landroid/database/BackupDB;->sIsModified:Z

    if-eqz v12, :cond_1

    .line 176
    invoke-static/range {p0 .. p0}, Landroid/database/BackupDB;->getBackupListFile(Landroid/database/sqlite/SQLiteDatabase;)Ljava/io/File;

    move-result-object v12

    invoke-static {v12}, Landroid/database/BackupDB;->readBackupList(Ljava/io/File;)V

    .line 177
    :cond_1
    sput-object p2, Landroid/database/BackupDB;->sCallback:Landroid/database/BackupDB$BackupDatabaseProgress;

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, index:I
    invoke-static/range {p1 .. p1}, Landroid/database/BackupDB;->findBackupPathPosition(Ljava/lang/String;)I

    move-result v3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_2

    .line 182
    const-string v12, "BackupDB_Log"

    const-string v14, "Restore Failed : Not find backup."

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_0

    .line 258
    .end local v3           #index:I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 186
    .restart local v3       #index:I
    :cond_2
    :try_start_1
    sget-object v12, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/BackupDBInfo;

    .line 187
    .local v7, restoreDBInfo:Landroid/database/BackupDBInfo;
    invoke-virtual {v7}, Landroid/database/BackupDBInfo;->getBackupStatus()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_3

    .line 188
    const-string v12, "BackupDB_Log"

    const-string v14, "Restore Failed : Backup status is failed."

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, restorePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, backupFile:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 198
    .local v8, restoreDir:Ljava/io/File;
    const-string v12, "BackupDB_Log"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Backup Path : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v12, "BackupDB_Log"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restore Path : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-nez v8, :cond_4

    .line 205
    const/4 v12, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 208
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    .line 209
    .local v10, usableSpace:J
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x2210

    add-long v4, v14, v16

    .line 212
    .local v4, neededSpace:J
    const-string v12, "BackupDB_Log"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Usable Space : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v12, "BackupDB_Log"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Needed Space : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    cmp-long v12, v10, v4

    if-gtz v12, :cond_5

    .line 217
    const-string v12, "BackupDB_Log"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restore Failed : Use does not have enough space. Usable Space ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), Needed Space ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v12, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 225
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v12

    if-nez v12, :cond_6

    .line 226
    const-string v12, "BackupDB_Log"

    const-string v14, "Restore Failed : Do not have permission for write."

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v12, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 231
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 234
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 237
    const/4 v12, 0x1

    sput-boolean v12, Landroid/database/BackupDB;->sIsInProgress:Z

    .line 238
    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 240
    .local v1, backupDB:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->backupDB(Ljava/lang/String;)I

    move-result v6

    .line 241
    .local v6, rc:I
    const/4 v12, 0x0

    sput-boolean v12, Landroid/database/BackupDB;->sIsInProgress:Z

    .line 244
    const-string v12, "BackupDB_Log"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value of rc (restore) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v9}, Landroid/database/BackupDB;->cleanOtherFiles(Ljava/lang/String;)V

    .line 249
    const/4 v12, -0x1

    if-ne v6, v12, :cond_7

    .line 250
    const-string v12, "BackupDB_Log"

    const-string v14, "SQLiteException is generated in restoreDB API."

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v12, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 255
    :cond_7
    const-string v12, "BackupDB_Log"

    const-string v14, "Restore End"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v12, 0x1

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static stringListToInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/BackupDBInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    .local p0, stringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/BackupDBInfo;>;"
    const/4 v2, 0x0

    .line 439
    .local v2, strs:Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 440
    new-instance v2, Ljava/util/StringTokenizer;

    .end local v2           #strs:Ljava/util/StringTokenizer;
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .restart local v2       #strs:Ljava/util/StringTokenizer;
    new-instance v3, Landroid/database/BackupDBInfo;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/database/BackupDBInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    return-object v1
.end method

.method private static writeBackupList(Ljava/io/File;)V
    .locals 7
    .parameter "listFile"

    .prologue
    .line 456
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 457
    .local v2, fos:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 459
    .local v0, bw:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 461
    .local v4, str:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v5, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/BackupDBInfo;

    invoke-virtual {v5}, Landroid/database/BackupDBInfo;->getBackupPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v5, Landroid/database/BackupDB;->sBackupList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/BackupDBInfo;

    invoke-virtual {v5}, Landroid/database/BackupDBInfo;->getBackupStatus()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 468
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 469
    const/4 v5, 0x1

    sput-boolean v5, Landroid/database/BackupDB;->sIsModified:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    .end local v4           #str:Ljava/lang/String;
    :goto_1
    return-void

    .line 475
    :catch_0
    move-exception v1

    .line 477
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 470
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
