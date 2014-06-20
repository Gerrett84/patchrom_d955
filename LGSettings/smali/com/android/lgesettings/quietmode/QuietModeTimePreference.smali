.class public Lcom/android/lgesettings/quietmode/QuietModeTimePreference;
.super Landroid/preference/Preference;
.source "QuietModeTimePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mHour:I

.field private mMinute:I

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

.field private mTimePikerOKButton:Landroid/widget/Button;

.field private mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

.field private position:Ljava/lang/String;

.field private timeEndBtn:Landroid/widget/Button;

.field private timeStartBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    .line 42
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    .line 44
    iput v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    .line 204
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;-><init>(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 214
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$2;-><init>(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    .line 49
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mContext:Landroid/content/Context;

    .line 50
    const v0, 0x7f04011e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->setLayoutResource(I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->updateTime(II)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Lcom/android/lgesettings/quietmode/QuietModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 252
    const-string v0, "QuietModeTimePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBStartTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "QuietModeTimePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBStartTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "QuietModeTimePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBEndTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v0, "QuietModeTimePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBEndTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, hour:I
    const/4 v4, 0x0

    .line 259
    .local v4, minute:I
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v3

    .line 261
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v4

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_3

    .line 270
    new-instance v0, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTitleBuilder:Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;

    move-object v2, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$OnTimeSetListener;IIIIIZLcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog$TitleBuilder;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    .line 282
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    check-cast v0, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;

    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIDrumTimePickerDialog;->getTimePicker()Lcom/lge/sui/widget/control/SUIDrumTimePicker;

    move-result-object v10

    .line 283
    .local v10, timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v10, v8}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    .line 289
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$3;-><init>(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 309
    .end local v10           #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :goto_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;

    return-object v0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v3

    .line 264
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v4

    goto :goto_0

    .line 286
    .restart local v10       #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :cond_2
    invoke-virtual {v10, v5}, Lcom/lge/sui/widget/control/SUIDrumTimePicker;->setTimeFormat(I)V

    goto :goto_1

    .line 303
    .end local v10           #timePicker:Lcom/lge/sui/widget/control/SUIDrumTimePicker;
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    const-string v0, "right"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    goto :goto_2

    .line 306
    :cond_4
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    goto :goto_2
.end method

.method private initDialogTime()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 315
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 316
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTimeHour(I)V

    .line 317
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTimeMinute(I)V

    .line 319
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 320
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTimeHour(I)V

    .line 321
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTimeMinute(I)V

    .line 322
    return-void
.end method

.method private updateTime(II)V
    .locals 9
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v4, 0xa

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v4, 0xc

    invoke-virtual {v0, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 137
    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 139
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v5, "left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start hour : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start minite : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long v2, v4, v6

    .line 146
    .local v2, removeSecond:J
    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    .line 148
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 149
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 154
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 155
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 156
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 157
    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 159
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long v2, v4, v6

    .line 160
    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    .line 161
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 185
    .end local v2           #removeSecond:J
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/Date;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 186
    .local v1, mDate:Ljava/util/Date;
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before date : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 191
    const-string v4, "QuietModeTimePreference"

    const-string v5, "after day case "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 193
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 195
    :cond_1
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after Start time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "                   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after End time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "                   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v7, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v7}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDayInfo(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after end full string : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 200
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after start full string : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    .line 202
    return-void

    .line 162
    .end local v1           #mDate:Ljava/util/Date;
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v5, "right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End hour : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End minite : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long v2, v4, v6

    .line 169
    .restart local v2       #removeSecond:J
    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    .line 170
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 171
    const-string v4, "QuietModeTimePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 176
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 177
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 179
    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    div-long v2, v4, v6

    .line 181
    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    .line 182
    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4, v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    const-string v0, "QuietModeTimePreference"

    const-string v1, "getView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 67
    const-string v1, "QuietModeTimePreference"

    const-string v2, "onBindView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 69
    const v1, 0x7f0a025a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeStartBtn:Landroid/widget/Button;

    .line 70
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeStartBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0a025c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeEndBtn:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeEndBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const v1, 0x7f0a0260

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    .local v0, quiet_time_Buttons_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 78
    .end local v0           #quiet_time_Buttons_layout:Landroid/widget/LinearLayout;
    :cond_0
    new-instance v1, Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 80
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeStartBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v5, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeEndBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 95
    :pswitch_1
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    .line 98
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "right"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeHour()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTimeMinute()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    .line 104
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x7f0a025a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 87
    const-string v0, "QuietModeTimePreference"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->save()V

    .line 346
    return-void
.end method

.method public onResume(Lcom/android/lgesettings/quietmode/QuietModeInfo;)V
    .locals 7
    .parameter "quietModeInfo"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    if-nez v0, :cond_0

    .line 326
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-nez v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTime(J)V

    .line 330
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1, v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTime(J)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeStartBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeEndBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeStartBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeEndBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->initDialogTime()V

    .line 342
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setTime(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0, v6}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setTime(Z)V

    goto :goto_0
.end method

.method public onTimeSet(Lcom/lge/sui/widget/control/SUIDrumTimePicker;II)V
    .locals 7
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v6, 0x0

    .line 111
    iput p2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    .line 112
    iput p3, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 118
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTimeHour(I)V

    .line 120
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBStartTimeMinute(I)V

    .line 121
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeStartBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTimeHour(I)V

    .line 124
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBEndTimeMinute(I)V

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->timeEndBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->set24TimeString(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public save()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 350
    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I

    if-ne v0, v1, :cond_0

    .line 351
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->position:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeHour()I

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getDBStartTimeMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->updateTime(II)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBSaveTime(J)V

    .line 355
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setDBFirstStartFlag(I)V

    .line 356
    return-void
.end method
