.class final Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$3;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    sget v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindowType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 215
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 217
    :cond_0
    return-void
.end method
