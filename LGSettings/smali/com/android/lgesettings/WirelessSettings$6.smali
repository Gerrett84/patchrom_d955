.class Lcom/android/lgesettings/WirelessSettings$6;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1245
    iput-object p1, p0, Lcom/android/lgesettings/WirelessSettings$6;->this$0:Lcom/android/lgesettings/WirelessSettings;

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

    .line 1247
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$6;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$6;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #getter for: Lcom/android/lgesettings/WirelessSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$100(Lcom/android/lgesettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1249
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$6;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->gotoNextStep(Z)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/WirelessSettings;->access$1000(Lcom/android/lgesettings/WirelessSettings;Z)V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/WirelessSettings$6;->this$0:Lcom/android/lgesettings/WirelessSettings;

    #calls: Lcom/android/lgesettings/WirelessSettings;->updateState()V
    invoke-static {v0}, Lcom/android/lgesettings/WirelessSettings;->access$200(Lcom/android/lgesettings/WirelessSettings;)V

    .line 1252
    return-void
.end method
