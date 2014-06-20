.class public Lcom/android/lgesettings/SettingsCarrierLegalActivity;
.super Landroid/app/Activity;
.source "SettingsCarrierLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlert:Ljava/lang/String;

.field private mContent1:Ljava/lang/String;

.field private mContent2:Ljava/lang/String;

.field private mContent3:Ljava/lang/String;

.field private mPrivacyAlert:Landroid/app/AlertDialog;

.field private mPrivacyDetail:Landroid/app/AlertDialog;

.field private mTitle:Ljava/lang/String;

.field myDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    .line 52
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    .line 55
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mTitle:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mAlert:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent1:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent2:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent3:Ljava/lang/String;

    return-void
.end method

.method private PrivacyAlertDialog()V
    .locals 3

    .prologue
    .line 309
    const-string v0, "SettingsCarrierLegalActivity"

    const-string v1, "PrivacyAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/lgesettings/SettingsCarrierLegalActivity$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity$1;-><init>(Lcom/android/lgesettings/SettingsCarrierLegalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    .line 321
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mAlert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 324
    return-void
.end method

.method private PrivacyAlert_Detail()V
    .locals 3

    .prologue
    .line 327
    const-string v0, "SettingsCarrierLegalActivity"

    const-string v1, "PrivacyAlert_Detail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    .line 333
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 337
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/lgesettings/SettingsCarrierLegalActivity$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity$2;-><init>(Lcom/android/lgesettings/SettingsCarrierLegalActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SettingsCarrierLegalActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->PrivacyAlert_Detail()V

    return-void
.end method

.method private check_HFA_status()Z
    .locals 4

    .prologue
    .line 136
    const-string v1, "ro.sprint.hfa.flag"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, phoneActivated:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    const-string v1, "SettingsCarrierLegalActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneActivated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v1, "activationOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private check_Payload()Z
    .locals 4

    .prologue
    .line 151
    const-string v1, "ro.sprint.chameleon.flag"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, payloadReceived:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 156
    const-string v1, "SettingsCarrierLegalActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payloadReceived = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "payloadOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 161
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private create_database(Z)V
    .locals 10
    .parameter "bPayload_Data"

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 189
    .local v8, configuration:Landroid/content/res/Configuration;
    const-string v0, "legal.db"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "carrierLegal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v9

    .line 195
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table carrierLegal(ID integer primary key autoincrement,TITLE text,ALERT text,LANGUAGE text,CONTENT_1 text,CONTENT_2 text,CONTENT_3 text)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    if-eqz p1, :cond_3

    .line 199
    const-string v0, "BM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "carrierLegal"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->insert_db_item([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 202
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "carrierLegal"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->insert_db_item([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 211
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v0

    .line 205
    .restart local v9       #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "carrierLegal"

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->insert_db_item([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 208
    :cond_4
    const-string v0, "SettingsCarrierLegalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myDatabase == null or createDataBase isOpen status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private deleteDBFile(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 378
    :try_start_0
    const-string v1, "legal.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 379
    const-string v1, "legal.db-journal"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 380
    const-string v1, "SettingsCarrierLegalActivity"

    const-string v2, "deleteDBFile ok"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SettingsCarrierLegalActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDBFile failed. Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insert_db_item([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "presetStrings"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v0, cVals:Landroid/content/ContentValues;
    const-string v1, "TITLE"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "ALERT"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "LANGUAGE"

    const-string v2, "EN"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "CONTENT_1"

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "CONTENT_2"

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "CONTENT_3"

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v0           #cVals:Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private set_value_from_db(Ljava/lang/String;)Z
    .locals 13
    .parameter "db_name"

    .prologue
    const/4 v12, 0x1

    .line 236
    const-string v0, "SettingsCarrierLegalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set_value_from_db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 239
    .local v8, configuration:Landroid/content/res/Configuration;
    iget-object v0, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, language:Ljava/lang/String;
    const/4 v9, 0x0

    .line 244
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "SettingsCarrierLegalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openOrCreateDatabase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v0, "/carrier/legal.db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "carrierLegal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 258
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 261
    const-string v0, "/carrier/legal.db"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ES"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 266
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "SettingsCarrierLegalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mTitle:Ljava/lang/String;

    .line 269
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mAlert:Ljava/lang/String;

    .line 270
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent1:Ljava/lang/String;

    .line 271
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent2:Ljava/lang/String;

    .line 272
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent3:Ljava/lang/String;

    .line 274
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 287
    :catch_0
    move-exception v10

    .line 288
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SettingsCarrierLegalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openOrCreateDatabase SQLiteException e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v0, "SettingsCarrierLegalActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db_name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    const/4 v0, 0x0

    .line 295
    if-eqz v9, :cond_2

    .line 297
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 305
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_3
    :goto_2
    return v0

    .line 253
    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 295
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 297
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_5
    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_6

    .line 302
    iget-object v1, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v0

    .line 281
    :cond_7
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mTitle:Ljava/lang/String;

    .line 282
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mAlert:Ljava/lang/String;

    .line 283
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent1:Ljava/lang/String;

    .line 284
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent2:Ljava/lang/String;

    .line 285
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent3:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 295
    :cond_8
    if-eqz v9, :cond_9

    .line 297
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    .line 302
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    move v0, v12

    .line 305
    goto :goto_2
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 397
    const-string v0, "SettingsCarrierLegalActivity"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->finish()V

    .line 400
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 390
    const-string v0, "SettingsCarrierLegalActivity"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->finish()V

    .line 393
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->check_HFA_status()Z

    move-result v1

    .line 69
    .local v1, bcheck_HFA_Status:Z
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->check_Payload()Z

    move-result v2

    .line 70
    .local v2, bcheck_Payload:Z
    const/4 v0, 0x0

    .line 76
    .local v0, b_setPreloaded_Data:Z
    invoke-direct {p0, p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->deleteDBFile(Landroid/content/Context;)V

    .line 78
    const-string v3, "SettingsCarrierLegalActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bcheck_HFA_Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bcheck_Payload = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz v1, :cond_4

    .line 81
    if-eqz v2, :cond_2

    .line 82
    const-string v3, "/carrier/legal.db"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->set_value_from_db(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "success get db:/carrier/legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mAlert:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent1:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent2:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mContent3:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 129
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->PrivacyAlertDialog()V

    .line 133
    :goto_1
    return-void

    .line 85
    :cond_0
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "failed get db:/carrier/legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "If DB data is null in carrier patition brings generic DB data."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->create_database(Z)V

    .line 93
    const-string v3, "legal.db"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->set_value_from_db(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "success get db:legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    :cond_1
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "failed get db:/carrier/legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->finish()V

    goto :goto_0

    .line 102
    :cond_2
    const/4 v0, 0x1

    .line 103
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "not found /carrier/legal.db and create Legal db."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, v0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->create_database(Z)V

    .line 107
    const-string v3, "legal.db"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->set_value_from_db(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "success get db:legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_3
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "failed get db:/carrier/legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->finish()V

    goto :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->create_database(Z)V

    .line 119
    const-string v3, "legal.db"

    invoke-direct {p0, v3}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->set_value_from_db(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "success get db:legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_5
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "failed get db:/carrier/legal.db"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->finish()V

    goto/16 :goto_0

    .line 131
    :cond_6
    const-string v3, "SettingsCarrierLegalActivity"

    const-string v4, "create AlertDialog failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    const-string v0, "SettingsCarrierLegalActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 355
    invoke-direct {p0, p0}, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->deleteDBFile(Landroid/content/Context;)V

    .line 357
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 359
    iput-object v2, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyAlert:Landroid/app/AlertDialog;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 364
    iput-object v2, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->mPrivacyDetail:Landroid/app/AlertDialog;

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/lgesettings/SettingsCarrierLegalActivity;->myDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 373
    :cond_2
    return-void
.end method
