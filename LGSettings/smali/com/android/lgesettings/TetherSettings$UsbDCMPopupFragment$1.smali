.class Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

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

    .line 795
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    iget-object v1, v1, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->setUsbTethering(Z)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/TetherSettings;->access$100(Lcom/android/lgesettings/TetherSettings;Z)V

    .line 798
    iget-object v1, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    iget-object v1, v1, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/TetherSettings;->access$200(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$1;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    .line 801
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 802
    const/4 v0, 0x1

    .line 804
    :cond_0
    return v0
.end method
