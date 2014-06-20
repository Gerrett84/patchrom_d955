.class Lcom/android/lgesettings/powersave/PowerSaveService$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/powersave/PowerSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/PowerSaveService;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x1000

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    const-string v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 65
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v2, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$002(Lcom/android/lgesettings/powersave/PowerSaveService;I)I

    .line 68
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveModeValue(Landroid/content/Context;)I
    invoke-static {v0, p1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$100(Lcom/android/lgesettings/powersave/PowerSaveService;Landroid/content/Context;)I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0, v2}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$202(Lcom/android/lgesettings/powersave/PowerSaveService;I)I

    .line 72
    const-string v2, "PowerSaveService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerSaveStarted : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true, "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mCurrentBatteryLevel : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v3}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", powerSaveModeValue : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", plugType : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v3}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$200(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$200(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-lez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v8}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 82
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$500(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->doRestore()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->updatePowerControl()V

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z

    .line 91
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    .line 92
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v6}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$800(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 212
    :cond_1
    :goto_1
    return-void

    .line 72
    :cond_2
    const-string v0, "false, "

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$200(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-lez v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v8}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    goto :goto_1

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$200(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-gt v0, v1, :cond_5

    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->checkCondition()Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$900(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->startActivity(Landroid/content/Intent;)V

    .line 103
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v5}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z

    goto :goto_1

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    const/4 v2, 0x3

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v2}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$500(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->doRestore()V

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z

    .line 119
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    .line 120
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v6}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$800(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 123
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->updatePowerControl()V

    goto/16 :goto_1

    .line 127
    :cond_7
    const-string v1, "com.android.lgesettings.powersave.action.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 128
    const-string v0, "PowerSaveService"

    const-string v1, "PowerSave.ACTION_POWERSAVE_MODE_CHANGED received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveModeValue(Landroid/content/Context;)I
    invoke-static {v0, p1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$100(Lcom/android/lgesettings/powersave/PowerSaveService;Landroid/content/Context;)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$200(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v1

    if-gt v1, v0, :cond_8

    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->checkCondition()Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$900(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->startActivity(Landroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v5}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z

    goto/16 :goto_1

    .line 141
    :cond_8
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    const/4 v2, 0x3

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 142
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v1, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    .line 143
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$300(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$000(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$500(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->doRestore()V

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v6}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$800(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 158
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->updatePowerControl()V

    goto/16 :goto_1

    .line 163
    :cond_a
    const-string v1, "com.android.lgesettings.powersave.POWERSAVE_ACTIVATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 164
    const-string v0, "powersave_activation"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    if-ne v0, v5, :cond_b

    .line 166
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->doPowerSave()V

    .line 169
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->endNotification()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$1000(Lcom/android/lgesettings/powersave/PowerSaveService;)V

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v5}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v5}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$800(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 173
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v5}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    .line 176
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #getter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$600(Lcom/android/lgesettings/powersave/PowerSaveService;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->updatePowerControl()V

    goto/16 :goto_1

    .line 178
    :cond_b
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->endNotification()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$1000(Lcom/android/lgesettings/powersave/PowerSaveService;)V

    .line 180
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 181
    const/16 v1, 0x64

    if-ne v0, v1, :cond_c

    .line 182
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_enabled"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->stopSelf()V

    goto/16 :goto_1

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 186
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$800(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    .line 188
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$700(Lcom/android/lgesettings/powersave/PowerSaveService;Z)V

    goto/16 :goto_1

    .line 192
    :cond_d
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 194
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$500(Lcom/android/lgesettings/powersave/PowerSaveService;)I

    move-result v0

    .line 195
    if-le v0, v6, :cond_1

    .line 196
    const-string v1, "PowerSaveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_LOCALE_CHANGED receive, POWER_SAVE_STARTED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$400(Lcom/android/lgesettings/powersave/PowerSaveService;I)V

    goto/16 :goto_1

    .line 202
    :cond_e
    const-string v1, "com.android.lgesettings.powersave.POWERSAVE_GO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #calls: Lcom/android/lgesettings/powersave/PowerSaveService;->checkCondition()Z
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$900(Lcom/android/lgesettings/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/powersave/PowerSaveService;->startActivity(Landroid/content/Intent;)V

    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSaveService$1;->this$0:Lcom/android/lgesettings/powersave/PowerSaveService;

    #setter for: Lcom/android/lgesettings/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v5}, Lcom/android/lgesettings/powersave/PowerSaveService;->access$302(Lcom/android/lgesettings/powersave/PowerSaveService;Z)Z

    goto/16 :goto_1
.end method
