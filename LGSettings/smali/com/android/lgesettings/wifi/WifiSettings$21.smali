.class Lcom/android/lgesettings/wifi/WifiSettings$21;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettings;->showSktCmAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 3213
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$21;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 3216
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 3217
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$21;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #calls: Lcom/android/lgesettings/wifi/WifiSettings;->InitSktCmFirstFlag()V
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1500(Lcom/android/lgesettings/wifi/WifiSettings;)V

    .line 3218
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettings$21;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #setter for: Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z
    invoke-static {v1, v0}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1602(Lcom/android/lgesettings/wifi/WifiSettings;Z)Z

    .line 3219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3220
    const/4 v0, 0x1

    .line 3222
    :cond_0
    return v0
.end method
