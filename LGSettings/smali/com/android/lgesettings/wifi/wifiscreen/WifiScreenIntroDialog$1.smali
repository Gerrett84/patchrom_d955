.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog$1;
.super Ljava/lang/Object;
.source "WifiScreenIntroDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 63
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 64
    const-string v1, "WifiScreenIntroDialog"

    const-string v2, "OK Button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, lWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;

    #calls: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->getWfdManager()Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenIntroDialog;)Lcom/lge/systemservice/core/wfdmanager/WfdManager;

    move-result-object v0

    .line 69
    if-nez v0, :cond_1

    .line 80
    .end local v0           #lWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v0       #lWfdManager:Lcom/lge/systemservice/core/wfdmanager/WfdManager;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/wfdmanager/WfdManager;->setWifiDisplayEnabled(Z)Z

    goto :goto_0
.end method
