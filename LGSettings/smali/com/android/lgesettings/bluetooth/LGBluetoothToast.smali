.class final Lcom/android/lgesettings/bluetooth/LGBluetoothToast;
.super Ljava/lang/Object;
.source "LGBluetoothToast.java"


# static fields
.field private static mRedId:I

.field private static mText:Ljava/lang/CharSequence;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static displayHIDGuideToast(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "context"
    .parameter "device"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 35
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 38
    .local v2, devClass:I
    and-int/lit16 v0, v2, 0xff

    .line 39
    .local v0, HidCod:I
    const-string v3, "LGBluetoothToast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] displayHIDGuideToast : devClass ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") HidCod ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    and-int/lit16 v3, v0, 0x540

    if-eqz v3, :cond_0

    .line 46
    const-string v3, "LGBluetoothToast"

    const-string v4, "[BTUI] Keyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const v3, 0x7f0814ba

    invoke-static {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    .line 63
    .end local v0           #HidCod:I
    .end local v2           #devClass:I
    :goto_0
    return-void

    .line 49
    .restart local v0       #HidCod:I
    .restart local v2       #devClass:I
    :cond_0
    and-int/lit16 v3, v0, 0x580

    if-eqz v3, :cond_1

    .line 50
    const-string v3, "LGBluetoothToast"

    const-string v4, "[BTUI] Mouse"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v3, 0x7f0814b9

    invoke-static {p0, v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->displayToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 53
    :cond_1
    and-int/lit16 v3, v0, 0x504

    if-eqz v3, :cond_2

    .line 54
    const-string v3, "LGBluetoothToast"

    const-string v4, "[BTUI] Joystick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_2
    const-string v3, "LGBluetoothToast"

    const-string v4, "[BTUI] no display Toast : Other HID device (Gamepad, Remote control, etc)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0           #HidCod:I
    .end local v2           #devClass:I
    :cond_3
    const-string v3, "LGBluetoothToast"

    const-string v4, "[BTUI] btClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static displayToast(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 67
    sget v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mRedId:I

    if-eq v0, p1, :cond_2

    .line 68
    sput p1, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mRedId:I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    .line 75
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    .line 77
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method static displayToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "text"

    .prologue
    .line 83
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    :cond_0
    sput-object p1, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mText:Ljava/lang/CharSequence;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    .line 91
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    .line 93
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_2
    :goto_0
    return-void

    .line 87
    :cond_3
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method
