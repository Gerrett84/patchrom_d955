.class Lcom/android/lgesettings/BrightnessPreference$3;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/BrightnessPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/lgesettings/BrightnessPreference$3;->this$0:Lcom/android/lgesettings/BrightnessPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/lgesettings/BrightnessPreference$3;->this$0:Lcom/android/lgesettings/BrightnessPreference;

    const-string v1, "temperature"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/lgesettings/BrightnessPreference;->mBatteryTemperature:I
    invoke-static {v0, v1}, Lcom/android/lgesettings/BrightnessPreference;->access$302(Lcom/android/lgesettings/BrightnessPreference;I)I

    .line 800
    const-string v0, "hong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryTemp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/BrightnessPreference$3;->this$0:Lcom/android/lgesettings/BrightnessPreference;

    #getter for: Lcom/android/lgesettings/BrightnessPreference;->mBatteryTemperature:I
    invoke-static {v2}, Lcom/android/lgesettings/BrightnessPreference;->access$300(Lcom/android/lgesettings/BrightnessPreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method
