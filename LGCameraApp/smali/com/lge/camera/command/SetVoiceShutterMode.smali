.class public Lcom/lge/camera/command/SetVoiceShutterMode;
.super Lcom/lge/camera/command/Command;
.source "SetVoiceShutterMode.java"


# static fields
.field private static checkCount:I


# instance fields
.field private mVoiceShutterValueOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x1e

    sput v0, Lcom/lge/camera/command/SetVoiceShutterMode;->checkCount:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 20
    return-void
.end method

.method private checkAudioManagerCallStatus(Z)Z
    .locals 3
    .parameter "check"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    sget v0, Lcom/lge/camera/command/SetVoiceShutterMode;->checkCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AudioUtil;->isAudioManagerCallStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget v0, Lcom/lge/camera/command/SetVoiceShutterMode;->checkCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/command/SetVoiceShutterMode;->checkCount:I

    .line 157
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAudioManagerCallStatus() == true, checkAudioManagerCallStatusCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/command/SetVoiceShutterMode;->checkCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    const/16 v0, 0x1e

    sput v0, Lcom/lge/camera/command/SetVoiceShutterMode;->checkCount:I

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/SetVoiceShutterMode;->execute(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 9
    .parameter "arg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    .line 31
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "subMenuClicked"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 32
    .local v2, subMenuClicked:Z
    const-string v4, "allSetting"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, allSetting:Z
    invoke-virtual {p0}, Lcom/lge/camera/command/SetVoiceShutterMode;->checkMediator()Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, value:Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## SetVoiceShutterMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v4

    if-nez v4, :cond_2

    .line 41
    iput-boolean v7, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 42
    const-string v4, "CameraApp"

    const-string v5, "SetVoiceShutterMode : model is not supported."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_5

    .line 47
    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 51
    invoke-direct {p0, v8}, Lcom/lge/camera/command/SetVoiceShutterMode;->checkAudioManagerCallStatus(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.SetVoiceShutterMode"

    const-wide/16 v6, 0x64

    invoke-interface {v4, v5, v1, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 58
    iput-boolean v8, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 61
    if-eqz v0, :cond_6

    .line 62
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/command/SetVoiceShutterMode$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/SetVoiceShutterMode$1;-><init>(Lcom/lge/camera/command/SetVoiceShutterMode;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    :cond_5
    invoke-direct {p0, v7}, Lcom/lge/camera/command/SetVoiceShutterMode;->checkAudioManagerCallStatus(Z)Z

    .line 91
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/command/SetVoiceShutterMode$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/command/SetVoiceShutterMode$2;-><init>(Lcom/lge/camera/command/SetVoiceShutterMode;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/lge/camera/command/SetVoiceShutterMode;->onExecuteAlone()V

    goto/16 :goto_0

    .line 73
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStart()V

    goto :goto_1

    .line 76
    :cond_7
    const-string v4, "not found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 77
    sget v4, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isCameraKeyLongPressed()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v4

    if-nez v4, :cond_8

    .line 80
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 82
    :cond_8
    iput-boolean v7, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 84
    iget-object v4, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStop()V

    goto :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 13

    .prologue
    .line 114
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SetVoiceShutterMode - Show Toast Message : mVoiceShutterValueOn is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v9

    if-nez v9, :cond_0

    .line 150
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-boolean v9, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    if-eqz v9, :cond_1

    .line 121
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "voice_photo"

    const/16 v11, 0x6a

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/lge/camera/ControllerFunction;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 123
    .local v0, retVal:Z
    if-nez v0, :cond_1

    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, voiceShutterSayMsg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 127
    .local v1, toastMsg:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0136

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, word_cheese:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0138

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, word_smile:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0139

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, word_whisky:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0135

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, word_kimchi:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b0137

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, word_lg:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b013a

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, word_torimasu:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVoiceShutterJapanese()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 135
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b013f

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    const/4 v10, 0x3

    aput-object v7, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_1
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v1}, Lcom/lge/camera/ControllerFunction;->toastMiddleLong(Ljava/lang/String;)V

    .line 148
    .end local v0           #retVal:Z
    .end local v1           #toastMsg:Ljava/lang/String;
    .end local v2           #voiceShutterSayMsg:Ljava/lang/String;
    .end local v3           #word_cheese:Ljava/lang/String;
    .end local v4           #word_kimchi:Ljava/lang/String;
    .end local v5           #word_lg:Ljava/lang/String;
    .end local v6           #word_smile:Ljava/lang/String;
    .end local v7           #word_torimasu:Ljava/lang/String;
    .end local v8           #word_whisky:Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerInitMenu()V

    .line 149
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    goto :goto_0

    .line 137
    .restart local v0       #retVal:Z
    .restart local v1       #toastMsg:Ljava/lang/String;
    .restart local v2       #voiceShutterSayMsg:Ljava/lang/String;
    .restart local v3       #word_cheese:Ljava/lang/String;
    .restart local v4       #word_kimchi:Ljava/lang/String;
    .restart local v5       #word_lg:Ljava/lang/String;
    .restart local v6       #word_smile:Ljava/lang/String;
    .restart local v7       #word_torimasu:Ljava/lang/String;
    .restart local v8       #word_whisky:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVoiceShutterAME()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b013f

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_3
    iget-object v9, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0b013e

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v8, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    const/4 v10, 0x4

    aput-object v5, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
