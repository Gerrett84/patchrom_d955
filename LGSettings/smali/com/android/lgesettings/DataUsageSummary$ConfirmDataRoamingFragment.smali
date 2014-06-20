.class public Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2840
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 2842
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2847
    :goto_0
    return-void

    .line 2844
    :cond_0
    new-instance v0, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct {v0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;-><init>()V

    .line 2845
    .local v0, dialog:Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2846
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const v6, 0x1010355

    .line 2851
    invoke-virtual {p0}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2853
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2858
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2859
    const v4, 0x7f080f89

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2860
    const v4, 0x7f080f88

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2861
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2862
    const v4, 0x7f080b1c

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2863
    .local v3, strOk:Ljava/lang/String;
    const v4, 0x7f080b1d

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2864
    .local v2, strCancel:Ljava/lang/String;
    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$1;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2877
    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2906
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 2881
    .end local v2           #strCancel:Ljava/lang/String;
    .end local v3           #strOk:Ljava/lang/String;
    :cond_0
    const v4, 0x7f080115

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2882
    invoke-static {v1}, Lcom/android/lgesettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2883
    const v4, 0x7f080114

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2888
    :goto_1
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2889
    .restart local v3       #strOk:Ljava/lang/String;
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2890
    .restart local v2       #strCancel:Ljava/lang/String;
    new-instance v4, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment$2;-><init>(Lcom/android/lgesettings/DataUsageSummary$ConfirmDataRoamingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2903
    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2885
    .end local v2           #strCancel:Ljava/lang/String;
    .end local v3           #strOk:Ljava/lang/String;
    :cond_1
    const v4, 0x7f080b21

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2886
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
