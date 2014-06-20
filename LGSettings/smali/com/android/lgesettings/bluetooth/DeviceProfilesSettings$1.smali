.class Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 128
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v1       #state:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
