.class public Lcom/android/lgesettings/wifi/WifiAutoControl;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "WifiAutoControl.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;


# instance fields
.field private OnOffIdentifier:Ljava/lang/String;

.field private mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

.field private mView:Landroid/view/View;

.field private mWifiAutoControl:Landroid/preference/CheckBoxPreference;

.field private mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

.field private mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

.field private mWifiOffHour:I

.field private mWifiOffMinute:I

.field private mWifiOffTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mWifiOnHour:I

.field private mWifiOnMinute:I

.field private mWifiOnTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 61
    const-string v0, "ontime"

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->OnOffIdentifier:Ljava/lang/String;

    .line 248
    new-instance v0, Lcom/android/lgesettings/wifi/WifiAutoControl$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiAutoControl$1;-><init>(Lcom/android/lgesettings/wifi/WifiAutoControl;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    .line 256
    new-instance v0, Lcom/android/lgesettings/wifi/WifiAutoControl$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiAutoControl$2;-><init>(Lcom/android/lgesettings/wifi/WifiAutoControl;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 268
    new-instance v0, Lcom/android/lgesettings/wifi/WifiAutoControl$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/wifi/WifiAutoControl$3;-><init>(Lcom/android/lgesettings/wifi/WifiAutoControl;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiAutoControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/wifi/WifiAutoControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiAutoControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/wifi/WifiAutoControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiAutoControl;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/wifi/WifiAutoControl;Landroid/preference/PreferenceScreen;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/lgesettings/wifi/WifiAutoControl;->setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/wifi/WifiAutoControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/lgesettings/wifi/WifiAutoControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/lgesettings/wifi/WifiAutoControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/wifi/WifiAutoControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/lgesettings/wifi/WifiAutoControl;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private doFinish()V
    .locals 4

    .prologue
    .line 281
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    add-int v1, v2, v3

    .line 282
    .local v1, wifiOnTime:I
    iget v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    add-int v0, v2, v3

    .line 284
    .local v0, wifiOffTime:I
    if-gez v1, :cond_0

    if-gez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doRevert()V

    .line 288
    :cond_0
    return-void
.end method

.method private doRevert()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, wifiAutoControlRegister:Lcom/android/lgesettings/wifi/WifiAutoControlRegister;
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->cancelWifiAutoAlarms()V

    .line 310
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->initWifiAutoControlConfig()V

    .line 311
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->initWifiAutoControlUi()V

    .line 312
    return-void
.end method

.method private doSave()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 291
    iget v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    add-int v2, v3, v4

    .line 292
    .local v2, wifiOnTime:I
    iget v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    add-int v1, v3, v4

    .line 294
    .local v1, wifiOffTime:I
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_control_on"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_control_off"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    new-instance v0, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;-><init>(Landroid/content/Context;)V

    .line 299
    .local v0, wifiAutoControlRegister:Lcom/android/lgesettings/wifi/WifiAutoControlRegister;
    if-le v2, v5, :cond_0

    .line 300
    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiOnAlarm(I)Z

    .line 301
    :cond_0
    if-le v1, v5, :cond_1

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiAutoControlRegister;->updateWifiOffAlarm(I)Z

    .line 303
    :cond_1
    return-void
.end method

.method private initWifiAutoControlConfig()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 315
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_control_on"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_control_off"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_control_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    return-void
.end method

.method private initWifiAutoControlUi()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 324
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_auto_control_on"

    invoke-static {v5, v6, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 326
    .local v2, wifiOnTime:I
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_auto_control_off"

    invoke-static {v5, v6, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 328
    .local v1, wifiOffTime:I
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_auto_control_enable"

    invoke-static {v5, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 330
    .local v0, enable:Z
    :goto_0
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControl:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0812fd

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    if-le v2, v7, :cond_1

    .line 334
    div-int/lit8 v5, v2, 0x3c

    iput v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    .line 335
    rem-int/lit8 v5, v2, 0x3c

    iput v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    .line 341
    :goto_1
    if-le v1, v7, :cond_2

    .line 342
    div-int/lit8 v5, v1, 0x3c

    iput v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    .line 343
    rem-int/lit8 v5, v1, 0x3c

    iput v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    .line 356
    :goto_2
    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 358
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 364
    :goto_3
    if-le v2, v7, :cond_4

    .line 365
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    iget v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    iget v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/lgesettings/wifi/WifiAutoControl;->setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V

    .line 370
    :goto_4
    if-le v1, v7, :cond_5

    .line 371
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    iget v4, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    iget v5, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/lgesettings/wifi/WifiAutoControl;->setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V

    .line 375
    :goto_5
    return-void

    .end local v0           #enable:Z
    :cond_0
    move v0, v4

    .line 328
    goto :goto_0

    .line 337
    .restart local v0       #enable:Z
    :cond_1
    iput v7, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    .line 338
    iput v7, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    goto :goto_1

    .line 345
    :cond_2
    iput v7, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    .line 346
    iput v7, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    goto :goto_2

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 361
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_3

    .line 367
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 373
    :cond_5
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V
    .locals 6
    .parameter "preference"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v2, -0x1

    .line 378
    if-le p2, v2, :cond_0

    if-le p3, v2, :cond_0

    .line 380
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v1, timeTextBuffer:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .line 384
    .local v0, isAm:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    .end local v0           #isAm:Z
    .end local v1           #timeTextBuffer:Ljava/lang/StringBuffer;
    :cond_0
    return-void

    .line 396
    .restart local v0       #isAm:Z
    .restart local v1       #timeTextBuffer:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v2, 0xc

    if-lt p2, v2, :cond_2

    .line 397
    rem-int/lit8 p2, p2, 0xc

    .line 398
    const/4 v0, 0x0

    .line 402
    :cond_2
    if-nez p2, :cond_3

    const/16 p2, 0xc

    .line 404
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 405
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    if-eqz v0, :cond_4

    .line 411
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08162f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 413
    :cond_4
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f081630

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doFinish()V

    .line 212
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->finish()V

    .line 213
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    const/4 v0, 0x2

    const v1, 0x7f08162e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "saveInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 68
    const v0, 0x7f0401a1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v2, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 70
    const v0, 0x7f06007c

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->addPreferencesFromResource(I)V

    .line 72
    const-string v0, "wifi_auto_control_on_time"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    const-string v0, "wifi_auto_control_off_time"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    .line 75
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    const-string v0, "enable_wifi_auto_control"

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControl:Landroid/preference/CheckBoxPreference;

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->initWifiAutoControlUi()V

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/wifi/WifiAutoControl;->setHasOptionsMenu(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doFinish()V

    .line 219
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroy()V

    .line 220
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doSave()V

    .line 124
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->finish()V

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doRevert()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 192
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 194
    .local v0, enable:Z
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_auto_control_enable"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    if-eqz v0, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 199
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 205
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 194
    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 18
    .parameter "preference"

    .prologue
    .line 135
    if-eqz p1, :cond_6

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 137
    .local v16, c:Ljava/util/Calendar;
    const/16 v2, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 138
    .local v4, currentHour:I
    const/16 v2, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 143
    .local v5, currentMinute:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v17, 0x1

    .line 146
    .local v17, timeFormat:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    const-string v2, "ontime"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->OnOffIdentifier:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 150
    :cond_0
    new-instance v1, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v10}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    .line 153
    .local v1, timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 154
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->show()V

    .line 165
    :goto_1
    const/4 v2, 0x1

    .line 187
    .end local v1           #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    .end local v4           #currentHour:I
    .end local v5           #currentMinute:I
    .end local v16           #c:Ljava/util/Calendar;
    .end local v17           #timeFormat:I
    :goto_2
    return v2

    .line 143
    .restart local v4       #currentHour:I
    .restart local v5       #currentMinute:I
    .restart local v16       #c:Ljava/util/Calendar;
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 157
    .restart local v17       #timeFormat:I
    :cond_2
    new-instance v1, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    move-object v6, v1

    move-object/from16 v8, p0

    invoke-direct/range {v6 .. v15}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    .line 160
    .restart local v1       #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 161
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->show()V

    goto :goto_1

    .line 166
    .end local v1           #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 167
    const-string v2, "offtime"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->OnOffIdentifier:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 170
    :cond_4
    new-instance v1, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v10}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    .line 173
    .restart local v1       #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 174
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->show()V

    .line 184
    :goto_3
    const/4 v2, 0x1

    goto :goto_2

    .line 176
    .end local v1           #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    :cond_5
    new-instance v1, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    move-object v6, v1

    move-object/from16 v8, p0

    invoke-direct/range {v6 .. v15}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    .line 179
    .restart local v1       #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 180
    invoke-virtual {v1}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->show()V

    goto :goto_3

    .line 187
    .end local v1           #timePickerDialog:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;
    .end local v4           #currentHour:I
    .end local v5           #currentMinute:I
    .end local v16           #c:Ljava/util/Calendar;
    .end local v17           #timeFormat:I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public onTimeSet(Lcom/lge/sui/widget/control/SUIDrumTimePicker;II)V
    .locals 3
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->OnOffIdentifier:Ljava/lang/String;

    const-string v1, "ontime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iput p2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    .line 236
    iput p3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOnTime:Landroid/preference/PreferenceScreen;

    iget v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnHour:I

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOnMinute:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiAutoControl;->setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V

    .line 238
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doSave()V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->OnOffIdentifier:Ljava/lang/String;

    const-string v1, "offtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iput p2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    .line 241
    iput p3, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    .line 242
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiAutoControlOffTime:Landroid/preference/PreferenceScreen;

    iget v1, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffHour:I

    iget v2, p0, Lcom/android/lgesettings/wifi/WifiAutoControl;->mWifiOffMinute:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/lgesettings/wifi/WifiAutoControl;->setSummaryWithTime(Landroid/preference/PreferenceScreen;II)V

    .line 243
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiAutoControl;->doSave()V

    goto :goto_0
.end method
