.class public Lcom/lge/camera/command/UpdateRecordingTime;
.super Lcom/lge/camera/command/Command;
.source "UpdateRecordingTime.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 28
    return-void
.end method

.method private checkUHDStopCondition(J)Z
    .locals 8
    .parameter "recSeconds"

    .prologue
    const/4 v4, 0x0

    .line 228
    const-wide/16 v2, 0x127

    .line 229
    .local v2, warningTime:J
    const-wide/16 v0, 0x12d

    .line 230
    .local v0, fininshTime:J
    const-string v5, "3840x2160"

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_preview_size_on_device"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    const-wide/16 v5, 0x127

    cmp-long v5, p1, v5

    if-nez v5, :cond_1

    .line 233
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b037a

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    .line 240
    :cond_0
    :goto_0
    return v4

    .line 235
    :cond_1
    const-wide/16 v5, 0x12d

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    .line 236
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.StopRecording"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 237
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private recordingIconBlink(J)V
    .locals 4
    .parameter "seconds"

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09017a

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 185
    .local v0, recIcon:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 186
    const v1, 0x7f020421

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 188
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextRecordingIndicator(JJJJ)V
    .locals 7
    .parameter "minutes"
    .parameter "hours"
    .parameter "remainderMinutes"
    .parameter "remainderSeconds"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 209
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090179

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    .local v0, recTimeText:Landroid/widget/TextView;
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 211
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 216
    const-string v2, "%02d/60"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, timeTextMMS:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const-wide/16 v2, 0x1

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    .line 220
    const-string v2, "60/60"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .end local v1           #timeTextMMS:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private shutterButtonBlink()V
    .locals 4

    .prologue
    .line 200
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090149

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 201
    .local v1, shutterBlinkAnimation:Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f09017a

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, recIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 203
    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 204
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 206
    :cond_0
    return-void
.end method

.method private updateRecordingTimeStateIdle()V
    .locals 8

    .prologue
    .line 92
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f090179

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 93
    .local v5, recTimeText:Landroid/widget/TextView;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 95
    .local v0, currentCarrierCode:I
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v3

    .line 96
    .local v3, isMMSMode:Z
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v1

    .line 97
    .local v1, isAttachIntent:Z
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v2

    .line 99
    .local v2, isAttachMode:Z
    if-nez v3, :cond_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1

    .line 101
    const-string v6, "00/60"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f090180

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    .line 107
    .local v4, recProgress:Lcom/lge/camera/components/RecProgressBar;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 108
    return-void

    .line 103
    .end local v4           #recProgress:Lcom/lge/camera/components/RecProgressBar;
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0b0176

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRecordingTimeStateRecording(J)V
    .locals 29
    .parameter "seconds"

    .prologue
    .line 112
    const-wide/16 v25, 0x3c

    div-long v4, p1, v25

    .line 113
    .local v4, minutes:J
    const-wide/16 v25, 0x3c

    div-long v6, v4, v25

    .line 114
    .local v6, hours:J
    const-wide/16 v25, 0x3c

    mul-long v25, v25, v6

    sub-long v8, v4, v25

    .line 115
    .local v8, remainderMinutes:J
    const-wide/16 v25, 0x3c

    mul-long v25, v25, v4

    sub-long v10, p1, v25

    .line 117
    .local v10, remainderSeconds:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v13

    .line 118
    .local v13, isAttachMode:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v15

    .line 119
    .local v15, isMMSMode:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v12

    .local v12, isAttachIntent:Z
    move-object/from16 v3, p0

    .line 121
    invoke-direct/range {v3 .. v11}, Lcom/lge/camera/command/UpdateRecordingTime;->setTextRecordingIndicator(JJJJ)V

    .line 122
    invoke-direct/range {p0 .. p2}, Lcom/lge/camera/command/UpdateRecordingTime;->recordingIconBlink(J)V

    .line 123
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/command/UpdateRecordingTime;->shutterButtonBlink()V

    .line 127
    :cond_0
    const/16 v16, 0x0

    .line 128
    .local v16, progress:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getIsFileSizeLimitReached()Z

    move-result v14

    .line 129
    .local v14, isFileSizeLimitReached:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getRecordingSizeLimit()J

    move-result-wide v20

    .line 130
    .local v20, recordingSizeLimit:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v17

    .line 131
    .local v17, recordingDurationLimit:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoFileSize()J

    move-result-wide v23

    .line 132
    .local v23, videoFileSize:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v25, 0x7f090180

    move/from16 v0, v25

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/lge/camera/components/RecProgressBar;

    .line 134
    .local v19, recordingProgressBar:Lcom/lge/camera/components/RecProgressBar;
    if-nez v15, :cond_1

    if-nez v12, :cond_6

    if-eqz v13, :cond_6

    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v25, 0x6

    move/from16 v0, v25

    if-eq v3, v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v25, 0xa

    move/from16 v0, v25

    if-ne v3, v0, :cond_6

    .line 137
    :cond_2
    if-eqz v14, :cond_5

    .line 138
    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v16

    .line 139
    const-string v3, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Limit reached! barmax:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3
    :goto_0
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 181
    :cond_4
    :goto_1
    return-void

    .line 141
    :cond_5
    long-to-float v3, v10

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMMSMaxDuration()I

    move-result v25

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v3, v3, v25

    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v3, v3, v25

    float-to-int v0, v3

    move/from16 v16, v0

    .line 142
    const-wide/16 v25, 0x0

    cmp-long v3, v10, v25

    if-nez v3, :cond_3

    if-eqz v16, :cond_3

    .line 143
    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v16

    goto :goto_0

    .line 149
    :cond_6
    if-nez v15, :cond_7

    if-eqz v13, :cond_b

    :cond_7
    const-wide/16 v25, 0x0

    cmp-long v3, v20, v25

    if-eqz v3, :cond_b

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v22

    .line 151
    .local v22, videoFile:Ljava/io/File;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 152
    if-eqz v14, :cond_a

    .line 153
    move-wide/from16 v23, v20

    .line 154
    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v16

    .line 155
    const-string v3, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Limit reached! barmax:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_8
    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 177
    .end local v22           #videoFile:Ljava/io/File;
    :cond_9
    :goto_3
    if-eqz v14, :cond_4

    .line 178
    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->invalidate()V

    goto :goto_1

    .line 157
    .restart local v22       #videoFile:Ljava/io/File;
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 158
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v23

    .line 159
    const-string v3, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FileSize: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v25, v0

    mul-long v25, v25, v23

    div-long v25, v25, v20

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v16, v0

    goto :goto_2

    .line 165
    .end local v22           #videoFile:Ljava/io/File;
    :cond_b
    if-eqz v13, :cond_9

    const-wide/16 v25, 0x0

    cmp-long v3, v17, v25

    if-eqz v3, :cond_9

    .line 167
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 168
    const-wide/16 v25, 0x3e8

    mul-long v25, v25, p1

    cmp-long v3, v25, v17

    if-ltz v3, :cond_c

    .line 169
    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v16

    .line 170
    const-string v3, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Limit reached! barmax:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    goto :goto_3

    .line 172
    :cond_c
    const-string v3, "CameraApp"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "rectime: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-wide/16 v25, 0x3e8

    mul-long v25, v25, p1

    invoke-virtual/range {v19 .. v19}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    mul-long v25, v25, v27

    div-long v25, v25, v17

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v16, v0

    goto :goto_4
.end method


# virtual methods
.method public execute()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 32
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UpdateRecordingTime, video state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 36
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 37
    .local v5, now:J
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getStartTime()J

    move-result-wide v9

    sub-long v1, v5, v9

    .line 39
    .local v1, delta:J
    rem-long v9, v1, v12

    sub-long v3, v12, v9

    .line 40
    .local v3, next_update_delay:J
    long-to-float v9, v1

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-long v7, v9

    .line 41
    .local v7, seconds:J
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v7, v8}, Lcom/lge/camera/ControllerFunction;->setCurrentRecordingTime(J)V

    .line 42
    invoke-direct {p0, v7, v8}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateRecording(J)V

    .line 44
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->useBackLightControlInRecording()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-wide v9, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_SECOND:J

    cmp-long v9, v7, v9

    if-nez v9, :cond_1

    .line 46
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, RecordingSize:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 48
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v9

    sget v10, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_RATIO:F

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->backlightControlByVal(Landroid/app/Activity;F)V

    .line 49
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backlight set to :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_RATIO:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v0           #RecordingSize:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v7, v8}, Lcom/lge/camera/command/UpdateRecordingTime;->checkUHDStopCondition(J)Z

    move-result v9

    if-nez v9, :cond_0

    .line 53
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v9, v10, v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 60
    .end local v1           #delta:J
    .end local v3           #next_update_delay:J
    .end local v5           #now:J
    .end local v7           #seconds:J
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateIdle()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 4
    .parameter "time"

    .prologue
    .line 71
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 72
    .local v0, iTime:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    .line 74
    .local v1, seconds:J
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateRecording(J)V

    goto :goto_0

    .line 82
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateIdle()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
