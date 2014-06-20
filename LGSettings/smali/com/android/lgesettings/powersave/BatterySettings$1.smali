.class Lcom/android/lgesettings/powersave/BatterySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/powersave/BatterySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/BatterySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/BatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 148
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 151
    const-string v7, "level"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 152
    .local v4, level:I
    const-string v7, "scale"

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 154
    .local v5, scale:I
    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    const-string v8, "status"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/android/lgesettings/powersave/BatterySettings;->curStatus:I
    invoke-static {v7, v8}, Lcom/android/lgesettings/powersave/BatterySettings;->access$002(Lcom/android/lgesettings/powersave/BatterySettings;I)I

    .line 155
    const-string v7, "BatterySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Battery Status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, p2}, Lcom/android/lgesettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p2}, Lcom/android/lgesettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, batteryLevel:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/lgesettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, batteryStatus:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v6, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 161
    .local v6, systemLocale:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, language:Ljava/lang/String;
    const-string v7, "ko"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 164
    :cond_0
    invoke-static {v1}, Lcom/android/lgesettings/powersave/BatterySettings;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    :goto_0
    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    #getter for: Lcom/android/lgesettings/powersave/BatterySettings;->mBattery:Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;
    invoke-static {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->access$300(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    #getter for: Lcom/android/lgesettings/powersave/BatterySettings;->mPowerSave:Lcom/android/lgesettings/powersave/PowerSave;
    invoke-static {v8}, Lcom/android/lgesettings/powersave/BatterySettings;->access$200(Lcom/android/lgesettings/powersave/BatterySettings;)Lcom/android/lgesettings/powersave/PowerSave;

    move-result-object v8

    iget-object v9, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/powersave/BatterySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    mul-int/lit8 v10, v4, 0x64

    div-int/2addr v10, v5

    invoke-virtual {v8, v9, p2, v10}, Lcom/android/lgesettings/powersave/PowerSave;->getBatteryImgId(Landroid/content/res/Resources;Landroid/content/Intent;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/powersave/PowerSaveBatteryInfoPreference;->setIcon(I)V

    .line 171
    iget-object v7, p0, Lcom/android/lgesettings/powersave/BatterySettings$1;->this$0:Lcom/android/lgesettings/powersave/BatterySettings;

    #calls: Lcom/android/lgesettings/powersave/BatterySettings;->setExpectedTime()V
    invoke-static {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->access$400(Lcom/android/lgesettings/powersave/BatterySettings;)V

    .line 173
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #batteryStatus:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #scale:I
    .end local v6           #systemLocale:Ljava/util/Locale;
    :cond_1
    return-void

    .line 166
    .restart local v1       #batteryLevel:Ljava/lang/String;
    .restart local v2       #batteryStatus:Ljava/lang/String;
    .restart local v3       #language:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #scale:I
    .restart local v6       #systemLocale:Ljava/util/Locale;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080685

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v10

    aput-object v2, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/lgesettings/powersave/BatterySettings;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
