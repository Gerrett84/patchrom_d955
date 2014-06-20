.class Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$1;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 89
    return-void
.end method
