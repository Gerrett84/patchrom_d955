.class Lcom/android/lgesettings/TetherNetworkSettings$19;
.super Landroid/telephony/PhoneStateListener;
.source "TetherNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherNetworkSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/lgesettings/TetherNetworkSettings$19;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$19;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/TetherNetworkSettings;->csActive:Z

    .line 1076
    :goto_0
    return-void

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TetherNetworkSettings$19;->this$0:Lcom/android/lgesettings/TetherNetworkSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/lgesettings/TetherNetworkSettings;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1080
    return-void
.end method
