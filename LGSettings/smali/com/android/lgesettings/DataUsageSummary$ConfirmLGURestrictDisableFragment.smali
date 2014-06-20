.class public Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLGURestrictDisableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3452
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 3454
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3461
    :goto_0
    return-void

    .line 3458
    :cond_0
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;

    invoke-direct {v0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;-><init>()V

    .line 3459
    .local v0, dialog:Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 3460
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrictlguenable"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 3465
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3467
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3468
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0807db

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080f51

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080f56

    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$2;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080f57

    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment$1;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmLGURestrictDisableFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3500
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
