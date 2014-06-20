.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "WifiScreenSettings.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Utf8ByteLengthFilter"
.end annotation


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMaxBytes:I

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;I)V
    .locals 2
    .parameter
    .parameter "maxBytes"

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 1458
    iget-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 1462
    iput p2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mMaxBytes:I

    .line 1463
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 1467
    const/4 v5, 0x0

    .line 1469
    .local v5, srcByteCount:I
    move v3, p2

    .local v3, i:I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 1470
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1471
    .local v0, c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    add-int/2addr v5, v6

    .line 1469
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1471
    :cond_0
    const/16 v6, 0x800

    if-ge v0, v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    .line 1473
    .end local v0           #c:C
    :cond_2
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 1474
    .local v2, destLen:I
    const/4 v1, 0x0

    .line 1476
    .local v1, destByteCount:I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_7

    .line 1477
    if-lt v3, p5, :cond_3

    if-lt v3, p6, :cond_4

    .line 1478
    :cond_3
    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 1479
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    add-int/2addr v1, v6

    .line 1476
    .end local v0           #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1479
    .restart local v0       #c:C
    :cond_5
    const/16 v6, 0x800

    if-ge v0, v6, :cond_6

    const/4 v6, 0x2

    goto :goto_3

    :cond_6
    const/4 v6, 0x3

    goto :goto_3

    .line 1482
    .end local v0           #c:C
    :cond_7
    iget v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int v4, v6, v1

    .line 1483
    .local v4, keepBytes:I
    if-gtz v4, :cond_a

    .line 1485
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1486
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1489
    :cond_8
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v6, :cond_9

    .line 1490
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f080e08

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 1493
    :cond_9
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1495
    const-string v6, ""

    .line 1520
    :goto_4
    return-object v6

    .line 1496
    :cond_a
    if-lt v4, v5, :cond_b

    .line 1497
    const/4 v6, 0x0

    goto :goto_4

    .line 1500
    :cond_b
    move v3, p2

    :goto_5
    if-ge v3, p3, :cond_11

    .line 1501
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1502
    .restart local v0       #c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_e

    const/4 v6, 0x1

    :goto_6
    sub-int/2addr v4, v6

    .line 1503
    if-gez v4, :cond_10

    .line 1505
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 1506
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->mDeviceNameText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->access$1600(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1508
    :cond_c
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez v6, :cond_d

    .line 1509
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;

    invoke-virtual {v6}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f080e08

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    .line 1512
    :cond_d
    iget-object v6, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenSettings$Utf8ByteLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1514
    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    .line 1502
    :cond_e
    const/16 v6, 0x800

    if-ge v0, v6, :cond_f

    const/4 v6, 0x2

    goto :goto_6

    :cond_f
    const/4 v6, 0x3

    goto :goto_6

    .line 1500
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1520
    .end local v0           #c:C
    :cond_11
    const/4 v6, 0x0

    goto :goto_4
.end method
