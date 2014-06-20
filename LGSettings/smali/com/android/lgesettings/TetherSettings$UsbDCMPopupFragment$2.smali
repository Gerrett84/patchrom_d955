.class Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 808
    iput-object p1, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->setUsbTethering(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/TetherSettings;->access$100(Lcom/android/lgesettings/TetherSettings;Z)V

    .line 812
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #getter for: Lcom/android/lgesettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$200(Lcom/android/lgesettings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 813
    iget-object v0, p0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment$2;->this$1:Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;

    iget-object v0, v0, Lcom/android/lgesettings/TetherSettings$UsbDCMPopupFragment;->this$0:Lcom/android/lgesettings/TetherSettings;

    #calls: Lcom/android/lgesettings/TetherSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/TetherSettings;->access$300(Lcom/android/lgesettings/TetherSettings;)V

    .line 814
    return-void
.end method
