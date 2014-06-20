.class public Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialUtils.java"


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static mBtTutorialBR:Landroid/content/BroadcastReceiver;

.field private static mBtTutorialBRFilter:Landroid/content/IntentFilter;

.field private static marginSizeInLandscape:I

.field public static widthInLandscape:I

.field public static widthInPortrait:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 5
    .parameter "activity"
    .parameter "btTutorialBR"
    .parameter "btTutorialBRFilter"

    .prologue
    const v4, 0x40ea8f5c

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sput-object p1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    .line 57
    sput-object p2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBR:Landroid/content/BroadcastReceiver;

    .line 58
    sput-object p3, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBRFilter:Landroid/content/IntentFilter;

    .line 64
    sget v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInLandscape:I

    if-eqz v2, :cond_0

    sget v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInPortrait:I

    if-nez v2, :cond_1

    .line 65
    :cond_0
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .local v0, width1:I
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    .local v1, width2:I
    const v2, 0x1fa400

    mul-int v3, v0, v1

    if-ne v2, v3, :cond_2

    .line 69
    const v2, 0x42fb570a

    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->marginSizeInLandscape:I

    .line 75
    :goto_0
    if-le v0, v1, :cond_3

    .line 76
    sget v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->marginSizeInLandscape:I

    sub-int v2, v0, v2

    sput v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInLandscape:I

    .line 77
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    sput v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInPortrait:I

    .line 86
    .end local v0           #width1:I
    .end local v1           #width2:I
    :cond_1
    :goto_1
    return-void

    .line 72
    .restart local v0       #width1:I
    .restart local v1       #width2:I
    :cond_2
    const v2, 0x42e2a8f6

    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->marginSizeInLandscape:I

    goto :goto_0

    .line 80
    :cond_3
    sget v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->marginSizeInLandscape:I

    sub-int v2, v1, v2

    sput v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInLandscape:I

    .line 81
    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    sput v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInPortrait:I

    goto :goto_1
.end method

.method public static dip2px(F)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 89
    const/4 v1, 0x1

    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 93
    .local v0, px:I
    return v0
.end method

.method public static getHelpAppValue()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 149
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 150
    const-string v2, "LGBluetoothTutorialUtils"

    const-string v3, "mActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .local v0, helpAppValue:I
    :goto_0
    return v0

    .line 159
    .end local v0           #helpAppValue:I
    :cond_0
    const-string v2, "VZW"

    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_interactive_help_tips"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #helpAppValue:I
    goto :goto_0

    .line 165
    .end local v0           #helpAppValue:I
    :cond_1
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    const-string v3, "Bt_Tutorial_Set_Pref_Name"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, tutorialPref:Landroid/content/SharedPreferences;
    const-string v2, "Bt_Tutorial_Set_Pref_Key"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #helpAppValue:I
    goto :goto_0
.end method

.method public static isHelpAppValueON()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 174
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->getHelpAppValue()I

    move-result v0

    .line 176
    .local v0, helpAppValue:I
    if-ne v1, v0, :cond_0

    .line 177
    const-string v2, "LGBluetoothTutorialUtils"

    const-string v3, "isHelpAppValueON() returns true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return v1

    .line 181
    :cond_0
    const-string v1, "LGBluetoothTutorialUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHelpAppValueON() returns false, HelpAppValue is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHelpAppValueONandShowing()Z
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->getHelpAppValue()I

    move-result v0

    .line 202
    .local v0, helpAppValue:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 203
    const-string v1, "LGBluetoothTutorialUtils"

    const-string v2, "isHelpAppValueONandShowing() returns true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    .line 207
    :cond_0
    const-string v1, "LGBluetoothTutorialUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHelpAppValueONandShowing() returns false, HelpAppValue is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerBtTutorialReceiver()V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBRFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    const-string v0, "LGBluetoothTutorialUtils"

    const-string v1, "registerBtTutorialReceiver(), mBtTutorial or mBtTutorialBRFilter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-boolean v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->btTutorialReceiverRegistered:Z

    if-nez v0, :cond_2

    .line 106
    const-string v0, "LGBluetoothTutorialUtils"

    const-string v1, "registerBtTutorialReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBR:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBRFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->btTutorialReceiverRegistered:Z

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "LGBluetoothTutorialUtils"

    const-string v1, "registerBtTutorialReceiver(), already registred"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setHelpAppValue(I)V
    .locals 5
    .parameter "setValue"

    .prologue
    .line 214
    const-string v2, "LGBluetoothTutorialUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHelpAppValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v2, "VZW"

    invoke-static {}, Lcom/lge/bluetooth/LGBluetoothFeatureConfig;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_interactive_help_tips"

    invoke-static {v2, v3, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    const-string v3, "Bt_Tutorial_Set_Pref_Name"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 223
    .local v1, tutorialPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, editTutorialPref:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Bt_Tutorial_Set_Pref_Key"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setHelpAppValueOFF()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "LGBluetoothTutorialUtils"

    const-string v1, "set HelpAppValue to BT_TUTORIAL_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValue(I)V

    .line 249
    return-void
.end method

.method public static setHelpAppValueON()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "LGBluetoothTutorialUtils"

    const-string v1, "set HelpAppValue to BT_TUTORIAL_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValue(I)V

    .line 242
    return-void
.end method

.method public static setHelpAppValueONandShowing()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "LGBluetoothTutorialUtils"

    const-string v1, "set HelpAppValue to BT_TUTORIAL_ON_AND_SHOWING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValue(I)V

    .line 235
    return-void
.end method

.method public static unregisterBtTutorialReceiver()V
    .locals 3

    .prologue
    .line 120
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBR:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 121
    const-string v1, "LGBluetoothTutorialUtils"

    const-string v2, "unregisterBtTutorialReceiver(), mBtTutorialBR is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-boolean v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->btTutorialReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "LGBluetoothTutorialUtils"

    const-string v2, "unregisterBtTutorialReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->mBtTutorialBR:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopupReceiver;->btTutorialReceiverRegistered:Z

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 134
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LGBluetoothTutorialUtils"

    const-string v2, "Exception handling, May be receiver is not registered. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v1, "LGBluetoothTutorialUtils"

    const-string v2, "unregisterBtTutorialReceiver(), already unregistred"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
