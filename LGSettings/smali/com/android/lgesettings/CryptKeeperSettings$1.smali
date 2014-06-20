.class Lcom/android/lgesettings/CryptKeeperSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/CryptKeeperSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    const-string v6, "level"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, level:I
    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, plugged:I
    const-string v6, "invalid_charger"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, invalidCharger:I
    const/16 v6, 0x50

    if-lt v2, v6, :cond_1

    const/4 v3, 0x1

    .line 85
    .local v3, levelOk:Z
    :goto_0
    and-int/lit8 v6, v4, 0x7

    if-eqz v6, :cond_2

    if-nez v1, :cond_2

    const/4 v5, 0x1

    .line 90
    .local v5, pluggedOk:Z
    :goto_1
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$000(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$100(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v5, :cond_4

    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$200(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_5

    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$200(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    const v8, 0x7f080f2a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/lgesettings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$100(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f080f2b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const-string v6, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 100
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$100(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    const v8, 0x7f080f2c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/lgesettings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$200(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v4           #plugged:I
    .end local v5           #pluggedOk:Z
    :cond_0
    :goto_5
    return-void

    .line 84
    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v4       #plugged:I
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 85
    .restart local v3       #levelOk:Z
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 90
    .restart local v5       #pluggedOk:Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 92
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 93
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 104
    :cond_6
    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    .line 105
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$100(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f08014c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$200(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 108
    :cond_7
    if-nez v5, :cond_8

    if-nez v3, :cond_8

    .line 109
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$200(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f080ef6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$100(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 113
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/CryptKeeperSettings$1;->this$0:Lcom/android/lgesettings/CryptKeeperSettings;

    #getter for: Lcom/android/lgesettings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/lgesettings/CryptKeeperSettings;->access$100(Lcom/android/lgesettings/CryptKeeperSettings;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f08014c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5
.end method
