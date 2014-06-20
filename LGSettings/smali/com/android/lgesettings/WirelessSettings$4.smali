.class Lcom/android/lgesettings/WirelessSettings$4;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/WirelessSettings;->onCreateBluetoothTetherAlertDialg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$4;->this$0:Lcom/android/lgesettings/WirelessSettings;

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

    .line 1220
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings$4;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings$4;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1223
    iget-object v1, p0, Lcom/android/lgesettings/WirelessSettings$4;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V
    invoke-static {v1, v0}, Lcom/android/lgesettings/WirelessSettings;->access$1000(Lcom/android/lgesettings/WirelessSettings;Z)V

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$4;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    .line 1227
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1228
    const/4 v0, 0x1

    .line 1230
    :cond_1
    return v0
.end method
