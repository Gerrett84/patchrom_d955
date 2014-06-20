.class Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 129
    invoke-static {p2}, Lcom/android/lgesettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, batteryLevel:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/lgesettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, batteryStatus:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    .local v5, systemLocale:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, language:Ljava/lang/String;
    const-string v6, "ko"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #batteryStatus:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #systemLocale:Ljava/util/Locale;
    :cond_1
    :goto_0
    return-void

    .line 140
    .restart local v1       #batteryLevel:Ljava/lang/String;
    .restart local v2       #batteryStatus:Ljava/lang/String;
    .restart local v4       #language:Ljava/lang/String;
    .restart local v5       #systemLocale:Ljava/util/Locale;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080685

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, batterySummary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;

    #getter for: Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;
    invoke-static {v6}, Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/lgesettings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
