.class Lcom/android/lgesettings/wifi/WifiApEnabler$18;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;->CreateWarningDialogForKDDI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

.field final synthetic val$donotshow:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$18;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    iput-object p2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$18;->val$donotshow:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 1746
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$18;->val$donotshow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$18;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$200(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TETHER_POPUP_KDDI"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1749
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$18;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$900(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$18;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-virtual {v0, v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1752
    :cond_1
    return-void
.end method
