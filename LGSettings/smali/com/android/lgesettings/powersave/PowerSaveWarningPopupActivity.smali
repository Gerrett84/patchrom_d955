.class public Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerSaveWarningPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private checked:Z

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDoPowerSave:Z

.field private mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

.field private mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewSub:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private noActivation:Z

.field private pressHomeKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->checked:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->noActivation:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->pressHomeKey:Z

    .line 64
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finishDialog(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getPowerSaveModeValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Lcom/android/lgesettings/powersave/PowerSave;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mBatteryImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->noActivation:Z

    return p1
.end method

.method private checkNotiPannel()V
    .locals 2

    .prologue
    .line 167
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 168
    .local v0, statusBarService:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 169
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 264
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400e3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    const v3, 0x7f0a01e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    const v3, 0x7f0a01e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mBatteryImg:Landroid/widget/ImageView;

    .line 271
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    const v3, 0x7f0a01e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextViewSub:Landroid/widget/TextView;

    .line 273
    const-string v1, ": "

    .line 275
    .local v1, subText:Ljava/lang/String;
    const-string v2, "BR"

    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    const-string v2, "pt"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "es"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    :cond_0
    const-string v1, ""

    .line 284
    :cond_1
    const-string v2, "JP"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f081272

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_sync"

    invoke-static {v2, v3, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f081232

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_wifi"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f081206

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_bt"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08120a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_5
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v2, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 306
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_nfc"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08120e

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_6
    const-string v2, "ro.device.hapticfeedback"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, hapticfeedback:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 322
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_brightness_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f081212

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    :cond_8
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08122d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    :cond_9
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFrontTouchKeyLight()Z

    move-result v2

    if-nez v2, :cond_f

    .line 338
    :cond_a
    :goto_1
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEmotionalLED(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 339
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportHomeKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 340
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_emotional_led"

    invoke-static {v2, v3, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080db7

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    :cond_b
    :goto_2
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isOLEDModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 353
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_auto_screen_tone"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08126d

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 360
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextViewSub:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_d
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    return-object v2

    .line 317
    :cond_e
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_touch"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08122b

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 332
    :cond_f
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f081262

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 344
    :cond_10
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_emotional_led"

    invoke-static {v2, v3, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f081268

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private finishDialog(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->dismiss()V

    .line 133
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finish()V

    .line 135
    :cond_0
    return-void
.end method

.method private getPowerSaveModeValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private sendDoPowerSave()V
    .locals 4

    .prologue
    .line 367
    const-string v2, "PowerSaveWarningPopupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDoPowerSave, Power save mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    if-eqz v1, :cond_0

    const-string v1, "Start"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.lgesettings.powersave.POWERSAVE_ACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "powersave_activation"

    iget-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 371
    return-void

    .line 367
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "Stop"

    goto :goto_0

    .line 369
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    .line 225
    packed-switch p2, :pswitch_data_0

    .line 235
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    .line 236
    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->checked:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finish()V

    .line 238
    return-void

    .line 227
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    goto :goto_0

    .line 230
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->checkNotiPannel()V

    .line 141
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 142
    new-instance v3, Lcom/android/lgesettings/powersave/PowerSave;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;

    .line 144
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 145
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f081275

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 147
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 148
    .local v1, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010355

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 151
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 152
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 153
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_mode"

    const/16 v5, 0x1e

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, mode_value:I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    .line 156
    const v3, 0x7f08059e

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 160
    :goto_0
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->setupAlert()V

    .line 164
    return-void

    .line 158
    :cond_0
    const v3, 0x7f081240

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->checked:Z

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    .line 217
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 220
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 244
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    .line 245
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->checked:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finish()V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.lge.settings.POWER_SAVER_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->pressHomeKey:Z

    .line 184
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 197
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->noActivation:Z

    if-eqz v0, :cond_2

    .line 206
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->pressHomeKey:Z

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    .line 208
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    .line 209
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finish()V

    .line 211
    :cond_1
    return-void

    .line 200
    :cond_2
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->checked:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->pressHomeKey:Z

    .line 261
    return-void
.end method
