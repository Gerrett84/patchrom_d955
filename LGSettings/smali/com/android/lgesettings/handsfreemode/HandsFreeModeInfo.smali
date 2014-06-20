.class public Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
.super Ljava/lang/Object;
.source "HandsFreeModeInfo.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    .line 25
    return-void
.end method


# virtual methods
.method public getDBHandsFreeModeCall()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hands_free_mode_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HandsFreeModeInfo"

    const-string v3, "SettingNotFoundException - getDBHandsFreeModeCall()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeCall(I)V

    goto :goto_0
.end method

.method public getDBHandsFreeModeMessage()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hands_free_mode_message"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HandsFreeModeInfo"

    const-string v3, "SettingNotFoundException - getDBHandsFreeModeMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeReadMessage(I)V

    goto :goto_0
.end method

.method public getDBHandsFreeModeReadMessage()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hands_free_mode_read_message"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HandsFreeModeInfo"

    const-string v3, "SettingNotFoundException - getDBHandsFreeModeReadMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeReadMessage(I)V

    goto :goto_0
.end method

.method public getDBHandsFreeModeState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hands_free_mode_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HandsFreeModeInfo"

    const-string v3, "SettingNotFoundException - getDBHandsFreeModeState()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeState(I)V

    goto :goto_0
.end method

.method public isEmptyCheckHandsFreeMode()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeCall()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->getDBHandsFreeModeMessage()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDBHandsFreeModeCall(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hands_free_mode_call"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    return-void
.end method

.method public setDBHandsFreeModeMessage(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hands_free_mode_message"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    return-void
.end method

.method public setDBHandsFreeModeReadMessage(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hands_free_mode_read_message"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    return-void
.end method

.method public setDBHandsFreeModeState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hands_free_mode_status"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    return-void
.end method
