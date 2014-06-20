.class Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$3;
.super Landroid/content/BroadcastReceiver;
.source "PowerGaugePreference2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$3;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$3;->this$0:Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->mForceStopButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;->access$200(Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/lgesettings/fuelgauge/PowerGaugePreference2$3;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
