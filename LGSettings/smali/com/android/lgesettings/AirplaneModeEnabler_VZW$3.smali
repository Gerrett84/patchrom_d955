.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$3;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler_VZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AirplaneModeEnabler_VZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/lgesetting/Config/Config;->isVZWAdminDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 181
    .local v0, value:Z
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$3;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$600(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/widget/Switch;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 186
    :cond_0
    return-void

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
