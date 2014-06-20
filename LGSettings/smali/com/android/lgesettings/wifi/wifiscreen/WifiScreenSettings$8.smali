.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$8;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$8;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 697
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$8;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->cancelWifiDisplayConnect()Z

    .line 700
    :cond_0
    return-void
.end method
