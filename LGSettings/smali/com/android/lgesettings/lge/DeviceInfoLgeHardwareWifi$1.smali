.class Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;
.super Ljava/lang/Object;
.source "DeviceInfoLgeHardwareWifi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field strResponseData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->strResponseData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    const-string v1, "m_display_run1 (4010 , Request .. serial number)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/16 v0, 0xfaa

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    invoke-virtual {v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/lge/ATClientUtils;->atClient_readValue(ILandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->strResponseData:Ljava/lang/String;

    .line 134
    const-string v0, "aboutphone #DeviceinfolgePhoneidentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serial Number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->strResponseData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    const-string v2, "serial_number"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRev:Landroid/preference/Preference;
    invoke-static {v0, v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->access$002(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 137
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRev:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->mRev:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeHardwareWifi$1;->strResponseData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method
