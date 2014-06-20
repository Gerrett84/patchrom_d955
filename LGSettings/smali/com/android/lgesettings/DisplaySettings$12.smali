.class Lcom/android/lgesettings/DisplaySettings$12;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DisplaySettings;->ShowWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1071
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #getter for: Lcom/android/lgesettings/DisplaySettings;->donotshow:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/lgesettings/DisplaySettings;->access$1000(Lcom/android/lgesettings/DisplaySettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keep_screen_on_do_not_show"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1073
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #setter for: Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/android/lgesettings/DisplaySettings;->access$802(Lcom/android/lgesettings/DisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1074
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #setter for: Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z
    invoke-static {v0, v3}, Lcom/android/lgesettings/DisplaySettings;->access$902(Lcom/android/lgesettings/DisplaySettings;Z)Z

    .line 1080
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keep_screen_on_do_not_show"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1077
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #setter for: Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v4}, Lcom/android/lgesettings/DisplaySettings;->access$802(Lcom/android/lgesettings/DisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1078
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$12;->this$0:Lcom/android/lgesettings/DisplaySettings;

    #setter for: Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z
    invoke-static {v0, v3}, Lcom/android/lgesettings/DisplaySettings;->access$902(Lcom/android/lgesettings/DisplaySettings;Z)Z

    goto :goto_0
.end method
