.class Lcom/android/lgesettings/UnCryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UnCryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/UnCryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/UnCryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    const-string v6, "level"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 78
    .local v2, level:I
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 79
    .local v4, plugged:I
    const-string v6, "invalid_charger"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, invalidCharger:I
    const/16 v6, 0x50

    if-lt v2, v6, :cond_1

    const/4 v3, 0x1

    .line 82
    .local v3, levelOk:Z
    :goto_0
    and-int/lit8 v6, v4, 0x7

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    const/4 v5, 0x1

    .line 87
    .local v5, pluggedOk:Z
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$000(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$100(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v5, :cond_4

    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$200(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_5

    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$200(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    const v8, 0x7f080f2a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/lgesettings/UnCryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$100(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f080f2b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 96
    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 97
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$100(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    const v8, 0x7f080f2c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/lgesettings/UnCryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$200(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v4           #plugged:I
    .end local v5           #pluggedOk:Z
    :cond_0
    :goto_5
    return-void

    .line 81
    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v4       #plugged:I
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 82
    .restart local v3       #levelOk:Z
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 87
    .restart local v5       #pluggedOk:Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 88
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 89
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 101
    :cond_6
    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    .line 102
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$100(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f08014c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$200(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 105
    :cond_7
    if-nez v5, :cond_8

    if-nez v3, :cond_8

    .line 106
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$200(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f080ef6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$100(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 110
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/UnCryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/UnCryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/UnCryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/UnCryptKeeperSettings;->access$100(Lcom/android/lgesettings/UnCryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f08014c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method
