.class public Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;
.super Landroid/app/DialogFragment;
.source "SettingsTipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SettingsTipActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddNewSettingsTipFragment"
.end annotation


# instance fields
.field public dialog:Landroid/app/Dialog;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->visible:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 134
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f100034

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    .line 78
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    const v2, 0x7f04013a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 79
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    const v2, 0x7f0a02bd

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->visible:Landroid/widget/CheckBox;

    .line 80
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->visible:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$1;-><init>(Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 93
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    const v2, 0x7f0a0112

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    .local v0, closeButton:Landroid/widget/Button;
    new-instance v1, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$2;-><init>(Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 109
    iget-object v1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->dialog:Landroid/app/Dialog;

    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 116
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 117
    return-void
.end method
