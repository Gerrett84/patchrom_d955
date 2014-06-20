.class Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$1;
.super Ljava/lang/Object;
.source "SettingsTipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$1;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment$1;->this$0:Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsTipActivity$AddNewSettingsTipFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
