.class Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;
.super Ljava/lang/Object;
.source "LGBluetoothDutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings;

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothDutSettings$9;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 624
    return-void
.end method
