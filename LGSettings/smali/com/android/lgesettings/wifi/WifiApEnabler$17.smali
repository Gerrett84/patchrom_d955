.class Lcom/android/lgesettings/wifi/WifiApEnabler$17;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$17;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1734
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 1735
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$17;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #calls: Lcom/android/lgesettings/wifi/WifiApEnabler;->setSwitchChecked(Z)V
    invoke-static {v2, v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$000(Lcom/android/lgesettings/wifi/WifiApEnabler;Z)V

    .line 1736
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiApEnabler$17;->this$0:Lcom/android/lgesettings/wifi/WifiApEnabler;

    #getter for: Lcom/android/lgesettings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiApEnabler;->access$100(Lcom/android/lgesettings/wifi/WifiApEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1737
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1740
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
