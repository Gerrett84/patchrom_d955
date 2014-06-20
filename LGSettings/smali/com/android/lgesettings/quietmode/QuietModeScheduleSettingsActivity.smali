.class public Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "QuietModeScheduleSettingsActivity.java"


# static fields
.field private static config:Landroid/content/res/Configuration;


# instance fields
.field private donotshow:Landroid/widget/CheckBox;

.field private isScheduledChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

.field private mScheduledSwitch:Landroid/widget/Switch;

.field private mTempDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    .line 382
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$6;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private ShowWarningDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 311
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 312
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->config:Landroid/content/res/Configuration;

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, dialogView:Landroid/view/View;
    iput-object v7, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    .line 316
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-nez v4, :cond_0

    .line 317
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 318
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f080bfa

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v6, 0x1010355

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 320
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    invoke-direct {p0, v5}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->setDBNotiShow(Z)V

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 326
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040119

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 328
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 329
    const v4, 0x7f0a00e8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->donotshow:Landroid/widget/CheckBox;

    .line 331
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    const v4, 0x7f0a0242

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 333
    .local v2, mDialogImage:Landroid/widget/ImageView;
    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->config:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0203b4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    .end local v2           #mDialogImage:Landroid/widget/ImageView;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->donotshow:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getDBNotiShow()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->donotshow:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$3;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$4;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$4;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v5, 0x7f08059d

    new-instance v6, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$5;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$5;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 378
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    .line 380
    return-void

    .line 335
    .restart local v2       #mDialogImage:Landroid/widget/ImageView;
    :cond_2
    sget-object v4, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->config:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0203b5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 339
    .end local v2           #mDialogImage:Landroid/widget/ImageView;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getDBNotiShow()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDayPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->ShowWarningDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->donotshow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->setDBNotiShow(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method private getDBNotiShow()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_mode_noti_on_do_not_show"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 399
    :goto_0
    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_mode_noti_on_do_not_show"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private save()V
    .locals 2

    .prologue
    .line 274
    const-string v0, "QuietModeScheduleSettingsActivity"

    const-string v1, "save() - registerAlarm() start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->registerAlarmEx()V

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->updateTimeSetingForSchedule()Z

    .line 277
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->updateNotification()V

    .line 278
    return-void
.end method

.method private setDBNotiShow(Z)V
    .locals 3
    .parameter "_state"

    .prologue
    const/4 v2, 0x1

    .line 404
    if-ne v2, p1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_noti_on_do_not_show"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_noti_on_do_not_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 281
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endNotification()V

    .line 283
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->startNotification()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-ne v1, v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->doQuietModeService(Z)V

    goto :goto_0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isQuietModeState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isSilentState()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->endNotification()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 421
    const-string v0, "QuietModeScheduleSettingsActivity"

    const-string v1, "show.cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 424
    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    .line 426
    :cond_0
    iput-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 428
    :cond_1
    return-void
.end method

.method public menuSetEnabled(Z)V
    .locals 1
    .parameter "_state"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    invoke-virtual {v0, p1}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->setEnabled(Z)V

    .line 417
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->save()V

    .line 222
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->menuSetEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    .line 227
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->donotshow:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getDBNotiShow()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->ShowWarningDialog()V

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 122
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 123
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 124
    const v3, 0x7f0201fb

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 125
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const v3, 0x7f080e21

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 131
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mContext:Landroid/content/Context;

    .line 132
    const v3, 0x7f060047

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->addPreferencesFromResource(I)V

    .line 137
    const-string v3, "quiet_mode_time"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    .line 138
    const-string v3, "quiet_mode_day"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    .line 140
    new-instance v3, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 144
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    .line 146
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    .line 148
    iget-boolean v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->menuSetEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 150
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 152
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    iget-boolean v4, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 185
    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x6400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.quietmode.QuietModeMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->finish()V

    .line 304
    const/4 v1, 0x1

    .line 306
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 236
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->cancelDialog()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->onPause()V

    .line 240
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->onPause()V

    .line 241
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->save()V

    .line 242
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->isScheduledChecked:Z

    .line 201
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->menuSetEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeTimePreference:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->onResume(Lcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 204
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeDayPreference:Lcom/android/lgesettings/quietmode/QuietModeDayPreference;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeDayPreference;->onResume(Lcom/android/lgesettings/quietmode/QuietModeInfo;)V

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "lge.settings.QMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, quietModefilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 209
    const-string v1, "QuietModeScheduleSettingsActivity"

    const-string v2, "save() - showing dialog - mScheduledTime is checked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 216
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->isScheduledTimeMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, -0x2

    .line 247
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 251
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mScheduledSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 255
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->mTempDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->cancelDialog()V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 265
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeScheduleSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 266
    return-void
.end method
