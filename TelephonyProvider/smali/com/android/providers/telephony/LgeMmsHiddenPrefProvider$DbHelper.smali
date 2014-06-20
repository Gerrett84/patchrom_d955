.class Lcom/android/providers/telephony/LgeMmsHiddenPrefProvider$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LgeMmsHiddenPrefProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/LgeMmsHiddenPrefProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 31
    const-string v0, "mmshiddenpref.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    const-string v0, "MmsHiddenPrefProvider"

    const-string v1, "MmsHiddenPrefProvider.Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 38
    :try_start_0
    const-string v1, "CREATE TABLE mmshiddenpref(_id INTEGER PRIMARY KEY,spam_set INTEGER,anony_spam_set INTEGER,modelshow_set INTEGER,honest_sim_copy_mode INTEGER,change820 INTEGER,developer_menu INTEGER,smsmore INTEGER,smscodeset TEXT,mmscodeset TEXT,confirm_send_msg INTEGER,roamingset TEXT,roaming_on_off INTEGER, noti_new_message_popup INTEGER, pref_key_enable_notifications INTEGER, save_file_log INTEGER, mms_noti_only INTEGER, roaming_area TEXT, KT_IP TEXT,CALL_RESPONSE INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const-string v1, "MmsHiddenPrefProvider"

    const-string v2, "MmsHiddenPrefProvider.onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    #calls: Lcom/android/providers/telephony/LgeMmsHiddenPrefProvider;->defaultInsertDB(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/providers/telephony/LgeMmsHiddenPrefProvider;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MmsHiddenPrefProvider"

    const-string v2, "MmsHiddenPrefProvider.onCreate DB Command Execution ERROR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "MmsHiddenPrefProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 75
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS mmshiddenpref;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/LgeMmsHiddenPrefProvider$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MmsHiddenPrefProvider"

    const-string v2, "MmsHiddenPrefProvider.onUpgrade DB Command Execution ERROR!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "MmsHiddenPrefProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
