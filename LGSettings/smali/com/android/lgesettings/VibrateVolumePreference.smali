.class public Lcom/android/lgesettings/VibrateVolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VibrateVolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;,
        Lcom/android/lgesettings/VibrateVolumePreference$SavedState;,
        Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

.field private mSeekBarVolumizer_notification:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

.field private mSeekBarVolumizer_touch:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

.field private onbindDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->onbindDialog:Z

    .line 81
    iput-object p1, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mContext:Landroid/content/Context;

    .line 82
    const v0, 0x7f0400ec

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/VibrateVolumePreference;->setDialogLayoutResource(I)V

    .line 86
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 87
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 240
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0200

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 249
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->stop()V

    .line 250
    iput-object v4, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    .line 253
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 151
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/VibrateVolumePreference;->setPositiveButtonText(I)V

    .line 152
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/VibrateVolumePreference;->setNegativeButtonText(I)V

    .line 153
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 225
    iget-object v1, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->cleanup()V

    .line 229
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 230
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 233
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x8

    .line 91
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 93
    const v7, 0x7f0a0200

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 94
    .local v0, layout_call:Landroid/widget/LinearLayout;
    const v7, 0x7f0a0203

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 95
    .local v1, layout_notification:Landroid/widget/LinearLayout;
    const v7, 0x7f0a0206

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 97
    .local v2, layout_touch:Landroid/widget/LinearLayout;
    const v7, 0x7f0a0202

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 98
    .local v3, seekBar_call:Landroid/widget/SeekBar;
    const v7, 0x7f0a0205

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 99
    .local v4, seekBar_notification:Landroid/widget/SeekBar;
    const v7, 0x7f0a0208

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 101
    .local v5, seekBar_touch:Landroid/widget/SeekBar;
    const v7, 0x7f0a0201

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 117
    .local v6, textView_call:Landroid/widget/TextView;
    new-instance v7, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, p0, v8, v3, v9}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/lgesettings/VibrateVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    .line 118
    new-instance v7, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8, v4, v11}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/lgesettings/VibrateVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_notification:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    .line 119
    new-instance v7, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v7, p0, v8, v5, v9}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/lgesettings/VibrateVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v7, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_touch:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    .line 125
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    invoke-virtual {p1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 128
    invoke-static {}, Lcom/android/lgesettings/Utils;->isVu2Model()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->getVibrateTypeProperty()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_2
    const-string v7, "VibrateVolumePreference"

    const-string v8, "onBindDialog"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean v11, p0, Lcom/android/lgesettings/VibrateVolumePreference;->onbindDialog:Z

    .line 147
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 212
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 214
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_notification:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 215
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_touch:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->onbindDialog:Z

    .line 219
    invoke-direct {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->cleanup()V

    .line 220
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    iget-boolean v3, p0, Lcom/android/lgesettings/VibrateVolumePreference;->onbindDialog:Z

    if-ne v1, v3, :cond_6

    .line 158
    const-string v3, "VibrateVolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarDialogPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 161
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 200
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    .line 160
    goto :goto_1

    .line 163
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_3

    .line 164
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    .line 165
    const-string v2, "VibrateVolumePreference"

    const-string v3, "volume down1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    const-string v2, "VibrateVolumePreference"

    const-string v3, "volume down2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :sswitch_1
    if-eqz v0, :cond_4

    .line 171
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    .line 172
    const-string v2, "VibrateVolumePreference"

    const-string v3, "volume up1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    const-string v2, "VibrateVolumePreference"

    const-string v3, "volume up2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :sswitch_2
    if-eqz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v6}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    .line 179
    const-string v2, "VibrateVolumePreference"

    const-string v3, "left"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :sswitch_3
    if-eqz v0, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    .line 185
    const-string v2, "VibrateVolumePreference"

    const-string v3, "right"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :sswitch_4
    if-eqz v0, :cond_5

    .line 190
    const-string v2, "VibrateVolumePreference"

    const-string v3, "center"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_5
    :sswitch_5
    const-string v2, "VibrateVolumePreference"

    const-string v3, "ENTER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :sswitch_6
    const-string v1, "VibrateVolumePreference"

    const-string v3, "BACK"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 198
    goto :goto_0

    .line 204
    .end local v0           #isdown:Z
    :cond_6
    const-string v1, "VibrateVolumePreference"

    const-string v2, "onKey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarDialogPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    check-cast p1, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;

    .line 285
    invoke-virtual {p1}, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 286
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {p1}, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->getVolumeStore()Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 259
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 264
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/lgesettings/VibrateVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 269
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 270
    .local v0, myState:Lcom/android/lgesettings/VibrateVolumePreference$SavedState;
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/lgesettings/VibrateVolumePreference;->mSeekBarVolumizer_call:Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/lgesettings/VibrateVolumePreference$SavedState;->getVolumeStore()Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/VibrateVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/android/lgesettings/VibrateVolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 273
    goto :goto_0
.end method
