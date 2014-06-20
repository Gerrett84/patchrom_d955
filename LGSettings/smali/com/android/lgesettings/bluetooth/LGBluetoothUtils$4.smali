.class final Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;
.super Ljava/lang/Object;
.source "LGBluetoothUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->askIncomingSecurity(Landroid/content/Context;Landroid/preference/Preference;Lcom/android/lgesettings/bluetooth/CachedBluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Landroid/preference/Preference;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;->val$pref:Landroid/preference/Preference;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 320
    if-nez p2, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f0814c7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 322
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 327
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 328
    return-void

    .line 323
    :cond_1
    if-ne p2, v2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f0814c6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    goto :goto_0
.end method
