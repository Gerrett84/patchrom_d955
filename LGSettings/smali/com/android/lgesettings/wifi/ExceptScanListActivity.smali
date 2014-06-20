.class public Lcom/android/lgesettings/wifi/ExceptScanListActivity;
.super Landroid/app/ListActivity;
.source "ExceptScanListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;,
        Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;,
        Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;,
        Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;
    }
.end annotation


# static fields
.field static final EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

.field public static INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

.field public static INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

.field public static INTENT_EXTRA_SECURITY:Ljava/lang/String;

.field public static INTENT_EXTRA_SSID:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private deleteitemID:I

.field private mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

.field private mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

.field private mHandler:Landroid/os/Handler;

.field private mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "ExceptScanList"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    .line 82
    const-string v0, "content_id"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

    .line 83
    const-string v0, "ssid"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_SSID:Ljava/lang/String;

    .line 84
    const-string v0, "security"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_SECURITY:Ljava/lang/String;

    .line 85
    const-string v0, "match_condition"

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "security"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "match_condition"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I

    .line 140
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$1;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mHandler:Landroid/os/Handler;

    .line 496
    return-void
.end method

.method private ExceptScanListRemoveAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 777
    const v0, 0x7f08160d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 778
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, v2, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 780
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V

    .line 781
    return-void
.end method

.method static synthetic access$002(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;)Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/lgesettings/wifi/ExceptScanListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->checkMaxExceptScan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->isExistExceptScan(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->ExceptScanListRemoveAll()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getCountExceptScanDB()I

    move-result v0

    return v0
.end method

.method private addExceptScan(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "ssid"
    .parameter "condtion"

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->addExceptScan(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addExceptScan(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 8
    .parameter "ssid"
    .parameter "security"
    .parameter "condition"

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 853
    const/4 v2, 0x0

    .line 855
    .local v2, result:Landroid/net/Uri;
    sget-object v5, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addExceptScan( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->checkMaxExceptScan()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 858
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->showDialog(I)V

    .line 887
    :goto_0
    return-object v4

    .line 862
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 863
    sget-object v5, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v6, "addExceptScan() - ssid is Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 867
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->isExistExceptScan(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 868
    .local v0, canAddExcept:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 869
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 870
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "ssid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v4, "security"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v4, "match_condition"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v4, v5, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 883
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V

    .end local v3           #values:Landroid/content/ContentValues;
    :goto_2
    move-object v4, v2

    .line 887
    goto :goto_0

    .line 876
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 877
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exception while updating call info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 878
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 879
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exception while updating call info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 880
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v1

    .line 881
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exception while updating call info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 885
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->showDialog(I)V

    goto :goto_2
.end method

.method private checkMaxExceptScan()Z
    .locals 2

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->rejectScanCount()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCountExceptScanDB()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1087
    const/4 v6, 0x0

    .line 1088
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    .line 1089
    .local v8, mContext:Landroid/content/Context;
    const/4 v9, 0x0

    .line 1091
    .local v9, nCount:I
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1094
    if-eqz v6, :cond_0

    .line 1095
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1096
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor not null cursor cont = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1103
    :cond_0
    if-eqz v6, :cond_1

    .line 1104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1105
    const/4 v6, 0x0

    .line 1108
    :cond_1
    :goto_0
    return v9

    .line 1100
    :catch_0
    move-exception v7

    .line 1101
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exceptscan.db open error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1103
    if-eqz v6, :cond_1

    .line 1104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1105
    const/4 v6, 0x0

    goto :goto_0

    .line 1103
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1105
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private getExceptionId(Ljava/lang/String;)I
    .locals 8
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 980
    const/4 v7, -0x1

    .line 981
    .local v7, exceptId:I
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ssid=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 986
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 987
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 991
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_1
    return v7
.end method

.method private isExistExceptScan(Ljava/lang/String;I)Z
    .locals 8
    .parameter "ssid"
    .parameter "condition"

    .prologue
    const/4 v4, 0x0

    .line 895
    const/4 v7, 0x0

    .line 896
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ssid=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "match_condition"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 903
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 904
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 905
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v7, 0x1

    .line 908
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 910
    :cond_1
    return v7
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1029
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void
.end method

.method private rejectScanCount()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 945
    const/4 v6, 0x0

    .line 946
    .local v6, count:I
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 949
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 950
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 954
    :cond_0
    if-eqz v7, :cond_1

    .line 955
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 956
    const/4 v7, 0x0

    .line 959
    :cond_1
    :goto_0
    return v6

    .line 952
    :catch_0
    move-exception v0

    .line 954
    if-eqz v7, :cond_1

    .line 955
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 956
    const/4 v7, 0x0

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 955
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 956
    const/4 v7, 0x0

    :cond_2
    throw v0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->setLoading(Z)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;->cancelOperation(I)V

    .line 393
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;

    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->EXCEPTSCAN_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id DESC"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private updateExceptScan(ILjava/lang/String;I)I
    .locals 9
    .parameter "exceptId"
    .parameter "ssid"
    .parameter "condition"

    .prologue
    .line 822
    const/4 v7, -0x1

    .line 824
    .local v7, result:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 825
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "ssid"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v0, "security"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "match_condition"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v8, v7

    .line 845
    .end local v7           #result:I
    .local v8, result:I
    :goto_0
    return v8

    .line 834
    .end local v8           #result:I
    .restart local v7       #result:I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/wifi/ExceptScanProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 844
    :goto_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V

    move v8, v7

    .line 845
    .end local v7           #result:I
    .restart local v8       #result:I
    goto :goto_0

    .line 837
    .end local v8           #result:I
    .restart local v7       #result:I
    :catch_0
    move-exception v6

    .line 838
    .local v6, e:Landroid/database/sqlite/SQLiteDiskIOException;
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Exception while updating call info"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 839
    .end local v6           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v6

    .line 840
    .local v6, e:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Exception while updating call info"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 841
    .end local v6           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v6

    .line 842
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Exception while updating call info"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v7, 0x7f08160f

    const v6, 0x7f08160e

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 785
    packed-switch p1, :pswitch_data_0

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 787
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V

    goto :goto_0

    .line 791
    :pswitch_1
    if-ne p2, v4, :cond_0

    .line 792
    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_SSID:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, ssid:Ljava/lang/String;
    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 795
    .local v0, condition:I
    invoke-direct {p0, v2, v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->addExceptScan(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 796
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 798
    :cond_1
    invoke-static {p0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 804
    .end local v0           #condition:I
    .end local v2           #ssid:Ljava/lang/String;
    :pswitch_2
    if-ne p2, v4, :cond_0

    .line 805
    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_CONTENT_ID:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 806
    .local v1, exceptId:I
    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_SSID:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 807
    .restart local v2       #ssid:Ljava/lang/String;
    sget-object v3, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->INTENT_EXTRA_MATCH_CONDITION:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 809
    .restart local v0       #condition:I
    invoke-direct {p0, v1, v2, v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->updateExceptScan(ILjava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 810
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 812
    :cond_2
    invoke-static {p0, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1066
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1068
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->setContentView(I)V

    .line 1069
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 326
    const v1, 0x7f040073

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->setContentView(I)V

    .line 328
    const v1, 0x7f081601

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->setTitle(I)V

    .line 330
    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mQueryHandler:Lcom/android/lgesettings/wifi/ExceptScanListActivity$QueryHandler;

    .line 331
    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    const v2, 0x7f040075

    const/4 v3, 0x0

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    .line 332
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 335
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f081607

    const v1, 0x1010355

    const/4 v2, 0x1

    .line 615
    packed-switch p1, :pswitch_data_0

    .line 712
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 618
    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    const-string v1, "isNew"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 624
    sget-object v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click Event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AddNewActivity Can not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 630
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081618

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$3;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080106

    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$2;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08160c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 649
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081613

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$4;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 662
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081614

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity$5;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$5;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 675
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081617

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081608

    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$7;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f081609

    new-instance v2, Lcom/android/lgesettings/wifi/ExceptScanListActivity$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$6;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08160b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 718
    const v0, 0x7f081604

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 722
    const/4 v0, 0x2

    const v3, 0x7f081606

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 726
    return v1

    :cond_0
    move v0, v2

    .line 722
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 380
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->stopRequestProcessing()V

    .line 381
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 382
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 403
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 405
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;

    .line 407
    .local v4, viewHolder:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;
    iget-object v5, v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->ssidView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, ssid:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getExceptionId(Ljava/lang/String;)I

    move-result v1

    .line 409
    .local v1, exceptId:I
    const/4 v2, -0x1

    .line 410
    .local v2, matchCondition:I
    iget-object v5, v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->matchOptionCheck:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 412
    .local v0, checkCondition:Z
    sget-object v5, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onListItemClick():: position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ssid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v5, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onListItemClick():: exceptId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", checkCondition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez v0, :cond_0

    .line 416
    iget-object v5, v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->matchOptionCheck:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 417
    const/4 v2, 0x1

    .line 423
    :goto_0
    long-to-int v5, p4

    invoke-direct {p0, v5, v3, v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->updateExceptScan(ILjava/lang/String;I)I

    .line 424
    return-void

    .line 419
    :cond_0
    iget-object v5, v4, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListItemView;->matchOptionCheck:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 420
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 732
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 733
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 773
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 736
    :sswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/lgesettings/wifi/ExceptScanListEdit;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 738
    const-string v2, "isNew"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v1

    .line 742
    sget-object v1, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : AddNewActivity Can not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->onBackPressed()V

    goto :goto_0

    .line 760
    :sswitch_2
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->getCountExceptScanDB()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 761
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->showDialog(I)V

    goto :goto_0

    .line 763
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 733
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->stopRequestProcessing()V

    .line 365
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->mPd:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;->cancel(Z)Z

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAsyncTask:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanAsyncTask;

    .line 370
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->checkMaxExceptScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1079
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1080
    if-eqz p1, :cond_0

    .line 1081
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I

    .line 1083
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 353
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/lgesettings/wifi/ExceptScanListActivity$ExceptScanListAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->startQuery()V

    .line 357
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1073
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1074
    const-string v0, "id"

    iget v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListActivity;->deleteitemID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 375
    return-void
.end method
