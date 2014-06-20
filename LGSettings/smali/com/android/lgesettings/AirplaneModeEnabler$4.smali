.class Lcom/android/lgesettings/AirplaneModeEnabler$4;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 244
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/lgesettings/AirplaneModeEnabler;->isVTCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler$4;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/lgesettings/AirplaneModeEnabler;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 253
    return-void
.end method
