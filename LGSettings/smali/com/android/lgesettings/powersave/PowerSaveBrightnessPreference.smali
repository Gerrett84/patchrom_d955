.class public Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "PowerSaveBrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static MINIMUM_BACKLIGHT:I


# instance fields
.field private isBinding:Z

.field private mAutomatic:I

.field private mAutomaticAvailable:Z

.field private mBrightnessPercent:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mOldAutomatic:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mView:Landroid/view/View;

.field private useALCOption:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->isBinding:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->useALCOption:Z

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomaticAvailable:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->MINIMUM_BACKLIGHT:I

    .line 65
    const v0, 0x7f0400e9

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setDialogLayoutResource(I)V

    .line 66
    const v0, 0x7f020210

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setDialogIcon(I)V

    .line 67
    return-void
.end method

.method private getPercent(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 211
    mul-int/lit8 v0, p1, 0x64

    sget v1, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->MINIMUM_BACKLIGHT:I

    rsub-int v1, v1, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private getValue(I)I
    .locals 1
    .parameter "percent"

    .prologue
    .line 207
    sget v0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->MINIMUM_BACKLIGHT:I

    rsub-int v0, v0, 0xff

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_brightness"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mBrightnessPercent:I

    .line 72
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mOldAutomatic:I

    .line 75
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mOldAutomatic:I

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomatic:I

    .line 80
    return-void
.end method

.method private setBrightnessTitle(I)V
    .locals 4
    .parameter "percent"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f081212

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020269

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 204
    return-void
.end method

.method private setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 224
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 235
    :cond_0
    iput p1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomatic:I

    .line 236
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 86
    invoke-direct {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->init()V

    .line 88
    iput-boolean v1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->isBinding:Z

    .line 90
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mView:Landroid/view/View;

    .line 92
    invoke-static {p1}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    sget v3, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->MINIMUM_BACKLIGHT:I

    rsub-int v3, v3, 0xff

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mBrightnessPercent:I

    invoke-direct {p0, v3}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getValue(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 97
    const v0, 0x7f0a01e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 111
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomatic:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 143
    iput-boolean v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->isBinding:Z

    .line 144
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 215
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setMode(I)V

    .line 218
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->isBinding:Z

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getPercent(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setBrightnessTitle(I)V

    .line 221
    :cond_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 150
    if-eqz p1, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getPercent(I)I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mBrightnessPercent:I

    .line 152
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_brightness"

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mBrightnessPercent:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_brightness_mode"

    iget v2, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomatic:I

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-boolean v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 169
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setMode(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 193
    invoke-direct {p0, p2}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->getPercent(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setBrightnessTitle(I)V

    .line 194
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 183
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 187
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 178
    iget v0, p0, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->mBrightnessPercent:I

    invoke-direct {p0, v0}, Lcom/android/lgesettings/powersave/PowerSaveBrightnessPreference;->setBrightnessTitle(I)V

    .line 179
    return-void
.end method
