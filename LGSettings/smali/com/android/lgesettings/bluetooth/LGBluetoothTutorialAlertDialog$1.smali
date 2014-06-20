.class Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$1;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;->buildBtTutorialAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

.field final synthetic val$alertCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$1;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$1;->val$alertCheck:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialAlertDialog$1;->val$alertCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "LGBluetoothTutorialAlertDialog"

    const-string v1, "Checked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, "LGBluetoothTutorialAlertDialog"

    const-string v1, "unChecked!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
