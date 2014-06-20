.class final Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;
.super Ljava/lang/Object;
.source "LGBluetoothUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothUtils;->setOnKeyListenerForHiddenMenu(Landroid/content/Context;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final BTUI_ENTER_KEY:Ljava/lang/String;

.field private enterBTHidden:Ljava/lang/String;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const-string v0, "2233"

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->BTUI_ENTER_KEY:Ljava/lang/String;

    .line 378
    const-string v0, ""

    iput-object v0, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 382
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 383
    sparse-switch p2, :sswitch_data_0

    .line 394
    const-string v1, "fail"

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    .line 397
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    const-string v2, "2233"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.btui.action_btui_hidden_ics"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 401
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 404
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 385
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    goto :goto_0

    .line 388
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    goto :goto_0

    .line 391
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothUtils$6;->enterBTHidden:Ljava/lang/String;

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
