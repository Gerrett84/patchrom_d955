.class Lcom/android/lgesettings/TetherSettings$9;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherSettings;->CreateWarningDialogForDCM()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$9;->this$0:Lcom/android/lgesettings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$9;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$1900(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApEnabler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$9;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$500(Lcom/android/lgesettings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$9;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mWifiApEnabler:Lcom/android/lgesettings/wifi/WifiApEnabler;
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$1900(Lcom/android/lgesettings/TetherSettings;)Lcom/android/lgesettings/wifi/WifiApEnabler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 2119
    :cond_0
    return-void
.end method
