.class public Lcom/lguplus/ho_client_impl/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;,
        Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;,
        Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;
    }
.end annotation


# static fields
.field public static final ANDSF_URI:Landroid/net/Uri;

.field public static HO_URI:Landroid/net/Uri;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field pc:Landroid/preference/PreferenceCategory;

.field pf:Landroid/preference/PreferenceFragment;

.field switchPrefEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://com.lguplus.ho_client_impl.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lguplus/ho_client_impl/Settings;->HO_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "content://com.lguplus.andsf_client_impl.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lguplus/ho_client_impl/Settings;->ANDSF_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lcom/lguplus/ho_client_impl/Settings$1;

    invoke-direct {v0, p0}, Lcom/lguplus/ho_client_impl/Settings$1;-><init>(Lcom/lguplus/ho_client_impl/Settings;)V

    iput-object v0, p0, Lcom/lguplus/ho_client_impl/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lguplus/ho_client_impl/Settings;->switchPrefEnabled:Z

    .line 382
    new-instance v0, Lcom/lguplus/ho_client_impl/Settings$2;

    invoke-direct {v0, p0}, Lcom/lguplus/ho_client_impl/Settings$2;-><init>(Lcom/lguplus/ho_client_impl/Settings;)V

    iput-object v0, p0, Lcom/lguplus/ho_client_impl/Settings;->mHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 6
    .parameter "pf_"

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v4, Lcom/lguplus/ho_client_impl/Settings$1;

    invoke-direct {v4, p0}, Lcom/lguplus/ho_client_impl/Settings$1;-><init>(Lcom/lguplus/ho_client_impl/Settings;)V

    iput-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lguplus/ho_client_impl/Settings;->switchPrefEnabled:Z

    .line 382
    new-instance v4, Lcom/lguplus/ho_client_impl/Settings$2;

    invoke-direct {v4, p0}, Lcom/lguplus/ho_client_impl/Settings$2;-><init>(Lcom/lguplus/ho_client_impl/Settings;)V

    iput-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->mHandler:Landroid/os/Handler;

    .line 231
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    .line 233
    :try_start_0
    iget-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, context:Landroid/content/Context;
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    .line 235
    const-string v4, "lgupho_category"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v2, iFilter:Landroid/content/IntentFilter;
    const-string v4, "com.lguplus.ho_client_impl.action.nswo_switch_is_ready_to_enabled_or_disabled"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/lguplus/ho_client_impl/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #iFilter:Landroid/content/IntentFilter;
    .end local v3           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settings, Settings()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAndsfBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 101
    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/lguplus/ho_client_impl/Settings;->getAndsfString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static getAndsfString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 90
    const/4 v6, 0x0

    .line 92
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lguplus/ho_client_impl/Settings;->ANDSF_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 95
    .local v7, v:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 97
    .end local v7           #v:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    :goto_1
    return-object v7

    .restart local v7       #v:Ljava/lang/String;
    :cond_1
    move-object v7, p2

    .line 95
    goto :goto_0

    .line 97
    .end local v7           #v:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, p2

    .line 98
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected static getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "c"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 80
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lguplus/ho_client_impl/Settings;->HO_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 83
    .local v7, v:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 85
    .end local v7           #v:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_0
    :goto_1
    return-object v7

    .restart local v7       #v:Ljava/lang/String;
    :cond_1
    move-object v7, p2

    .line 83
    goto :goto_0

    .line 85
    .end local v7           #v:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, p2

    .line 86
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #ret:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    :try_start_0
    const-string v0, "lgupho_debugMode"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/lguplus/ho_client_impl/Settings;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "lgupho_debugRoaming"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 145
    :cond_0
    const-string v0, "android.lgt.handset.HandsetProperty"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    const-string v3, "LGUP_getSystemProperty"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ROAMING_AREA"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 149
    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdvancedWifiSetting, isRoaming, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    move v0, v2

    .line 153
    goto :goto_0
.end method

.method static logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 39
    const-string v0, "lguplusHandover"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 45
    const-string v0, "lguplusHandover"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method


# virtual methods
.method createMenu(Lorg/json/JSONObject;)Landroid/preference/Preference;
    .locals 10
    .parameter "menu"

    .prologue
    .line 187
    const/4 v4, 0x0

    .line 189
    .local v4, p:Landroid/preference/Preference;
    :try_start_0
    const-string v8, "type"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, type:Ljava/lang/String;
    const-string v8, "label"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v5, Landroid/preference/Preference;

    iget-object v8, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v8}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .end local v4           #p:Landroid/preference/Preference;
    .local v5, p:Landroid/preference/Preference;
    move-object v4, v5

    .line 193
    .end local v5           #p:Landroid/preference/Preference;
    .restart local v4       #p:Landroid/preference/Preference;
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 194
    const-string v8, "key"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 195
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    const-string v8, "summary"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    const-string v8, "onClick"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, onClick:Ljava/lang/String;
    const-string v8, "extraKey"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, extraKey:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 200
    const-string v8, "doStartActivity"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 201
    new-instance v8, Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;

    invoke-direct {v8, p0, v3}, Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;-><init>(Lcom/lguplus/ho_client_impl/Settings;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    :cond_1
    :goto_1
    const-string v8, "onChange"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, onChangeAction:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 207
    new-instance v8, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;

    const-string v9, "onChangeDesClass"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v2, v9, v1}, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;-><init>(Lcom/lguplus/ho_client_impl/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    :cond_2
    const-string v8, "prevKey"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, prevKey:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "prevKey"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1           #extraKey:Ljava/lang/String;
    .end local v2           #onChangeAction:Ljava/lang/String;
    .end local v3           #onClick:Ljava/lang/String;
    .end local v6           #prevKey:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v4

    .line 191
    .restart local v7       #type:Ljava/lang/String;
    :cond_4
    const-string v8, "switch"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v5, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;

    iget-object v8, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v8}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;-><init>(Landroid/content/Context;)V

    .end local v4           #p:Landroid/preference/Preference;
    .restart local v5       #p:Landroid/preference/Preference;
    move-object v4, v5

    .end local v5           #p:Landroid/preference/Preference;
    .restart local v4       #p:Landroid/preference/Preference;
    goto/16 :goto_0

    .line 192
    :cond_5
    const-string v8, "check"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v8}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .end local v4           #p:Landroid/preference/Preference;
    .restart local v5       #p:Landroid/preference/Preference;
    move-object v4, v5

    .end local v5           #p:Landroid/preference/Preference;
    .restart local v4       #p:Landroid/preference/Preference;
    goto/16 :goto_0

    .line 203
    .restart local v1       #extraKey:Ljava/lang/String;
    .restart local v3       #onClick:Ljava/lang/String;
    :cond_6
    new-instance v8, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;

    const-string v9, "onClickDesClass"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v3, v9, v1}, Lcom/lguplus/ho_client_impl/Settings$SendIntentToPkgL;-><init>(Lcom/lguplus/ho_client_impl/Settings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    .end local v1           #extraKey:Ljava/lang/String;
    .end local v3           #onClick:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "settings, createMenu, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "Settings, destroy"

    invoke-static {v0}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lguplus/ho_client_impl/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    return-void
.end method

.method public getCtn(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 157
    :try_start_0
    const-string v3, "lgupho_debugMode"

    const/4 v5, 0x0

    invoke-static {p1, v3, v5}, Lcom/lguplus/ho_client_impl/Settings;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "lgupho_debugCtn"

    const/4 v5, 0x0

    invoke-static {p1, v3, v5}, Lcom/lguplus/ho_client_impl/Settings;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, ctn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 169
    .end local v0           #ctn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdvancedWifiSetting, getCtn, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    .line 164
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, n:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 166
    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v4

    goto :goto_0

    .line 167
    :cond_2
    const-string v3, "\\+82"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v0, v2

    .line 169
    goto :goto_0
.end method

.method getPkgFromClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "clsName"

    .prologue
    .line 48
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 49
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50
    const-string v1, "com.lguplus.ho_client_impl"

    .line 52
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isCtnChanged(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "curCtn"

    .prologue
    const/4 v2, 0x1

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "lgupho_phoneCtn"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/lguplus/ho_client_impl/Settings;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, prevCtn:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCtnChanged, prevCtn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curCtn :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lgupho_phoneCtn"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1           #prevCtn:Ljava/lang/String;
    :goto_0
    return v2

    .line 179
    .restart local v1       #prevCtn:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 180
    .end local v1           #prevCtn:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdvancedWifiSetting, isCtnChanged, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lgupho_foregroundAdvancedWifiSettings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    return-void
.end method

.method sendIntentToPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "action"
    .parameter "desCls"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, i:Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/lguplus/ho_client_impl/Settings;->getPkgFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method setPreferEnabled(Lorg/json/JSONArray;Z)V
    .locals 4
    .parameter "list"
    .parameter "enabled"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :cond_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, p:Landroid/preference/Preference;
    :try_start_0
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method startPkgActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "clsName"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lguplus/ho_client_impl/Settings;->getPkgFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public sync()V
    .locals 32

    .prologue
    .line 261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lguplus/ho_client_impl/Settings;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 262
    .local v7, c:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "lgupho_foregroundAdvancedWifiSettings"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    const-string v29, "lgupandsf_andsfFeatureEnabled"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getAndsfBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v21

    .line 264
    .local v21, isAndsfFeatureEnabled:Z
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "isAndsfFeatureEnabled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 268
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v24, menus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const-string v29, "lgupho_menus"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 270
    .local v16, hoMenusString:Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 271
    new-instance v14, Lorg/json/JSONArray;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 272
    .local v14, hoMenus:Lorg/json/JSONArray;
    if-eqz v14, :cond_1

    .line 273
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 274
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->createMenu(Lorg/json/JSONObject;)Landroid/preference/Preference;

    move-result-object v25

    .line 275
    .local v25, p:Landroid/preference/Preference;
    if-eqz v25, :cond_0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 279
    .end local v14           #hoMenus:Lorg/json/JSONArray;
    .end local v17           #i:I
    .end local v25           #p:Landroid/preference/Preference;
    :cond_1
    if-eqz v21, :cond_7

    .line 280
    const-string v29, "lgupandsf_menus"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getAndsfString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, andsfMenusString:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "andsfMenusString : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 282
    if-eqz v6, :cond_7

    .line 283
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 284
    .local v4, andsfMenus:Lorg/json/JSONArray;
    if-eqz v4, :cond_7

    .line 285
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 286
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->createMenu(Lorg/json/JSONObject;)Landroid/preference/Preference;

    move-result-object v25

    .line 287
    .restart local v25       #p:Landroid/preference/Preference;
    if-eqz v25, :cond_2

    .line 288
    invoke-virtual/range {v25 .. v25}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    const-string v30, "prevKey"

    invoke-virtual/range {v29 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 289
    .local v27, prevKey:Ljava/lang/String;
    if-nez v27, :cond_3

    .line 290
    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    .end local v27           #prevKey:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 292
    .restart local v27       #prevKey:Ljava/lang/String;
    :cond_3
    const/16 v23, 0x0

    .local v23, j:I
    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 293
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/preference/Preference;

    .line 294
    .local v26, pref:Landroid/preference/Preference;
    invoke-virtual/range {v26 .. v26}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 295
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 361
    .end local v4           #andsfMenus:Lorg/json/JSONArray;
    .end local v6           #andsfMenusString:Ljava/lang/String;
    .end local v7           #c:Landroid/content/Context;
    .end local v16           #hoMenusString:Ljava/lang/String;
    .end local v17           #i:I
    .end local v21           #isAndsfFeatureEnabled:Z
    .end local v23           #j:I
    .end local v24           #menus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v25           #p:Landroid/preference/Preference;
    .end local v26           #pref:Landroid/preference/Preference;
    .end local v27           #prevKey:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 362
    .local v11, e:Ljava/lang/Exception;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "AdvancedWifiSetting, sync, "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v11           #e:Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void

    .line 296
    .restart local v4       #andsfMenus:Lorg/json/JSONArray;
    .restart local v6       #andsfMenusString:Ljava/lang/String;
    .restart local v7       #c:Landroid/content/Context;
    .restart local v16       #hoMenusString:Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v21       #isAndsfFeatureEnabled:Z
    .restart local v23       #j:I
    .restart local v24       #menus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v25       #p:Landroid/preference/Preference;
    .restart local v26       #pref:Landroid/preference/Preference;
    .restart local v27       #prevKey:Ljava/lang/String;
    :cond_5
    add-int/lit8 v29, v23, 0x1

    :try_start_1
    move-object/from16 v0, v24

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 292
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 306
    .end local v4           #andsfMenus:Lorg/json/JSONArray;
    .end local v6           #andsfMenusString:Ljava/lang/String;
    .end local v17           #i:I
    .end local v23           #j:I
    .end local v25           #p:Landroid/preference/Preference;
    .end local v26           #pref:Landroid/preference/Preference;
    .end local v27           #prevKey:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/preference/Preference;

    .line 307
    .restart local v25       #p:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 311
    .end local v25           #p:Landroid/preference/Preference;
    :cond_8
    const/4 v10, 0x0

    .line 312
    .local v10, doEnablePreference:Z
    const/4 v12, 0x0

    .line 313
    .local v12, enabled:Z
    invoke-static {v7}, Lcom/lguplus/ho_client_impl/Settings;->isRoaming(Landroid/content/Context;)Z

    move-result v22

    .line 315
    .local v22, isRoaming:Z
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "sync(), isRoaming : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 317
    if-nez v22, :cond_a

    .line 318
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/lguplus/ho_client_impl/Settings;->getCtn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, ctn:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "sync(), ctn : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 320
    if-eqz v9, :cond_a

    .line 321
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/lguplus/ho_client_impl/Settings;->isCtnChanged(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_d

    .line 324
    if-eqz v21, :cond_9

    const-string v29, "lgupandsf_doAgreeToTerms"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getAndsfBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 325
    :cond_9
    const-string v29, "lgupho_enabled"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v12

    .line 326
    const/4 v10, 0x1

    .line 340
    .end local v9           #ctn:Ljava/lang/String;
    :cond_a
    :goto_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "sync(), enabled: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lguplus/ho_client_impl/Settings;->pc:Landroid/preference/PreferenceCategory;

    move-object/from16 v29, v0

    const-string v30, "lgupho_enabled"

    invoke-virtual/range {v29 .. v30}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    check-cast v28, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;

    .line 343
    .local v28, sp:Lcom/lguplus/ho_client_impl/CustomSwitchPreference;
    if-eqz v28, :cond_b

    .line 344
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setChecked(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lguplus/ho_client_impl/Settings;->switchPrefEnabled:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    if-eqz v10, :cond_f

    const/16 v29, 0x1

    :goto_7
    invoke-virtual/range {v28 .. v29}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setEnabled(Z)V

    .line 347
    :cond_b
    const-string v29, "lgupho_menu_enable"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, hoMenusEnableString:Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 349
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    .local v13, hoMenuEnable:Lorg/json/JSONObject;
    new-instance v30, Lorg/json/JSONArray;

    const-string v29, "enableWhenAgreeToTerms"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Lcom/lguplus/ho_client_impl/Settings;->setPreferEnabled(Lorg/json/JSONArray;Z)V

    .line 351
    new-instance v30, Lorg/json/JSONArray;

    const-string v29, "enableWhenNotRoaming"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-nez v22, :cond_10

    const/16 v29, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lguplus/ho_client_impl/Settings;->setPreferEnabled(Lorg/json/JSONArray;Z)V

    .line 353
    .end local v13           #hoMenuEnable:Lorg/json/JSONObject;
    :cond_c
    if-eqz v21, :cond_4

    .line 354
    const-string v29, "lgupandsf_menu_enable"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getAndsfString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, andsfMenusEnableString:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 356
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    .local v3, andsfMenuEnable:Lorg/json/JSONObject;
    new-instance v30, Lorg/json/JSONArray;

    const-string v29, "enableWhenAgreeToTerms"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Lcom/lguplus/ho_client_impl/Settings;->setPreferEnabled(Lorg/json/JSONArray;Z)V

    .line 358
    new-instance v30, Lorg/json/JSONArray;

    const-string v29, "enableWhenNotRoaming"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-nez v22, :cond_11

    const/16 v29, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/lguplus/ho_client_impl/Settings;->setPreferEnabled(Lorg/json/JSONArray;Z)V

    goto/16 :goto_4

    .line 330
    .end local v3           #andsfMenuEnable:Lorg/json/JSONObject;
    .end local v5           #andsfMenusEnableString:Ljava/lang/String;
    .end local v15           #hoMenusEnableString:Ljava/lang/String;
    .end local v28           #sp:Lcom/lguplus/ho_client_impl/CustomSwitchPreference;
    .restart local v9       #ctn:Ljava/lang/String;
    :cond_d
    const-string v29, "sync(), ctnCahnged, init prefs"

    invoke-static/range {v29 .. v29}, Lcom/lguplus/ho_client_impl/Settings;->logd(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 332
    .local v8, cr:Landroid/content/ContentResolver;
    const-string v29, "lgupho_enabled"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const-string v29, "lgupho_action_init_ho"

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getHoString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 334
    .local v20, initNswoAction:Ljava/lang/String;
    const-string v29, "lgupandsf_action_init_andsf"

    const-string v30, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->getAndsfString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 335
    .local v19, initAndsfAction:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_e

    new-instance v29, Landroid/content/Intent;

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 336
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_a

    new-instance v29, Landroid/content/Intent;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 345
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v9           #ctn:Ljava/lang/String;
    .end local v19           #initAndsfAction:Ljava/lang/String;
    .end local v20           #initNswoAction:Ljava/lang/String;
    .restart local v28       #sp:Lcom/lguplus/ho_client_impl/CustomSwitchPreference;
    :cond_f
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 351
    .restart local v13       #hoMenuEnable:Lorg/json/JSONObject;
    .restart local v15       #hoMenusEnableString:Ljava/lang/String;
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 358
    .end local v13           #hoMenuEnable:Lorg/json/JSONObject;
    .restart local v3       #andsfMenuEnable:Lorg/json/JSONObject;
    .restart local v5       #andsfMenusEnableString:Ljava/lang/String;
    :cond_11
    const/16 v29, 0x0

    goto :goto_9
.end method
