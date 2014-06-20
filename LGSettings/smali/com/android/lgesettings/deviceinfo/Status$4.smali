.class Lcom/android/lgesettings/deviceinfo/Status$4;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$4;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, action:Ljava/lang/String;
    const-string v1, "aboutphone # Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$4;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1400(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$4;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1400(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p2}, Lcom/android/lgesettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$4;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1500(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/android/lgesettings/deviceinfo/Status$4;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/deviceinfo/Status;->access$1500(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/deviceinfo/Status$4;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v2}, Lcom/android/lgesettings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/lgesettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    :cond_1
    return-void
.end method
