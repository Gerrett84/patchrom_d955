.class public Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2449
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 2453
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2462
    :goto_0
    return-void

    .line 2455
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2456
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "template"

    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/lgesettings/DataUsageSummary;->access$1400(Lcom/android/lgesettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2458
    new-instance v1, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;

    invoke-direct {v1}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;-><init>()V

    .line 2459
    .local v1, dialog:Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;
    invoke-virtual {v1, v0}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2460
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2461
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "warningEditor"

    invoke-virtual {v1, v2, v3}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 16
    .parameter "savedInstanceState"

    .prologue
    .line 2466
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2467
    .local v7, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/android/lgesettings/DataUsageSummary;

    .line 2468
    .local v5, target:Lcom/android/lgesettings/DataUsageSummary;
    #getter for: Lcom/android/lgesettings/DataUsageSummary;->mPolicyEditor:Lcom/android/lgesettings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageSummary;->access$1500(Lcom/android/lgesettings/DataUsageSummary;)Lcom/android/lgesettings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 2470
    .local v3, editor:Lcom/android/lgesettings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2471
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2473
    .local v8, dialogInflater:Landroid/view/LayoutInflater;
    const v0, 0x7f04004e

    const/4 v1, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v0, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 2474
    .local v12, view:Landroid/view/View;
    const v0, 0x7f0a00a4

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2476
    .local v2, bytesPicker:Landroid/widget/NumberPicker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2477
    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v13

    .line 2478
    .local v13, warningBytes:J
    invoke-virtual {v3, v4}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v9

    .line 2480
    .local v9, limitBytes:J
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2481
    const/4 v11, 0x0

    .line 2482
    .local v11, value:I
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-eqz v0, :cond_1

    .line 2483
    const-wide/32 v0, 0x100000

    div-long v0, v9, v0

    long-to-int v0, v0

    add-int/lit8 v11, v0, -0x1

    .line 2488
    :goto_0
    if-gez v11, :cond_0

    .line 2489
    const/4 v11, 0x0

    .line 2491
    :cond_0
    invoke-virtual {v2, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2493
    const-wide/32 v0, 0x100000

    div-long v0, v13, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2494
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2496
    const v0, 0x7f080804

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2497
    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2499
    const v15, 0x7f080803

    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;-><init>(Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/lgesettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/lgesettings/DataUsageSummary;)V

    invoke-virtual {v6, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2512
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2485
    :cond_1
    const v11, 0xfa000

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2517
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2518
    const/4 v0, 0x0

    #calls: Lcom/android/lgesettings/DataUsageSummary;->setPopupdisable(Z)V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$3500(Z)V

    .line 2519
    return-void
.end method
