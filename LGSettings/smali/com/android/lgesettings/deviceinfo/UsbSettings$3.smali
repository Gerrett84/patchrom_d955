.class Lcom/android/lgesettings/deviceinfo/UsbSettings$3;
.super Landroid/os/Handler;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "message"

    .prologue
    .line 1365
    :try_start_0
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1476
    :pswitch_1
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1480
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1481
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    new-instance v8, Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2002(Lcom/android/lgesettings/deviceinfo/UsbSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1482
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1484
    const-string v1, ""

    .line 1485
    .local v1, cancelString:Ljava/lang/String;
    invoke-static {}, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->isDirectAutorunModel()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1486
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const v9, 0x7f080d3b

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1487
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const v8, 0x7f0800fb

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1494
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1495
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    new-instance v8, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$8;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v7, v1, v8}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1557
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    new-instance v8, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$9;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$9;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1562
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    new-instance v8, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$10;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1659
    .end local v1           #cancelString:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1738
    :catch_0
    move-exception v4

    .line 1739
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v7, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AUTORUN] Handle message process nullpointer exception for dialog="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1370
    .end local v4           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    :try_start_1
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1372
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1373
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040069

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1374
    .local v2, dialogView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1376
    const v7, 0x7f0a00e8

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1377
    .local v3, donotshow:Landroid/widget/CheckBox;
    new-instance v7, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;

    invoke-direct {v7, p0, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$1;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1384
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mSetChekshowDoNot:Z
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1800(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1386
    const v7, 0x7f080e65

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1387
    new-instance v7, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$2;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$2;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1406
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$3;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1420
    const v7, 0x104000a

    new-instance v8, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;

    invoke-direct {v8, p0, v3}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$4;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1429
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$902(Lcom/android/lgesettings/deviceinfo/UsbSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1430
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 1434
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #dialogView:Landroid/view/View;
    .end local v3           #donotshow:Landroid/widget/CheckBox;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :goto_2
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/lgesettings/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    goto/16 :goto_0

    .line 1432
    :cond_3
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mFirstAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$900(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 1437
    :pswitch_3
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1438
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v9}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f080e65

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f080e66

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$7;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$7;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x104

    new-instance v10, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$6;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$6;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    new-instance v10, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$5;

    invoke-direct {v10, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$5;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    #setter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1002(Lcom/android/lgesettings/deviceinfo/UsbSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1470
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1472
    :cond_4
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInstallAutorunDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$1000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1489
    .restart local v1       #cancelString:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    const v8, 0x7f080e65

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1490
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2000(Lcom/android/lgesettings/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const v9, 0x7f080e6a

    invoke-virtual {v8, v9}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1491
    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    const/high16 v8, 0x104

    invoke-virtual {v7, v8}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1662
    .end local v1           #cancelString:Ljava/lang/String;
    :pswitch_4
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    invoke-virtual {v7}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1663
    .local v6, internetBuilder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f080b3b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1664
    const v7, 0x7f090097

    iget-object v8, p0, Lcom/android/lgesettings/deviceinfo/UsbSettings$3;->this$0:Lcom/android/lgesettings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/lgesettings/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v8}, Lcom/android/lgesettings/deviceinfo/UsbSettings;->access$2100(Lcom/android/lgesettings/deviceinfo/UsbSettings;)I

    move-result v8

    new-instance v9, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;

    invoke-direct {v9, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$11;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1720
    const/high16 v7, 0x104

    new-instance v8, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$12;

    invoke-direct {v8, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$12;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1726
    new-instance v7, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$13;

    invoke-direct {v7, p0}, Lcom/android/lgesettings/deviceinfo/UsbSettings$3$13;-><init>(Lcom/android/lgesettings/deviceinfo/UsbSettings$3;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1732
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1368
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
