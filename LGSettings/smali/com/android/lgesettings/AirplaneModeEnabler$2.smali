.class Lcom/android/lgesettings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$300(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 152
    .local v0, airplaneModeEnabled:Z
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$600(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    const-string v1, "Airplanemodeenabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentObserver - fromSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-boolean v3, v3, Lcom/android/lgesettings/AirplaneModeEnabler;->fromSettings:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$300(Lcom/android/lgesettings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-boolean v1, v1, Lcom/android/lgesettings/AirplaneModeEnabler;->fromSettings:Z

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$100(Lcom/android/lgesettings/AirplaneModeEnabler;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iget-boolean v1, v1, Lcom/android/lgesettings/AirplaneModeEnabler;->fromSettings:Z

    if-nez v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    #calls: Lcom/android/lgesettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler;)V

    .line 161
    invoke-static {v4}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$402(Z)Z

    .line 167
    :goto_0
    const-string v1, "Airplanemodeenabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentObserver - airplanemode_on_off ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/lgesettings/AirplaneModeEnabler;->access$400()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler$2;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler;

    iput-boolean v4, v1, Lcom/android/lgesettings/AirplaneModeEnabler;->fromSettings:Z

    goto :goto_0
.end method
