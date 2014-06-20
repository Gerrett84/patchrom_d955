.class public Lcom/android/lgesettings/TimedSilentSettings;
.super Landroid/app/Activity;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;


# instance fields
.field private day:[I

.field private desc0:Landroid/widget/TextView;

.field private dialog:Landroid/app/AlertDialog;

.field private isSilentModeChecked:Z

.field private isVibrateChecked:Z

.field private mHour:I

.field private mMinute:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

.field private mQuietTimeState_before:Z

.field private mTimePikerCancelButton:Landroid/widget/Button;

.field private mTimePikerOKButton:Landroid/widget/Button;

.field private mTimedSilentSwitch:Landroid/widget/Switch;

.field private mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

.field private position:Ljava/lang/String;

.field private repeat:Landroid/widget/TextView;

.field private schedule:Landroid/widget/TextView;

.field private schedultTo:Landroid/widget/TextView;

.field private timeEndBtn:Landroid/widget/Button;

.field private timeStartBtn:Landroid/widget/Button;

.field private toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

.field private vibrateCheckBox:Landroid/widget/CheckedTextView;

.field private vibrateGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    .line 82
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    .line 83
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mHour:I

    .line 85
    iput v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mMinute:I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    .line 346
    new-instance v0, Lcom/android/lgesettings/TimedSilentSettings$3;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TimedSilentSettings$3;-><init>(Lcom/android/lgesettings/TimedSilentSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 359
    new-instance v0, Lcom/android/lgesettings/TimedSilentSettings$4;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TimedSilentSettings$4;-><init>(Lcom/android/lgesettings/TimedSilentSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 367
    new-instance v0, Lcom/android/lgesettings/TimedSilentSettings$5;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/TimedSilentSettings$5;-><init>(Lcom/android/lgesettings/TimedSilentSettings;)V

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    return-void

    .line 82
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private OnSilentGroupClick(Z)V
    .locals 0
    .parameter "ischecked"

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    .line 340
    return-void
.end method

.method private OnVibrateGroupClick()V
    .locals 2

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    .line 343
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 344
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SetToggleButtonListener()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, days:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/TimedSilentSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TimedSilentSettings;->OnSilentGroupClick(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/TimedSilentSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/lgesettings/TimedSilentSettings;->setlayoutVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/lgesettings/TimedSilentSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/lgesettings/TimedSilentSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/TimedSilentSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mHour:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/TimedSilentSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mMinute:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/TimedSilentSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/TimedSilentSettings;->updateTime(II)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/lgesettings/TimedSilentSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/TimedSilentSettings;)Lcom/android/lgesettings/QuietTimeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/lgesettings/TimedSilentSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/lgesettings/TimedSilentSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerCancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 405
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBStartTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBStartTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBEndTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBEndTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, hour:I
    const/4 v4, 0x0

    .line 412
    .local v4, minute:I
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v3

    .line 414
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v4

    .line 421
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 422
    new-instance v0, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    iget-object v9, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    move-object v1, p0

    move-object v2, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    .line 434
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    check-cast v0, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v10

    .line 435
    .local v10, timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {v10, v8}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 440
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/lgesettings/TimedSilentSettings$6;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/TimedSilentSettings$6;-><init>(Lcom/android/lgesettings/TimedSilentSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 474
    .end local v10           #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    return-object v0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v3

    .line 418
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v4

    goto :goto_0

    .line 438
    .restart local v10       #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :cond_2
    invoke-virtual {v10, v5}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    goto :goto_1

    .line 468
    .end local v10           #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    const-string v0, "right"

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    goto :goto_2

    .line 471
    :cond_4
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    goto :goto_2
.end method

.method private getToggleDayToString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .local v2, s:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v6}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 600
    .local v3, sunBtn:Landroid/widget/ToggleButton;
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getId()I

    move-result v4

    const v5, 0x7f0a0254

    if-ne v4, v5, :cond_5

    .line 602
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_2

    .line 603
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 604
    .local v0, dayBtn:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 606
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    add-int/lit8 v5, v1, -0x1

    aput v7, v4, v5

    .line 611
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    add-int/lit8 v5, v1, -0x1

    aput v6, v4, v5

    goto :goto_1

    .line 613
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_2
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 614
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aput v7, v4, v8

    .line 618
    :goto_2
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aget v4, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 616
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aput v6, v4, v8

    goto :goto_2

    .line 621
    .end local v1           #i:I
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v9, :cond_3

    .line 622
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 624
    .restart local v0       #dayBtn:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_6

    .line 625
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 626
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aput v7, v4, v1

    .line 632
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 628
    :cond_7
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aput v6, v4, v1

    goto :goto_4
.end method

.method private initDialogTime()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 223
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 224
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTimeHour(I)V

    .line 225
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTimeMinute(I)V

    .line 227
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 228
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTimeHour(I)V

    .line 229
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTimeMinute(I)V

    .line 230
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 639
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-boolean v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setDBVibrateMode(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getToggleDayToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setDBDays(Ljava/lang/String;)V

    .line 641
    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/QuietTimeInfo;->setDBQuietTimeState(I)V

    .line 642
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBFirstStartFlag(I)V

    .line 643
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/QuietTimeInfo;->registerAlarm(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeState_before:Z

    if-ne v1, v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/QuietTimeInfo;->setSoundProfile(I)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBSaveTime(J)V

    .line 651
    return-void

    :cond_1
    move v0, v2

    .line 641
    goto :goto_0
.end method

.method private setlayoutVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 509
    const-string v0, "soosin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setlayoutVisible() isSilentModeChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v0, "soosin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setlayoutVisible() visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    if-eqz p1, :cond_0

    .line 513
    invoke-direct {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->showTextViewEnabled(Z)V

    .line 514
    invoke-direct {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->showTimeBtnEnabled(Z)V

    .line 515
    invoke-direct {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->showGroupEnabled(Z)V

    .line 516
    invoke-direct {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->showToggleDayEnabled(Z)V

    .line 525
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/lgesettings/QuietTimeInfo;->TimedSilentReceiverEnable(Landroid/content/Context;Z)V

    .line 527
    return-void

    .line 519
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/lgesettings/TimedSilentSettings;->showTextViewEnabled(Z)V

    .line 520
    invoke-direct {p0, v3}, Lcom/android/lgesettings/TimedSilentSettings;->showTimeBtnEnabled(Z)V

    .line 521
    invoke-direct {p0, v3}, Lcom/android/lgesettings/TimedSilentSettings;->showGroupEnabled(Z)V

    .line 522
    invoke-direct {p0, v3}, Lcom/android/lgesettings/TimedSilentSettings;->showToggleDayEnabled(Z)V

    goto :goto_0
.end method

.method private showGroupEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 551
    return-void
.end method

.method private showTextViewEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->schedule:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->repeat:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->schedultTo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->desc0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 534
    return-void
.end method

.method private showTimeBtnEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 547
    return-void
.end method

.method private showToggleDayChecked()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 565
    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v6, v4}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 567
    .local v3, sunBtn:Landroid/widget/ToggleButton;
    invoke-virtual {v3}, Landroid/widget/ToggleButton;->getId()I

    move-result v6

    const v7, 0x7f0a0254

    if-ne v6, v7, :cond_3

    .line 568
    const-string v6, "soosin"

    const-string v7, "aaaa"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aget v6, v6, v8

    if-nez v6, :cond_1

    move v2, v4

    .line 570
    .local v2, isChecked:Z
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_6

    .line 574
    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 575
    .local v0, dayBtn:Landroid/widget/ToggleButton;
    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aget v6, v6, v1

    if-nez v6, :cond_2

    move v2, v4

    .line 576
    :goto_2
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    .end local v1           #i:I
    .end local v2           #isChecked:Z
    :cond_1
    move v2, v5

    .line 569
    goto :goto_0

    .restart local v0       #dayBtn:Landroid/widget/ToggleButton;
    .restart local v1       #i:I
    .restart local v2       #isChecked:Z
    :cond_2
    move v2, v5

    .line 575
    goto :goto_2

    .line 582
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    .end local v1           #i:I
    .end local v2           #isChecked:Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    const/4 v6, 0x7

    if-ge v1, v6, :cond_6

    .line 583
    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v6, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 585
    .restart local v0       #dayBtn:Landroid/widget/ToggleButton;
    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    aget v6, v6, v1

    if-nez v6, :cond_5

    move v2, v4

    .line 587
    .restart local v2       #isChecked:Z
    :goto_4
    if-eqz v0, :cond_4

    .line 588
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 582
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v2           #isChecked:Z
    :cond_5
    move v2, v5

    .line 585
    goto :goto_4

    .line 593
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_6
    return-void
.end method

.method private showToggleDayEnabled(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 554
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 555
    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 557
    .local v0, dayBtn:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 554
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_1
    return-void
.end method

.method private updateTime(II)V
    .locals 7
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/16 v2, 0x8

    const/16 v3, 0xd

    const/4 v6, 0x0

    .line 482
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 483
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 484
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 485
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 486
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 487
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 489
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 491
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTimeHour(I)V

    .line 492
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTimeMinute(I)V

    .line 493
    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start minite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTime(J)V

    .line 496
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v5, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/QuietTimeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 499
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1, p1}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTimeHour(I)V

    .line 500
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1, p2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTimeMinute(I)V

    .line 501
    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End minite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTime(J)V

    .line 504
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/lgesettings/QuietTimeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 336
    :goto_0
    :sswitch_0
    return-void

    .line 306
    :sswitch_1
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mHour:I

    .line 308
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mMinute:I

    .line 309
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 312
    :sswitch_2
    const-string v0, "right"

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->position:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mHour:I

    .line 314
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mMinute:I

    .line 315
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 318
    :sswitch_3
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->OnVibrateGroupClick()V

    goto :goto_0

    .line 321
    :sswitch_4
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->save()V

    .line 322
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->finish()V

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00ed -> :sswitch_4
        0x7f0a024d -> :sswitch_0
        0x7f0a024e -> :sswitch_0
        0x7f0a024f -> :sswitch_0
        0x7f0a0250 -> :sswitch_0
        0x7f0a0251 -> :sswitch_0
        0x7f0a0252 -> :sswitch_0
        0x7f0a0253 -> :sswitch_0
        0x7f0a0254 -> :sswitch_0
        0x7f0a025a -> :sswitch_1
        0x7f0a025c -> :sswitch_2
        0x7f0a0479 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v4, 0x7f060069

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->setContentView(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0202b5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setIcon(I)V

    .line 102
    const v4, 0x7f0a0259

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->schedule:Landroid/widget/TextView;

    .line 103
    const v4, 0x7f0a024c

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->repeat:Landroid/widget/TextView;

    .line 104
    const v4, 0x7f0a025b

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->schedultTo:Landroid/widget/TextView;

    .line 106
    const v4, 0x7f0a0478

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->desc0:Landroid/widget/TextView;

    .line 108
    const v4, 0x7f0a0479

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateGroup:Landroid/widget/LinearLayout;

    .line 109
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v4, 0x7f0a047c

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    .line 112
    const v4, 0x7f0a024d

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    .line 114
    const/4 v1, 0x0

    .local v1, days:I
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_2

    .line 115
    packed-switch v1, :pswitch_data_0

    .line 152
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 153
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b69

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 164
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_2
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->SetToggleButtonListener()V

    .line 168
    const v4, 0x7f0a025a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    .line 169
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v4, 0x7f0a025c

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    .line 171
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v4, Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/lgesettings/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    .line 175
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->getToggleDayToArray()[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    .line 176
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    .line 177
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/QuietTimeInfo;->isVibrateMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    .line 178
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    iget-boolean v5, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 179
    const-string v4, "TimedSilentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Vibrate check DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/QuietTimeInfo;->isVibrateMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    .line 183
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/lgesettings/TimedSilentSettings$1;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/TimedSilentSettings$1;-><init>(Lcom/android/lgesettings/TimedSilentSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 195
    .local v3, padding:I
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 196
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    iget-boolean v5, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 197
    iget-boolean v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    iput-boolean v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeState_before:Z

    .line 199
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/lgesettings/QuietTimeInfo;->TimedSilentReceiverEnable(Landroid/content/Context;Z)V

    .line 201
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/lgesettings/TimedSilentSettings$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/TimedSilentSettings$2;-><init>(Lcom/android/lgesettings/TimedSilentSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    return-void

    .line 122
    .end local v3           #padding:I
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b6a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 127
    :pswitch_2
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b6b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 132
    :pswitch_3
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b6c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 137
    :pswitch_4
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b6d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 142
    :pswitch_5
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b6e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    :pswitch_6
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/lgesettings/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080b6f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 541
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 542
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 256
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 263
    :goto_0
    return v1

    .line 258
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->finish()V

    goto :goto_0

    .line 263
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->save()V

    .line 300
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 272
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeState_before:Z

    .line 274
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBStartTime(J)V

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/QuietTimeInfo;->setDBEndTime(J)V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/lgesettings/QuietTimeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/lgesettings/QuietTimeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->initDialogTime()V

    .line 286
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->showToggleDayChecked()V

    .line 287
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    .line 288
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->getToggleDayToArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->day:[I

    .line 289
    invoke-direct {p0}, Lcom/android/lgesettings/TimedSilentSettings;->showToggleDayChecked()V

    .line 290
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/QuietTimeInfo;->isVibrateMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    iget-boolean v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-direct {p0, v0}, Lcom/android/lgesettings/TimedSilentSettings;->setlayoutVisible(Z)V

    .line 294
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/QuietTimeInfo;->setTime(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/lgesettings/QuietTimeInfo;

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/QuietTimeInfo;->setTime(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, -0x2

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 236
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 238
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 242
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 248
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 249
    invoke-virtual {p0}, Lcom/android/lgesettings/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 250
    return-void
.end method

.method public onTimeSet(Lcom/lge/sui/widget/control/SUIDrumTimePicker;II)V
    .locals 0
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 478
    iput p2, p0, Lcom/android/lgesettings/TimedSilentSettings;->mHour:I

    .line 479
    iput p3, p0, Lcom/android/lgesettings/TimedSilentSettings;->mMinute:I

    .line 480
    return-void
.end method
