.class Lcom/android/lgesettings/MasterClearConfirm$3;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/lgesettings/MasterClearConfirm$3;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    const-string v4, "level"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 525
    .local v2, level:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 527
    .local v3, scale:I
    mul-int/lit8 v4, v2, 0x64

    div-int v1, v4, v3

    .line 528
    .local v1, battery:I
    const-string v4, "MasterClearConfirm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v4, p0, Lcom/android/lgesettings/MasterClearConfirm$3;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #setter for: Lcom/android/lgesettings/MasterClearConfirm;->mBatteryLevel:I
    invoke-static {v4, v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$902(Lcom/android/lgesettings/MasterClearConfirm;I)I

    .line 530
    iget-object v4, p0, Lcom/android/lgesettings/MasterClearConfirm$3;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #calls: Lcom/android/lgesettings/MasterClearConfirm;->checkBatteryLevel()V
    invoke-static {v4}, Lcom/android/lgesettings/MasterClearConfirm;->access$1000(Lcom/android/lgesettings/MasterClearConfirm;)V

    .line 532
    .end local v1           #battery:I
    .end local v2           #level:I
    .end local v3           #scale:I
    :cond_0
    return-void
.end method
