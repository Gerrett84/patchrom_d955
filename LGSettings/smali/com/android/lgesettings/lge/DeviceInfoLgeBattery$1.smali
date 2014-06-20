.class Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoLgeBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 44
    invoke-static {p2}, Lcom/android/lgesettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, batteryLevel:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    invoke-virtual {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p2}, Lcom/android/lgesettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, batteryStatus:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    invoke-virtual {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v6, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 48
    .local v6, systemLocale:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, language:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    invoke-virtual {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, str_Discharging:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    invoke-virtual {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, str_Notcharging:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 54
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 58
    const-string v7, "ko"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 59
    :cond_1
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #batteryStatus:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #str_Discharging:Ljava/lang/String;
    .end local v5           #str_Notcharging:Ljava/lang/String;
    .end local v6           #systemLocale:Ljava/util/Locale;
    :cond_2
    :goto_0
    return-void

    .line 61
    .restart local v1       #batteryLevel:Ljava/lang/String;
    .restart local v2       #batteryStatus:Ljava/lang/String;
    .restart local v3       #language:Ljava/lang/String;
    .restart local v4       #str_Discharging:Ljava/lang/String;
    .restart local v5       #str_Notcharging:Ljava/lang/String;
    .restart local v6       #systemLocale:Ljava/util/Locale;
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
