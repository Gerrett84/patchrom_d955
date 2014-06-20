.class Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveBatteryDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    const-string v1, "refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #calls: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshInformation()V
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$000(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V

    .line 184
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    const-string v1, "level"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$102(I)I

    .line 186
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    const-string v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$202(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;I)I

    .line 188
    const-string v1, "PowerSaveBatteryDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    invoke-virtual {v3}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/lgesettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$200(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$200(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 192
    :cond_1
    invoke-static {v5}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$302(I)I

    .line 197
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$300()I

    move-result v1

    invoke-static {}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$400()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$200(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->status:I
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$200(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 200
    :cond_2
    invoke-static {v5}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$402(I)I

    .line 204
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;

    #calls: Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->refreshInformation()V
    invoke-static {v1}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$000(Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;)V

    .line 207
    :cond_3
    return-void

    .line 194
    :cond_4
    invoke-static {v4}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$302(I)I

    goto :goto_0

    .line 202
    :cond_5
    invoke-static {v4}, Lcom/android/lgesettings/fuelgauge/PowerSaveBatteryDetail;->access$402(I)I

    goto :goto_1
.end method
