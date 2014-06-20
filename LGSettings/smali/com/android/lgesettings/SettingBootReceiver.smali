.class public Lcom/android/lgesettings/SettingBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final ERRC_APPS:[Ljava/lang/String;


# instance fields
.field private final BOOT_COMPLETE:I

.field private final ERRC_REMOVED:I

.field private final SYSTEM_READY:I

.field private final UNINSTALL_COMPLETE:I

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.lge.appwidget.settings.powercontrol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.lge.appwidget.todayplus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.lge.sizechangable.photoframe"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->BOOT_COMPLETE:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->UNINSTALL_COMPLETE:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->SYSTEM_READY:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_REMOVED:I

    .line 47
    new-instance v0, Lcom/android/lgesettings/SettingBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/SettingBootReceiver$1;-><init>(Lcom/android/lgesettings/SettingBootReceiver;)V

    iput-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;

    .line 502
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/SettingBootReceiver;->checkERRC()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/SettingBootReceiver;->setStyle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/SettingBootReceiver;->changeAccountActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/SettingBootReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/lgesettings/SettingBootReceiver;->showDataWarningPopupTELCEL()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_APPS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/SettingBootReceiver;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private atntDefaultStyleSet()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setting_style_atnt"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {v0}, Lcom/lge/provider/SettingsEx$SettingNotFoundException;->printStackTrace()V

    .line 320
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "setting_style_atnt"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_style"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private changeAccountActivity()V
    .locals 13

    .prologue
    .line 156
    iget-object v10, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 157
    .local v6, mAccountPm:Landroid/content/pm/PackageManager;
    const-string v10, "SettingBootReceiver"

    const-string v11, "setAccountMenu()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    const-string v10, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, accountFilter1:Landroid/content/IntentFilter;
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 161
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.settings.SYNC_SETTINGS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v5, intent1:Landroid/content/Intent;
    const v10, 0x10040

    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 165
    .local v8, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 166
    .local v0, N:I
    new-array v9, v0, [Landroid/content/ComponentName;

    .line 167
    .local v9, set:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 168
    .local v3, bestMatch:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 169
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v7, r:Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v9, v4

    .line 171
    iget v10, v7, Landroid/content/pm/ResolveInfo;->match:I

    if-le v10, v3, :cond_0

    .line 172
    iget v3, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 168
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    .end local v7           #r:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x0

    .line 182
    .local v2, accountMenu:Landroid/content/ComponentName;
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 183
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #accountMenu:Landroid/content/ComponentName;
    const-string v10, "com.android.lgesettings"

    const-string v11, "com.android.lgesettings.accounts.SyncSettingsActivity"

    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .restart local v2       #accountMenu:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v6, v1, v3, v9, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 188
    return-void

    .line 185
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #accountMenu:Landroid/content/ComponentName;
    const-string v10, "com.android.lgesettings"

    const-string v11, "com.android.lgesettings.Settings$AccountsGroupSettingsActivity"

    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #accountMenu:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private changeAccountActivity(II)V
    .locals 7
    .parameter "match"
    .parameter "style"

    .prologue
    .line 277
    const-string v3, "SettingBootReceiver"

    const-string v4, "setAccountMenu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, accountFilter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 281
    const/4 v3, 0x2

    new-array v2, v3, [Landroid/content/ComponentName;

    .line 282
    .local v2, account_set:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.accounts.SyncSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 283
    const/4 v3, 0x1

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.Settings$AccountsGroupSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, accountMenu:Landroid/content/ComponentName;
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #accountMenu:Landroid/content/ComponentName;
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.accounts.SyncSettingsActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .restart local v1       #accountMenu:Landroid/content/ComponentName;
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 292
    return-void

    .line 289
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #accountMenu:Landroid/content/ComponentName;
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.Settings$AccountsGroupSettingsActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #accountMenu:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private changeAirplanePreferActivity(II)V
    .locals 7
    .parameter "match"
    .parameter "style"

    .prologue
    .line 261
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, airplaneFilter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 265
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/content/ComponentName;

    .line 266
    .local v1, airplane_set:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lge.settings.easy"

    const-string v6, "com.lge.settings.easy.EasySettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 267
    const/4 v3, 0x1

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, list_view_airplane:Landroid/content/ComponentName;
    if-nez p2, :cond_0

    .line 271
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #list_view_airplane:Landroid/content/ComponentName;
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .restart local v2       #list_view_airplane:Landroid/content/ComponentName;
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #list_view_airplane:Landroid/content/ComponentName;
    const-string v3, "com.lge.settings.easy"

    const-string v4, "com.lge.settings.easy.EasySettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #list_view_airplane:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private changeDisplayPreferActivity(II)V
    .locals 8
    .parameter "match"
    .parameter "style"

    .prologue
    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, displayFilter1:Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.android.lgesettings.DISPLAY_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    .local v1, displayFilter2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 223
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x2

    new-array v2, v4, [Landroid/content/ComponentName;

    .line 226
    .local v2, display_set:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.settings.easy"

    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 227
    const/4 v4, 0x1

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.lgesettings"

    const-string v7, "com.android.lgesettings.Settings$DisplaySettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, list_view_display:Landroid/content/ComponentName;
    if-nez p2, :cond_0

    .line 231
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #list_view_display:Landroid/content/ComponentName;
    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$DisplaySettingsActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .restart local v3       #list_view_display:Landroid/content/ComponentName;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 236
    iget-object v4, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 238
    return-void

    .line 233
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    .end local v3           #list_view_display:Landroid/content/ComponentName;
    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #list_view_display:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private changeSoundPreferActivity(II)V
    .locals 8
    .parameter "match"
    .parameter "style"

    .prologue
    .line 241
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.settings.SOUND_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, soundFilter1:Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, soundFilter2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 245
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 247
    const/4 v4, 0x2

    new-array v3, v4, [Landroid/content/ComponentName;

    .line 248
    .local v3, sound_set:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.settings.easy"

    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 249
    const/4 v4, 0x1

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.lgesettings"

    const-string v7, "com.android.lgesettings.Settings$SoundSettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, list_view_sound:Landroid/content/ComponentName;
    if-nez p2, :cond_0

    .line 253
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #list_view_sound:Landroid/content/ComponentName;
    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$SoundSettingsActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .restart local v0       #list_view_sound:Landroid/content/ComponentName;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, p1, v3, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 257
    iget-object v4, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, p1, v3, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 258
    return-void

    .line 255
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #list_view_sound:Landroid/content/ComponentName;
    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #list_view_sound:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private checkERRC()V
    .locals 7

    .prologue
    .line 464
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_APPS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 467
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_APPS:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 472
    .local v3, pi:Landroid/content/pm/PackageInfo;
    new-instance v2, Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;-><init>(Lcom/android/lgesettings/SettingBootReceiver;)V

    .line 473
    .local v2, observer:Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;
    iget-object v4, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    sget-object v5, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_APPS:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v2           #observer:Lcom/android/lgesettings/SettingBootReceiver$PackageDeleteObserver;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SettingBootReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/lgesettings/SettingBootReceiver;->ERRC_APPS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not installed.(Successfully Removed)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 479
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private setStyle()V
    .locals 5

    .prologue
    .line 296
    const-string v2, "SettingBootReceiver"

    const-string v3, "setStyle()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    :goto_0
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 301
    .local v0, setting_style_default_value:I
    const-string v2, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const/4 v0, 0x1

    .line 303
    invoke-direct {p0}, Lcom/android/lgesettings/SettingBootReceiver;->atntDefaultStyleSet()V

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_style"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, style:I
    iget-object v2, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    .line 308
    const-string v2, "SettingBootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingStyle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, v1}, Lcom/android/lgesettings/SettingBootReceiver;->switchStyle(I)V

    goto :goto_0
.end method

.method private showDataWarningPopupTELCEL()V
    .locals 6

    .prologue
    const/high16 v5, 0x1000

    .line 514
    iget-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_again_tcl_warn"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 516
    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    const-string v2, "sys.allautotest.run"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    const-string v3, "TCL"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const-string v0, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    const-string v1, "com.lge.intent.DATA_CONSUME_WARNING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/lgesettings/data/DataWarningDialogTCL;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 525
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    const-string v1, "com.lge.intent.DATA_CONSUME_WARNING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/lgesettings/data/DataWarningDialogTCL;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 536
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 543
    :cond_2
    const-string v0, "SettingBootReceiver"

    const-string v1, "showDataWarningPopupTELCEL not popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchStyle(I)V
    .locals 12
    .parameter "style"

    .prologue
    .line 191
    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 194
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v4, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    const v9, 0x10040

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 198
    .local v6, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 199
    .local v0, N:I
    new-array v7, v0, [Landroid/content/ComponentName;

    .line 200
    .local v7, set:[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 201
    .local v1, bestMatch:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 202
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 203
    .local v5, r:Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v3

    .line 204
    iget v8, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v1, :cond_0

    .line 205
    iget v1, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 201
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v5           #r:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez p1, :cond_2

    .line 208
    iget-object v8, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.android.lgesettings"

    const-string v11, "com.android.lgesettings.Settings"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2, v1, v7, v9}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 212
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/SettingBootReceiver;->changeDisplayPreferActivity(II)V

    .line 213
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/SettingBootReceiver;->changeSoundPreferActivity(II)V

    .line 214
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/SettingBootReceiver;->changeAirplanePreferActivity(II)V

    .line 215
    invoke-direct {p0, v1, p1}, Lcom/android/lgesettings/SettingBootReceiver;->changeAccountActivity(II)V

    .line 216
    return-void

    .line 210
    :cond_2
    iget-object v8, p0, Lcom/android/lgesettings/SettingBootReceiver;->mPm:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.lge.settings.easy"

    const-string v11, "com.lge.settings.easy.EasySettings"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2, v1, v7, v9}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    const-string v2, "SettingBootReceiver"

    const-string v3, "onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iput-object p1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    .line 99
    const-string v2, "SettingBootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Boot Completed intent received, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Lcom/android/lgesettings/SettingBootReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingBootReceiver$2;-><init>(Lcom/android/lgesettings/SettingBootReceiver;)V

    .line 140
    .local v1, doThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    .end local v1           #doThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v2, "com.lge.intent.action.SYSTEM_READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iput-object p1, p0, Lcom/android/lgesettings/SettingBootReceiver;->mContext:Landroid/content/Context;

    .line 143
    const-string v2, "SettingBootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System Ready intent received, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v1, Lcom/android/lgesettings/SettingBootReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingBootReceiver$3;-><init>(Lcom/android/lgesettings/SettingBootReceiver;)V

    .line 152
    .restart local v1       #doThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
