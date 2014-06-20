.class public final Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsActivity;
.super Landroid/app/Activity;
.source "LGBluetoothHiddenSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/bluetooth/LGBluetoothHiddenSettingsActivity;->setContentView(I)V

    .line 26
    return-void
.end method
