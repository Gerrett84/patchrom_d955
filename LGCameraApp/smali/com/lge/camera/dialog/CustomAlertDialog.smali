.class public Lcom/lge/camera/dialog/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"


# instance fields
.field private final completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mActivity:Landroid/app/Activity;

.field private mImage:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mOrientation:I

.field private mSound_pool:Landroid/media/SoundPool;

.field private mSound_voiceShutter_LG:I

.field private mSound_voiceShutter_cheese:I

.field private mSound_voiceShutter_kimchi:I

.field private mSound_voiceShutter_smile:I

.field private mSound_voiceShutter_torimasu:I

.field private mSound_voiceShutter_whisky:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitleInContent:Landroid/widget/TextView;

.field private mVoiceCommandStream:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "orientation"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 47
    const v0, 0x7f0c000d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    .line 36
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    .line 37
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    .line 38
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    .line 39
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    .line 40
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    .line 42
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    .line 43
    iput v3, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    .line 276
    new-instance v0, Lcom/lge/camera/dialog/CustomAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/dialog/CustomAlertDialog$3;-><init>(Lcom/lge/camera/dialog/CustomAlertDialog;)V

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 48
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 51
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    .line 52
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 54
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    .line 55
    iput p2, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    .line 57
    const v0, 0x7f0900b6

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0900ba

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitleInContent:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0900b9

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOkButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/lge/camera/dialog/CustomAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/dialog/CustomAlertDialog$1;-><init>(Lcom/lge/camera/dialog/CustomAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->loadVoiceGuideSound()V

    .line 70
    return-void
.end method

.method private isDontNeedToSoundWord()Z
    .locals 15

    .prologue
    .line 162
    :try_start_0
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0130

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, commandWordCheese:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0136

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, soundWordCheese:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0132

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, commandWordSmile:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0138

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, soundWordSmile:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0133

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, commandWordWhisky:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0139

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, soundWordWhisky:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b012f

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, commandWordKimchi:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0135

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, soundWordKimchi:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0131

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, commandWordLG:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0137

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, soundWordLG:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b0134

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, commandWordTorimasu:Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v14, 0x7f0b013a

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 180
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

    .line 186
    const/4 v13, 0x1

    .line 195
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

    .line 189
    :catch_0
    move-exception v6

    .line 190
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v13, "CameraApp"

    const-string v14, "NullPointerException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    const/4 v13, 0x0

    goto :goto_0

    .line 192
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 193
    .local v6, e:Ljava/util/MissingFormatArgumentException;
    const-string v13, "CameraApp"

    const-string v14, "MissingFormatArgumentException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .end local v6           #e:Ljava/util/MissingFormatArgumentException;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private loadVoiceGuideSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    .line 251
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    .line 252
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    .line 253
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    .line 254
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    .line 255
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    .line 257
    :cond_0
    return-void
.end method

.method private setMultiCommandHelpGuide()V
    .locals 13

    .prologue
    .line 119
    const v8, 0x7f0901f4

    :try_start_0
    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    .local v3, voiceSoundText_cheese:Landroid/widget/TextView;
    const v8, 0x7f0901f8

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    .local v5, voiceSoundText_smile:Landroid/widget/TextView;
    const v8, 0x7f0901fc

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 122
    .local v7, voiceSoundText_whisky:Landroid/widget/TextView;
    const v8, 0x7f090200

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    .local v4, voiceSoundText_kimchi:Landroid/widget/TextView;
    const v8, 0x7f090204

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 124
    .local v2, voiceSoundText_LG:Landroid/widget/TextView;
    const v8, 0x7f090208

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 126
    .local v6, voiceSoundText_torimasu:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->isDontNeedToSoundWord()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :goto_0
    const v9, 0x7f0901f2

    const/4 v10, 0x0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 143
    const v9, 0x7f0901f6

    const/4 v10, 0x1

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 144
    const v9, 0x7f0901fa

    const/4 v10, 0x2

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 145
    const v9, 0x7f0901fe

    const/4 v10, 0x3

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 146
    const v9, 0x7f090202

    const/4 v10, 0x4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 147
    const v9, 0x7f090206

    const/4 v10, 0x5

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v10, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->setSpeakerClickListener(IILjava/lang/String;)V

    .line 149
    const v8, 0x7f0900b2

    invoke-virtual {p0, v8}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, parentView:Landroid/view/View;
    iget-object v9, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    iget v8, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOrientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_1
    invoke-static {v9, v1, v8}, Lcom/lge/camera/util/DialogCreater;->setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V

    .line 158
    .end local v1           #parentView:Landroid/view/View;
    .end local v2           #voiceSoundText_LG:Landroid/widget/TextView;
    .end local v3           #voiceSoundText_cheese:Landroid/widget/TextView;
    .end local v4           #voiceSoundText_kimchi:Landroid/widget/TextView;
    .end local v5           #voiceSoundText_smile:Landroid/widget/TextView;
    .end local v6           #voiceSoundText_torimasu:Landroid/widget/TextView;
    .end local v7           #voiceSoundText_whisky:Landroid/widget/TextView;
    :goto_2
    return-void

    .line 134
    .restart local v2       #voiceSoundText_LG:Landroid/widget/TextView;
    .restart local v3       #voiceSoundText_cheese:Landroid/widget/TextView;
    .restart local v4       #voiceSoundText_kimchi:Landroid/widget/TextView;
    .restart local v5       #voiceSoundText_smile:Landroid/widget/TextView;
    .restart local v6       #voiceSoundText_torimasu:Landroid/widget/TextView;
    .restart local v7       #voiceSoundText_whisky:Landroid/widget/TextView;
    :cond_1
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b0136

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b0138

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b0139

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b0135

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b0137

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const-string v8, "[%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0b013a

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 153
    .end local v2           #voiceSoundText_LG:Landroid/widget/TextView;
    .end local v3           #voiceSoundText_cheese:Landroid/widget/TextView;
    .end local v4           #voiceSoundText_kimchi:Landroid/widget/TextView;
    .end local v5           #voiceSoundText_smile:Landroid/widget/TextView;
    .end local v6           #voiceSoundText_torimasu:Landroid/widget/TextView;
    .end local v7           #voiceSoundText_whisky:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v8, "CameraApp"

    const-string v9, "NullPointerException:"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 151
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #parentView:Landroid/view/View;
    .restart local v2       #voiceSoundText_LG:Landroid/widget/TextView;
    .restart local v3       #voiceSoundText_cheese:Landroid/widget/TextView;
    .restart local v4       #voiceSoundText_kimchi:Landroid/widget/TextView;
    .restart local v5       #voiceSoundText_smile:Landroid/widget/TextView;
    .restart local v6       #voiceSoundText_torimasu:Landroid/widget/TextView;
    .restart local v7       #voiceSoundText_whisky:Landroid/widget/TextView;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 155
    .end local v1           #parentView:Landroid/view/View;
    .end local v2           #voiceSoundText_LG:Landroid/widget/TextView;
    .end local v3           #voiceSoundText_cheese:Landroid/widget/TextView;
    .end local v4           #voiceSoundText_kimchi:Landroid/widget/TextView;
    .end local v5           #voiceSoundText_smile:Landroid/widget/TextView;
    .end local v6           #voiceSoundText_torimasu:Landroid/widget/TextView;
    .end local v7           #voiceSoundText_whisky:Landroid/widget/TextView;
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/util/MissingFormatArgumentException;
    const-string v8, "CameraApp"

    const-string v9, "MissingFormatArgumentException:"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private setSpeakerClickListener(IILjava/lang/String;)V
    .locals 2
    .parameter "resId"
    .parameter "voiceSound"
    .parameter "talkBackMessage"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 200
    .local v0, speakerImage:Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v1, Lcom/lge/camera/dialog/CustomAlertDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/lge/camera/dialog/CustomAlertDialog$2;-><init>(Lcom/lge/camera/dialog/CustomAlertDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private unloadSoundPool(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 274
    :cond_0
    return-void
.end method

.method private unloadVoiceGuideSound()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 261
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 262
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 263
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 264
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 265
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 266
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    invoke-direct {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadSoundPool(I)V

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInsatnceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public playVoiceCommandSound(I)V
    .locals 7
    .parameter "soundIndex"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 219
    const-string v0, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVoiceCommandSound in help activity guide popup : soundIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, soundSource:I
    packed-switch p1, :pswitch_data_0

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    .line 246
    .end local v1           #soundSource:I
    :cond_0
    return-void

    .line 225
    .restart local v1       #soundSource:I
    :pswitch_0
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_cheese:I

    .line 226
    goto :goto_0

    .line 228
    :pswitch_1
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_smile:I

    .line 229
    goto :goto_0

    .line 231
    :pswitch_2
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_whisky:I

    .line 232
    goto :goto_0

    .line 234
    :pswitch_3
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_kimchi:I

    .line 235
    goto :goto_0

    .line 237
    :pswitch_4
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_LG:I

    .line 238
    goto :goto_0

    .line 240
    :pswitch_5
    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_voiceShutter_torimasu:I

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layouutID"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 80
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setMessageImage(II)V
    .locals 1
    .parameter "resource"
    .parameter "level"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitleInContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setVoiceShutterVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const v0, 0x7f0901f0

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/dialog/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->setMultiCommandHelpGuide()V

    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 94
    return-void
.end method

.method public stopVoiceCommandSound()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "CameraApp"

    const-string v1, "stopVoiceCommandSound "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mVoiceCommandStream:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 216
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mActivity:Landroid/app/Activity;

    .line 284
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 285
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mTitleInContent:Landroid/widget/TextView;

    .line 286
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mImage:Landroid/widget/ImageView;

    .line 287
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mMessage:Landroid/widget/TextView;

    .line 288
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mOkButton:Landroid/widget/Button;

    .line 290
    invoke-direct {p0}, Lcom/lge/camera/dialog/CustomAlertDialog;->unloadVoiceGuideSound()V

    .line 291
    iput-object v0, p0, Lcom/lge/camera/dialog/CustomAlertDialog;->mSound_pool:Landroid/media/SoundPool;

    .line 292
    return-void
.end method
