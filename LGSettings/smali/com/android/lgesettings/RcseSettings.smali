.class public Lcom/android/lgesettings/RcseSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "RcseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static IMSI:Ljava/lang/String;

.field private static KEY_NAME:Ljava/lang/String;

.field private static PREFERENCE_NAME:Ljava/lang/String;


# instance fields
.field private Dialogvalue:Z

.field private bChecked:Z

.field private bRcs_e_roaming_in_DB:Z

.field private bRcs_e_service_in_DB:Z

.field private checkdialogvalue:I

.field private checkmulticlientvalue:Z

.field private handler:Landroid/os/Handler;

.field private hasIccCard:Z

.field private mChatSettings:Landroid/preference/PreferenceScreen;

.field private mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxService:Landroid/preference/CheckBoxPreference;

.field private parent:Landroid/preference/PreferenceScreen;

.field private sp:Landroid/content/SharedPreferences;

.field private sp_other:Landroid/content/SharedPreferences;

.field private sp_our:Landroid/content/SharedPreferences;

.field private temp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    .line 66
    const-string v0, "gsma.joyn.preferences"

    sput-object v0, Lcom/android/lgesettings/RcseSettings;->PREFERENCE_NAME:Ljava/lang/String;

    .line 67
    const-string v0, "gsma.joyn.enabled"

    sput-object v0, Lcom/android/lgesettings/RcseSettings;->KEY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 54
    iput-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->hasIccCard:Z

    .line 56
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    .line 57
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    .line 58
    iput-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_service_in_DB:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_roaming_in_DB:Z

    .line 60
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    .line 61
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->sp:Landroid/content/SharedPreferences;

    .line 62
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->sp_our:Landroid/content/SharedPreferences;

    .line 63
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->sp_other:Landroid/content/SharedPreferences;

    .line 65
    iput-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->bChecked:Z

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/RcseSettings;->checkdialogvalue:I

    .line 69
    iput-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->checkmulticlientvalue:Z

    .line 70
    iput-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->Dialogvalue:Z

    .line 71
    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/lgesettings/RcseSettings$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/RcseSettings$1;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/RcseSettings;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/RcseSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/RcseSettings;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/RcseSettings;->writeDB(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/RcseSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkAgreement()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 488
    const/4 v6, 0x0

    .line 489
    .local v6, mAgreement:Z
    const/4 v7, 0x0

    .line 490
    .local v7, mCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 492
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 495
    if-eqz v7, :cond_0

    .line 499
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const-string v1, "is_accept"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_3

    move v6, v8

    .line 506
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 507
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_2
    :goto_1
    return v6

    .line 500
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v1

    .line 506
    if-eqz v7, :cond_2

    .line 507
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 506
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 507
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private getJoynEnabled(Ljava/lang/String;)Z
    .locals 13
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 530
    const/4 v7, 0x0

    .line 531
    .local v7, result:Z
    const/4 v2, 0x0

    .line 533
    .local v2, filePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/shared_prefs/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/lgesettings/RcseSettings;->PREFERENCE_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 537
    :cond_0
    const-string v10, "joynSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filePath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Not exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v9

    .line 541
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 542
    .local v6, parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 543
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 544
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 545
    .local v4, parseEvent:I
    :goto_1
    const/4 v9, 0x1

    if-eq v4, v9, :cond_2

    .line 546
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    .line 547
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, name:Ljava/lang/String;
    sget-object v9, Lcom/android/lgesettings/RcseSettings;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 549
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 550
    .local v8, value:Ljava/lang/String;
    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 551
    const/4 v7, 0x1

    .end local v1           #file:Ljava/io/File;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parseEvent:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8           #value:Ljava/lang/String;
    :cond_2
    :goto_2
    move v9, v7

    .line 561
    goto :goto_0

    .line 556
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #parseEvent:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 558
    .end local v1           #file:Ljava/io/File;
    .end local v4           #parseEvent:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private init_UI()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 146
    const/4 v6, 0x0

    .line 147
    .local v6, mCursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 149
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    if-eqz v6, :cond_0

    .line 156
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const-string v1, "rcs_e_service"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v1, "rcs_e_service"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_4

    move v1, v7

    :goto_0
    iput-boolean v1, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_service_in_DB:Z

    .line 159
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_service_in_DB:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/android/lgesettings/RcseSettings;->hasIccCard:Z

    if-nez v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 181
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 189
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_9

    .line 190
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 199
    :goto_4
    return-void

    :cond_4
    move v1, v8

    .line 158
    goto :goto_0

    .line 164
    :cond_5
    :try_start_1
    const-string v1, "rcs_e_roaming"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v1, "rcs_e_roaming"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_6

    move v1, v7

    :goto_5
    iput-boolean v1, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_roaming_in_DB:Z

    .line 166
    const-string v1, "JJJJJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_roaming_in_DB:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/lgesettings/RcseSettings;->bRcs_e_roaming_in_DB:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 170
    :catch_0
    move-exception v1

    .line 173
    if-eqz v6, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    move v1, v8

    .line 165
    goto :goto_5

    .line 173
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3

    .line 194
    :cond_9
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method private rcs_e_attention_dialog()V
    .locals 4

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08090d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v2, 0x7f08090e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 382
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 383
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 384
    const v2, 0x1040013

    new-instance v3, Lcom/android/lgesettings/RcseSettings$5;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/RcseSettings$5;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    const v2, 0x1040009

    new-instance v3, Lcom/android/lgesettings/RcseSettings$6;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/RcseSettings$6;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    new-instance v2, Lcom/android/lgesettings/RcseSettings$7;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RcseSettings$7;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 423
    return-void
.end method

.method private rcs_e_multiclient_dialog()V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080905

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 325
    const v1, 0x7f080917

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 326
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 328
    const v1, 0x1040013

    new-instance v2, Lcom/android/lgesettings/RcseSettings$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RcseSettings$2;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v1, 0x1040009

    new-instance v2, Lcom/android/lgesettings/RcseSettings$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RcseSettings$3;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    new-instance v1, Lcom/android/lgesettings/RcseSettings$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/RcseSettings$4;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 373
    return-void
.end method

.method private rcs_e_roaming_dialog()V
    .locals 3

    .prologue
    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08090d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 429
    const v1, 0x7f08090f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 432
    const v1, 0x1040013

    new-instance v2, Lcom/android/lgesettings/RcseSettings$8;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RcseSettings$8;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    const v1, 0x1040009

    new-instance v2, Lcom/android/lgesettings/RcseSettings$9;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/RcseSettings$9;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    new-instance v1, Lcom/android/lgesettings/RcseSettings$10;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/RcseSettings$10;-><init>(Lcom/android/lgesettings/RcseSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 463
    return-void
.end method

.method private readIMSI()Z
    .locals 5

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, result:Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/RcseSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 469
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    .line 471
    sget-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 472
    :cond_0
    const-string v2, "450000000000000"

    sput-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    .line 484
    :goto_0
    return v1

    .line 474
    :cond_1
    sget-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    goto :goto_0
.end method

.method private writeDB(Ljava/lang/String;I)V
    .locals 7
    .parameter "string"
    .parameter "value"

    .prologue
    .line 272
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v3, row:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.lge.ims.provisioning/settings/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/lgesettings/RcseSettings;->IMSI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    const-string v4, "com.lge.ims.action.SETTINGS_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkMultiClient()V
    .locals 8

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 567
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 569
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 570
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 573
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "gsma.joyn.client"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    const-string v5, "joynSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "joyn package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 578
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/RcseSettings;->getJoynEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 580
    .local v1, enabled:Z
    const-string v5, "joynSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "joyn package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "gsma.joyn.settings.activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 583
    const-string v5, "joynSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intentinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "gsma.joyn.settings.activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/RcseSettings;->temp:Ljava/lang/String;

    .line 586
    :cond_1
    if-eqz v1, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->rcs_e_multiclient_dialog()V

    .line 595
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #enabled:Z
    :cond_2
    return-void
.end method

.method public editPref()V
    .locals 4

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->sp_our:Landroid/content/SharedPreferences;

    .line 316
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/RcseSettings;->PREFERENCE_NAME:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/RcseSettings;->sp_our:Landroid/content/SharedPreferences;

    .line 317
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->sp_our:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/lgesettings/RcseSettings;->KEY_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 318
    const-string v1, "joynSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckBoxService.isChecked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v1, "joynSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 516
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 517
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->checkAgreement()Z

    move-result v0

    .line 519
    .local v0, mAgreement:Z
    packed-switch p1, :pswitch_data_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 521
    :pswitch_0
    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->finish()V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v7, 0x7f040123

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/RcseSettings;->addPreferencesFromResource(I)V

    .line 94
    const-string v7, "rcse_settings"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/lgesettings/RcseSettings;->parent:Landroid/preference/PreferenceScreen;

    .line 95
    const-string v7, "rcs_e_service"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    .line 96
    const-string v7, "rcs_e_roaming"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v7, "rcs_e_chat_settings"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    .line 98
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.lge.ims.ac.AC_NOTICELIST_NUMS_REQUEST"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, itNoticeNum:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.lge.ims.ac.AC_NOTICELIST_REQUEST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v3, itNoticeList:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/lgesettings/RcseSettings;->hasIccCard:Z

    .line 105
    const-string v7, "JJJJJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v9, p0, Lcom/android/lgesettings/RcseSettings;->hasIccCard:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->readIMSI()Z

    .line 108
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f02021d

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, act:Landroid/app/Activity;
    const-string v7, "container"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/RcseSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 113
    .local v6, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v7, "rcs_e_terms"

    invoke-static {v0, v6, v7, v10}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 115
    const-string v7, "rcs_e_privacy"

    invoke-static {v0, v6, v7, v10}, Lcom/android/lgesettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 117
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->checkAgreement()Z

    move-result v7

    if-nez v7, :cond_0

    .line 119
    const-string v7, "JJJJJ"

    const-string v8, "INININ"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.lge.ims.ac.AC_TERMS_REQUEST"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, itTerm:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.lge.ims.rcsstarter"

    const-string v8, "com.lge.ims.rcsstarter.ui.TermActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v7, 0x3400

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    const-string v7, "type"

    const-string v8, "starter_activity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v2, v10}, Lcom/android/lgesettings/RcseSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 128
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #itTerm:Landroid/content/Intent;
    :cond_0
    iget-object v7, p0, Lcom/android/lgesettings/RcseSettings;->parent:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    .line 129
    iget-object v7, p0, Lcom/android/lgesettings/RcseSettings;->parent:Landroid/preference/PreferenceScreen;

    const-string v8, "rcse_network"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 130
    .local v1, category:Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_1

    .line 131
    const-string v7, "rcs_e_roaming"

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    .end local v1           #category:Landroid/preference/PreferenceCategory;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/lgesettings/RcseSettings;->handler:Landroid/os/Handler;

    const/4 v8, 0x0

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    return-void

    .line 135
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/RcseSettings;->parent:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    .line 136
    iget-object v7, p0, Lcom/android/lgesettings/RcseSettings;->parent:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/lgesettings/RcseSettings;->parent:Landroid/preference/PreferenceScreen;

    const-string v9, "rcs_about_service"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettings;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 221
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 229
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxService:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    const-string v2, "rcs_e_service"

    invoke-direct {p0, v2, v5}, Lcom/android/lgesettings/RcseSettings;->writeDB(Ljava/lang/String;I)V

    .line 236
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 268
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->init_UI()V

    .line 269
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->rcs_e_attention_dialog()V

    .line 242
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 243
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mCheckBoxRoaming:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->rcs_e_roaming_dialog()V

    goto :goto_0

    .line 250
    :cond_3
    const-string v2, "rcs_e_roaming"

    invoke-direct {p0, v2, v6}, Lcom/android/lgesettings/RcseSettings;->writeDB(Ljava/lang/String;I)V

    goto :goto_0

    .line 253
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/RcseSettings;->mChatSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_0

    .line 256
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.rcsim.action.RICHCHAT_INTRO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.lge.ims.rcsim.fromSettings"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080916

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/RcseSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 206
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->init_UI()V

    .line 207
    invoke-direct {p0}, Lcom/android/lgesettings/RcseSettings;->checkAgreement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :cond_0
    return-void
.end method
