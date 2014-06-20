.class public Lcom/android/providers/telephony/AccountsChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsChangedBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkOldMessages(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 53
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select account from sms where account is not null and account != ? union select account from pdu where account is not null and account != ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 57
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 59
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 60
    const-string v3, "AccountsChangedBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found old messages for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " accounts."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, b:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    .end local v0           #b:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3

    .line 68
    .restart local v0       #b:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_upload_old_msg_state"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mms_upload_old_msg_accounts"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_3
    return-void
.end method

.method private static clearSyncStates(Landroid/content/Context;)V
    .locals 16
    .parameter "context"

    .prologue
    .line 111
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    .line 112
    .local v1, dbHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 115
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v10, v:Landroid/content/ContentValues;
    const-string v11, "marker"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v11, "sync_state"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v12, "source"

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v11, "sms"

    const-string v12, "deleted!=0 AND block_type<2"

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 122
    .local v7, smsDeleted:I
    const-string v11, "sms"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 124
    .local v8, smsUpdated:I
    const-string v11, "pdu"

    const-string v12, "(deleted!=0 OR need_download!=0) AND block_type<2"

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, mmsDeleted:I
    const-string v11, "pdu"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 127
    .local v3, mmsUpdated:I
    const-string v11, "private_addresses"

    const-string v12, "deleted!=0"

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, privateAddrDeleted:I
    const-string v11, "private_addresses"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 130
    .local v5, privateAddrUpdated:I
    const-string v11, "threads"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 132
    .local v9, threadsUpdated:I
    const-string v11, "sim_cards"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 134
    .local v6, simCardsDeleted:I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 135
    const-string v11, "AccountsChangedBroadcastReceiver"

    const-string v12, "Xiaomi account logged off. %d sim cards deleted, %d sms deleted, %d sms updated, %d mms deleted, %d mms updated, %d private addr deleted, %d private addr updated and %d threads updated"

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    return-void

    .line 143
    .end local v2           #mmsDeleted:I
    .end local v3           #mmsUpdated:I
    .end local v4           #privateAddrDeleted:I
    .end local v5           #privateAddrUpdated:I
    .end local v6           #simCardsDeleted:I
    .end local v7           #smsDeleted:I
    .end local v8           #smsUpdated:I
    .end local v9           #threadsUpdated:I
    .end local v10           #v:Landroid/content/ContentValues;
    :catchall_0
    move-exception v11

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
.end method

.method private static removeEverything(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v1

    .line 85
    .local v1, dbHelper:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 88
    :try_start_0
    const-string v2, "DELETE FROM canonical_addresses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v2, "DELETE FROM threads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v2, "DELETE FROM pending_msgs"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v2, "DELETE FROM sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v2, "DELETE FROM raw"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v2, "DELETE FROM attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v2, "DELETE FROM threads"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v2, "DELETE FROM sr_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v2, "DELETE FROM pdu;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    const-string v2, "DELETE FROM addr;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v2, "DELETE FROM part;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v2, "DELETE FROM rate;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v2, "DELETE FROM drm;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v2, "DELETE FROM sim_cards;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v2, "DELETE FROM private_addresses;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    const-string v2, "DELETE FROM blocked_threads;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    const-string v4, "extra_bundle"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 23
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "extra_update_type"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 24
    .local v2, type:I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 25
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->clearWildMsgState(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->clearOldMsgState(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->clearCommonMarkers(Landroid/content/Context;)V

    .line 29
    const-string v4, "extra_wipe_data"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 30
    .local v3, wipeData:Z
    if-eqz v3, :cond_1

    .line 31
    const-string v4, "AccountsChangedBroadcastReceiver"

    const-string v5, "Xiaomi account removed. Wipe all message data."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1}, Lcom/android/providers/telephony/AccountsChangedBroadcastReceiver;->removeEverything(Landroid/content/Context;)V

    .line 37
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsUtils;->setXiaomiAccountName(Ljava/lang/String;)V

    .line 48
    .end local v3           #wipeData:Z
    :cond_0
    :goto_1
    return-void

    .line 34
    .restart local v3       #wipeData:Z
    :cond_1
    const-string v4, "AccountsChangedBroadcastReceiver"

    const-string v5, "Xiaomi account removed. Clear all the sync states."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1}, Lcom/android/providers/telephony/AccountsChangedBroadcastReceiver;->clearSyncStates(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    .end local v3           #wipeData:Z
    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 39
    const-string v4, "AccountsChangedBroadcastReceiver"

    const-string v5, "Xiaomi account added."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/android/providers/telephony/MmsSmsUtils;->clearWildMsgState(Landroid/content/Context;)V

    .line 43
    const-string v4, "extra_account"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 44
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsUtils;->setXiaomiAccountName(Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/AccountsChangedBroadcastReceiver;->checkOldMessages(Landroid/content/Context;Landroid/accounts/Account;)V

    goto :goto_1
.end method
