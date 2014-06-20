.class public Lcom/android/lgesettings/SettingsStyleAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsStyleAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mPm:Landroid/content/pm/PackageManager;


# instance fields
.field check_box:Z

.field donotshow:Landroid/widget/CheckBox;

.field isSavedData:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->check_box:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->isSavedData:Z

    return-void
.end method

.method private changeAirplanePreferActivity(I)V
    .locals 7
    .parameter "match"

    .prologue
    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, airplaneFilter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 209
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/content/ComponentName;

    .line 210
    .local v1, airplane_set:[Landroid/content/ComponentName;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.lge.settings.easy"

    const-string v6, "com.lge.settings.easy.EasySettings"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 211
    const/4 v3, 0x1

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.lgesettings"

    const-string v6, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 213
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lge.settings.easy"

    const-string v4, "com.lge.settings.easy.EasySettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v2, list_view_sound:Landroid/content/ComponentName;
    sget-object v3, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 215
    return-void
.end method

.method private changeDisplayPreferActivity(I)V
    .locals 8
    .parameter "match"

    .prologue
    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, displayFilter1:Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.android.lgesettings.DISPLAY_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, displayFilter2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 176
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 178
    const/4 v4, 0x2

    new-array v2, v4, [Landroid/content/ComponentName;

    .line 179
    .local v2, display_set:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.settings.easy"

    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 180
    const/4 v4, 0x1

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.lgesettings"

    const-string v7, "com.android.lgesettings.Settings$DisplaySettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 182
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v3, list_view_display:Landroid/content/ComponentName;
    sget-object v4, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 184
    sget-object v4, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 186
    return-void
.end method

.method private changeSoundPreferActivity(I)V
    .locals 8
    .parameter "match"

    .prologue
    .line 189
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.settings.SOUND_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, soundFilter1:Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.android.lgesettings.SOUND_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v2, soundFilter2:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 193
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 195
    const/4 v4, 0x2

    new-array v3, v4, [Landroid/content/ComponentName;

    .line 196
    .local v3, sound_set:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lge.settings.easy"

    const-string v7, "com.lge.settings.easy.EasySettings"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 197
    const/4 v4, 0x1

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.lgesettings"

    const-string v7, "com.android.lgesettings.Settings$SoundSettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 199
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, list_view_sound:Landroid/content/ComponentName;
    sget-object v4, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, p1, v3, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 201
    sget-object v4, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, p1, v3, v0}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 202
    return-void
.end method

.method private checkDoNotShow()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0a02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    .line 62
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_style_do_not_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_style_do_not_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040139

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0a02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    .line 101
    iget-boolean v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->isSavedData:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->check_box:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/lgesettings/SettingsStyleAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity$1;-><init>(Lcom/android/lgesettings/SettingsStyleAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mView:Landroid/view/View;

    return-object v0

    .line 106
    :cond_0
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private finishPreviousActivity()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.FINISH_MAIN_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method private switchToTab()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 136
    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 137
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 139
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, intent:Landroid/content/Intent;
    sget-object v8, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    const v9, 0x10040

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 143
    .local v6, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    .local v0, N:I
    new-array v7, v0, [Landroid/content/ComponentName;

    .line 145
    .local v7, set:[Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 146
    .local v1, bestMatch:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 147
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 148
    .local v5, r:Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v3

    .line 149
    iget v8, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v8, v1, :cond_0

    .line 150
    iget v1, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 146
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v5           #r:Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-object v8, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.lge.settings.easy"

    const-string v11, "com.lge.settings.easy.EasySettings"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2, v1, v7, v9}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 155
    invoke-direct {p0, v1}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->changeSoundPreferActivity(I)V

    .line 156
    invoke-direct {p0, v1}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->changeDisplayPreferActivity(I)V

    .line 157
    invoke-direct {p0, v1}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->changeAirplanePreferActivity(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "settings_style"

    invoke-static {v8, v9, v12}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    const/high16 v8, 0x300

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.lge.settings.easy"

    const-string v10, "com.lge.settings.easy.EasySettings"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 163
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    const-string v8, "Change_tab"

    invoke-virtual {v4, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "index"

    .prologue
    .line 31
    packed-switch p2, :pswitch_data_0

    .line 42
    :goto_0
    :pswitch_0
    return-void

    .line 33
    :pswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->checkDoNotShow()V

    .line 34
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->switchToTab()V

    .line 35
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->finishPreviousActivity()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v2, "save_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "check_box"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->check_box:Z

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->isSavedData:Z

    .line 83
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 86
    iget-object v1, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 87
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f080d04

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 88
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 89
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 91
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 93
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsStyleAlertActivity;->setupAlert()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 128
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "check_box"

    iget-object v2, p0, Lcom/android/lgesettings/SettingsStyleAlertActivity;->donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    const-string v1, "save_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
