.class public Lcom/android/lgesettings/VibrateTypeListPreference;
.super Landroid/preference/ListPreference;
.source "VibrateTypeListPreference.java"


# static fields
.field private static final DEFAULT_VIBRATE:[J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;

.field private selectiedPosision:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/lgesettings/VibrateTypeListPreference;->DEFAULT_VIBRATE:[J

    return-void

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I

    .line 32
    iput-object p1, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/VibrateTypeListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/lgesettings/VibrateTypeListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/lgesettings/VibrateTypeListPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypeListPreference;->playVibrate(I)V

    return-void
.end method

.method private getLongIntArray(I)[J
    .locals 8
    .parameter "resid"

    .prologue
    .line 70
    iget-object v5, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 71
    .local v3, mResource:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 72
    .local v0, ar:[I
    const/4 v4, 0x0

    .line 75
    .local v4, out:[J
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const/4 v5, 0x0

    .line 90
    :goto_0
    return-object v5

    .line 79
    :cond_0
    array-length v5, v0

    new-array v4, v5, [J

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 81
    aget v5, v0, v2

    int-to-long v5, v5

    aput-wide v5, v4, v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "VibrateTypeListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getLongIntArray] NotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v5, Lcom/android/lgesettings/VibrateTypeListPreference;->DEFAULT_VIBRATE:[J

    goto :goto_0

    .line 86
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "VibrateTypeListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getLongIntArray] NullPointerEception :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v5, Lcom/android/lgesettings/VibrateTypeListPreference;->DEFAULT_VIBRATE:[J

    goto :goto_0

    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v2       #i:I
    :cond_1
    move-object v5, v4

    .line 90
    goto :goto_0
.end method

.method private getVibratePatterns(I)[J
    .locals 2
    .parameter "vibrateType"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, resid:I
    packed-switch p1, :pswitch_data_0

    .line 113
    const v0, 0x7f0900dc

    .line 116
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/VibrateTypeListPreference;->getLongIntArray(I)[J

    move-result-object v1

    return-object v1

    .line 98
    :pswitch_0
    const v0, 0x7f0900dc

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    const v0, 0x7f0900dd

    .line 102
    goto :goto_0

    .line 104
    :pswitch_2
    const v0, 0x7f0900de

    .line 105
    goto :goto_0

    .line 107
    :pswitch_3
    const v0, 0x7f0900df

    .line 108
    goto :goto_0

    .line 110
    :pswitch_4
    const v0, 0x7f0900e0

    .line 111
    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private playVibrate(I)V
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/VibrateTypeListPreference;->getVibratePatterns(I)[J

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "VibrateTypeListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVibrate() Null point exception!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 139
    const-string v2, "VibrateTypeListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog Closed! PositiveResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz p1, :cond_1

    :try_start_0
    iget v2, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, value:Ljava/lang/String;
    const-string v2, "VibrateTypeListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DialogClosed] selected value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 147
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I

    .line 149
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_2
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "VibrateTypeListPreference"

    const-string v3, "onDialogZClosed() - NullPointException !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateTypeListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/lgesettings/VibrateTypeListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/VibrateTypeListPreference$1;-><init>(Lcom/android/lgesettings/VibrateTypeListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/lgesettings/VibrateTypeListPreference$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/VibrateTypeListPreference$2;-><init>(Lcom/android/lgesettings/VibrateTypeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    const v0, 0x7f08059d

    new-instance v1, Lcom/android/lgesettings/VibrateTypeListPreference$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/VibrateTypeListPreference$3;-><init>(Lcom/android/lgesettings/VibrateTypeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    return-void
.end method

.method public vibrateStop()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 134
    :cond_0
    return-void
.end method
