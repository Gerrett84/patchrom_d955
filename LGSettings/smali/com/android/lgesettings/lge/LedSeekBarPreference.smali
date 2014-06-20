.class public Lcom/android/lgesettings/lge/LedSeekBarPreference;
.super Landroid/preference/Preference;
.source "LedSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setMax(I)V

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    const v1, 0x7f0400b6

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setLayoutResource(I)V

    .line 29
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .parameter "progress"
    .parameter "notifyChanged"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 92
    iget p1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    .line 94
    :cond_0
    if-gez p1, :cond_1

    .line 95
    const/4 p1, 0x0

    .line 97
    :cond_1
    iget v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 98
    iput p1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->persistInt(I)Z

    .line 100
    if-eqz p2, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->notifyChanged()V

    .line 104
    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 42
    const v1, 0x7f0a0180

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 43
    .local v0, seekBar:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 44
    iget v1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget v1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 47
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 62
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setProgress(I)V

    .line 72
    :goto_0
    return v0

    .line 67
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 128
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    check-cast p1, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;

    .line 177
    invoke-virtual {p1}, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 178
    iget v0, p1, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;->progress:I

    iput v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    .line 179
    iget v0, p1, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;->max:I

    iput v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    .line 180
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 155
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 161
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 162
    .local v0, myState:Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;
    iget v2, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;->progress:I

    .line 163
    iget v2, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    iput v2, v0, Lcom/android/lgesettings/lge/LedSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 164
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setProgress(I)V

    .line 52
    return-void

    .line 51
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mTrackingTouch:Z

    .line 136
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mTrackingTouch:Z

    .line 141
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 77
    iput p1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mMax:I

    .line 78
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->notifyChanged()V

    .line 80
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setProgress(IZ)V

    .line 88
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 116
    .local v0, progress:I
    iget v1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/lge/LedSeekBarPreference;->setProgress(IZ)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v1, p0, Lcom/android/lgesettings/lge/LedSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
