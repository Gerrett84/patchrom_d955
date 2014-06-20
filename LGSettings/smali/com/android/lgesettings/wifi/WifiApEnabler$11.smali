.class Lcom/android/lgesettings/wifi/WifiApEnabler$11;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiApEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$11;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1186
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 1187
    const-string v2, "WifiApEnabler"

    const-string v3, "[myseokil] alertDialogHandler - KEYCODE_BACK"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$11;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v2, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 1191
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$11;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1193
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    .line 1194
    invoke-static {}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->getInstance()Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$11;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/wifi/MDMWifiSettingsAdapter;->setWifiApEnablerMenu(Landroid/widget/Switch;)Z

    .line 1197
    :cond_0
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$1402(Z)Z

    .line 1198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1201
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
