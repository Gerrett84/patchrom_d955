.class public Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;
.super Lcom/lge/camera/dialog/HelpRotateDialog;
.source "HelpVoicePhotoPopupRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .parameter "function"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 26
    return-void
.end method

.method private isDontNeedToSoundWord()Z
    .locals 15

    .prologue
    .line 116
    :try_start_0
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0130

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, commandWordCheese:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0136

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, soundWordCheese:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0132

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, commandWordSmile:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0138

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, soundWordSmile:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0133

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, commandWordWhisky:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0139

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, soundWordWhisky:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b012f

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, commandWordKimchi:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0135

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, soundWordKimchi:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0131

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, commandWordLG:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0137

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, soundWordLG:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b0134

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, commandWordTorimasu:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0b013a

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 134
    .local v11, soundWordTorimasu:Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "whiskey"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "whisky"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_1

    .line 140
    const/4 v13, 0x1

    .line 149
    .end local v0           #commandWordCheese:Ljava/lang/String;
    .end local v1           #commandWordKimchi:Ljava/lang/String;
    .end local v2           #commandWordLG:Ljava/lang/String;
    .end local v3           #commandWordSmile:Ljava/lang/String;
    .end local v4           #commandWordTorimasu:Ljava/lang/String;
    .end local v5           #commandWordWhisky:Ljava/lang/String;
    .end local v7           #soundWordCheese:Ljava/lang/String;
    .end local v8           #soundWordKimchi:Ljava/lang/String;
    .end local v9           #soundWordLG:Ljava/lang/String;
    .end local v10           #soundWordSmile:Ljava/lang/String;
    .end local v11           #soundWordTorimasu:Ljava/lang/String;
    .end local v12           #soundWordWhisky:Ljava/lang/String;
    :goto_0
    return v13

    .line 143
    :catch_0
    move-exception v6

    .line 144
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v13, "CameraApp"

    const-string v14, "NullPointerException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    const/4 v13, 0x0

    goto :goto_0

    .line 146
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 147
    .local v6, e:Ljava/util/MissingFormatArgumentException;
    const-string v13, "CameraApp"

    const-string v14, "MissingFormatArgumentException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v6           #e:Ljava/util/MissingFormatArgumentException;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private setMultiCommandHelpGuide(Landroid/view/View;)V
    .locals 14
    .parameter "helpDialogView"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    const v7, 0x7f0901f4

    :try_start_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, voiceSoundText_cheese:Landroid/widget/TextView;
    const v7, 0x7f0901f8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, voiceSoundText_smile:Landroid/widget/TextView;
    const v7, 0x7f0901fc

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 54
    .local v6, voiceSoundText_whisky:Landroid/widget/TextView;
    const v7, 0x7f090200

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 55
    .local v3, voiceSoundText_kimchi:Landroid/widget/TextView;
    const v7, 0x7f090204

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, voiceSoundText_LG:Landroid/widget/TextView;
    const v7, 0x7f090208

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 58
    .local v5, voiceSoundText_torimasu:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->isDontNeedToSoundWord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :goto_0
    const v10, 0x7f0901f2

    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 75
    const v10, 0x7f0901f6

    const/4 v11, 0x1

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 76
    const v10, 0x7f0901fa

    const/4 v11, 0x2

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 77
    const v10, 0x7f0901fe

    const/4 v11, 0x3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 78
    const v10, 0x7f090202

    const/4 v11, 0x4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 79
    const v10, 0x7f090206

    const/4 v11, 0x5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 81
    iget-object v7, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v7, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v11, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v11, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/16 v12, 0xb4

    invoke-static {v7, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v7, v9

    :goto_1
    invoke-static {v10, p1, v7}, Lcom/lge/camera/util/DialogCreater;->setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V

    .line 90
    .end local v1           #voiceSoundText_LG:Landroid/widget/TextView;
    .end local v2           #voiceSoundText_cheese:Landroid/widget/TextView;
    .end local v3           #voiceSoundText_kimchi:Landroid/widget/TextView;
    .end local v4           #voiceSoundText_smile:Landroid/widget/TextView;
    .end local v5           #voiceSoundText_torimasu:Landroid/widget/TextView;
    .end local v6           #voiceSoundText_whisky:Landroid/widget/TextView;
    :goto_2
    return-void

    .line 66
    .restart local v1       #voiceSoundText_LG:Landroid/widget/TextView;
    .restart local v2       #voiceSoundText_cheese:Landroid/widget/TextView;
    .restart local v3       #voiceSoundText_kimchi:Landroid/widget/TextView;
    .restart local v4       #voiceSoundText_smile:Landroid/widget/TextView;
    .restart local v5       #voiceSoundText_torimasu:Landroid/widget/TextView;
    .restart local v6       #voiceSoundText_whisky:Landroid/widget/TextView;
    :cond_1
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0b0136

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0b0138

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0b0139

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0b0135

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0b0137

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0b013a

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 85
    .end local v1           #voiceSoundText_LG:Landroid/widget/TextView;
    .end local v2           #voiceSoundText_cheese:Landroid/widget/TextView;
    .end local v3           #voiceSoundText_kimchi:Landroid/widget/TextView;
    .end local v4           #voiceSoundText_smile:Landroid/widget/TextView;
    .end local v5           #voiceSoundText_torimasu:Landroid/widget/TextView;
    .end local v6           #voiceSoundText_whisky:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "CameraApp"

    const-string v8, "NullPointerException:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #voiceSoundText_LG:Landroid/widget/TextView;
    .restart local v2       #voiceSoundText_cheese:Landroid/widget/TextView;
    .restart local v3       #voiceSoundText_kimchi:Landroid/widget/TextView;
    .restart local v4       #voiceSoundText_smile:Landroid/widget/TextView;
    .restart local v5       #voiceSoundText_torimasu:Landroid/widget/TextView;
    .restart local v6       #voiceSoundText_whisky:Landroid/widget/TextView;
    :cond_2
    move v7, v8

    .line 81
    goto/16 :goto_1

    .line 87
    .end local v1           #voiceSoundText_LG:Landroid/widget/TextView;
    .end local v2           #voiceSoundText_cheese:Landroid/widget/TextView;
    .end local v3           #voiceSoundText_kimchi:Landroid/widget/TextView;
    .end local v4           #voiceSoundText_smile:Landroid/widget/TextView;
    .end local v5           #voiceSoundText_torimasu:Landroid/widget/TextView;
    .end local v6           #voiceSoundText_whisky:Landroid/widget/TextView;
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/util/MissingFormatArgumentException;
    const-string v7, "CameraApp"

    const-string v8, "MissingFormatArgumentException:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V
    .locals 2
    .parameter "helpDialogView"
    .parameter "resId"
    .parameter "voiceSound"
    .parameter "talkBackMessage"

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 103
    .local v0, speakerImage:Landroid/widget/ImageView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v1, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .end local v0           #speakerImage:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method public create(ZI)V
    .locals 3
    .parameter "useCheckBox"
    .parameter "dialogId"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/lge/camera/dialog/HelpRotateDialog;->create(ZI)V

    .line 32
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, value:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStop()V

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 37
    return-void
.end method

.method protected getHorizontalHelpDialogWidth()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/camera/util/DialogCreater;->getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method protected getVerticalMessageScrollWidth()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, -0x1

    return v0
.end method

.method protected inflateHelpDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f030034

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 165
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStart()V

    .line 166
    invoke-super {p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->onDismiss()V

    .line 167
    return-void
.end method

.method protected setExtraContents(Landroid/view/View;)V
    .locals 0
    .parameter "rotateHelpView"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setMultiCommandHelpGuide(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public startRotation(I)V
    .locals 6
    .parameter "degree"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;->startRotation(I)V

    .line 95
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    const/16 v5, 0xb4

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/DialogCreater;->setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V

    .line 98
    return-void
.end method
