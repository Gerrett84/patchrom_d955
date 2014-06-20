.class Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveWarningPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, action:Ljava/lang/String;
    const-string v8, "com.lge.settings.POWER_SAVER_START"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 71
    const-string v8, "start"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 72
    .local v7, value:I
    const-string v8, "PowerSaveWarningPopupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "POWER_SAVE_START:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_save_enabled"

    invoke-static {v8, v9, v7}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    if-lez v7, :cond_2

    const/4 v8, 0x1

    :goto_0
    #calls: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finishDialog(Z)V
    invoke-static {v9, v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$000(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Z)V

    .line 82
    .end local v7           #value:I
    :cond_0
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 83
    const-string v8, "level"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 84
    .local v3, level:I
    const-string v8, "scale"

    const/16 v9, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 86
    .local v6, scale:I
    mul-int/lit8 v8, v3, 0x64

    div-int v2, v8, v6

    .line 87
    .local v2, battery:I
    const-string v8, "plugged"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 89
    .local v4, plugType:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    move-object/from16 v0, p1

    #calls: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getPowerSaveModeValue(Landroid/content/Context;)I
    invoke-static {v8, v0}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$100(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Landroid/content/Context;)I

    move-result v5

    .line 91
    .local v5, powerSaveModeValue:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$200(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$200(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    const v10, 0x7f08123d

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mBatteryImg:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$400(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/ImageView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v9}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$300(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/lgesettings/powersave/PowerSave;->getPopupBatteryImgId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    if-le v2, v5, :cond_5

    .line 114
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    const/4 v9, 0x1

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->noActivation:Z
    invoke-static {v8, v9}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$502(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Z)Z

    .line 115
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-virtual {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finish()V

    .line 127
    .end local v2           #battery:I
    .end local v3           #level:I
    .end local v4           #plugType:I
    .end local v5           #powerSaveModeValue:I
    .end local v6           #scale:I
    :cond_1
    :goto_2
    return-void

    .line 78
    .restart local v7       #value:I
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 99
    .end local v7           #value:I
    .restart local v2       #battery:I
    .restart local v3       #level:I
    .restart local v4       #plugType:I
    .restart local v5       #powerSaveModeValue:I
    .restart local v6       #scale:I
    :cond_3
    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$200(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    const v10, 0x7f08123d

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u200e"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 104
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$200(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    const v10, 0x7f08123d

    invoke-virtual {v9, v10}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 117
    :cond_5
    if-lez v4, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    const/4 v9, 0x1

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->noActivation:Z
    invoke-static {v8, v9}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->access$502(Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;Z)Z

    .line 119
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-virtual {v8}, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;->finish()V

    goto/16 :goto_2

    .line 124
    .end local v2           #battery:I
    .end local v3           #level:I
    .end local v4           #plugType:I
    .end local v5           #powerSaveModeValue:I
    .end local v6           #scale:I
    :cond_6
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_2
.end method
