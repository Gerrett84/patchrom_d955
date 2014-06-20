.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler_VZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/AirplaneModeEnabler_VZW;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 227
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-virtual {v0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->isVTCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$5;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 237
    return-void
.end method
