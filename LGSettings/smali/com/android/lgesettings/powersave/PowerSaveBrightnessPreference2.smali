.class public Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;
.super Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;
.source "PowerSaveBrightnessPreference2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;
    }
.end annotation


# instance fields
.field private MINIMUM_BACKLIGHT:I

.field private mButtonClickListener:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;

.field private mClickedIndex:I

.field private mCurrentBrightness:I

.field private mSettingsButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;-><init>(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mButtonClickListener:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    .line 42
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->MINIMUM_BACKLIGHT:I

    .line 43
    const-string v0, "PowerSaveBrightnessPreference2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MINIMUM_BACKLIGHT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->MINIMUM_BACKLIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->initPreview()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mClickedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->setPreviewBrightness(I)V

    return-void
.end method

.method private initPreview()V
    .locals 3

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    .line 139
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_brightness_restore"

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    const-string v0, "PowerSaveBrightnessPreference2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPreview, mCurrentBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method

.method private isActivated()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_save_started"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, activated:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPreviewBrightness(I)V
    .locals 5
    .parameter "which"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mClickedIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, percent:I
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSave;->getValue(I)I

    move-result v0

    .line 152
    .local v0, brightness:I
    const-string v2, "PowerSaveBrightnessPreference2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "percen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->MINIMUM_BACKLIGHT:I

    add-int/2addr v2, v0

    invoke-static {v2}, Lcom/android/lgesettings/powersave/PowerSave;->setBrightness(I)V

    .line 154
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 52
    const v0, 0x7f0a020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mSettingsButton:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mSettingsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mButtonClickListener:Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$ImageButtonListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mClickedIndex:I

    if-ltz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mClickedIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->setValue(Ljava/lang/String;)V

    .line 113
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_brightness_restore"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    .line 115
    const-string v1, "PowerSaveBrightnessPreference2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogClosed, restore_brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    if-lez v1, :cond_1

    .line 117
    iget v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSave;->setBrightness(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_1
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 72
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04006a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, layout:Landroid/view/View;
    const v4, 0x7f0a004b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, dt:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f081212

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mClickedIndex:I

    .line 79
    const v4, 0x7f0a00ea

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f081278

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$1;

    invoke-direct {v6, p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$1;-><init>(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;)V

    invoke-virtual {p1, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v4, 0x7f08059e

    new-instance v5, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$2;-><init>(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;)V

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v4, 0x7f08059d

    new-instance v5, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$3;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2$3;-><init>(Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;)V

    invoke-virtual {p1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    return-void
.end method

.method public restorePreview()V
    .locals 3

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_brightness_restore"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    .line 127
    const-string v0, "PowerSaveBrightnessPreference2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restorePreview, restore_brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    if-lez v0, :cond_0

    .line 129
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->mCurrentBrightness:I

    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->setBrightness(I)V

    .line 132
    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/lgesettings/powersave/PowerSaveCheckBoxPreference;->showDialog(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference2;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x102026a

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 63
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    return-void
.end method
