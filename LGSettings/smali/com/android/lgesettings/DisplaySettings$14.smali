.class Lcom/android/lgesettings/DisplaySettings$14;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DisplaySettings;->ShowWarningVideoDialog()V
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
    .line 1123
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$14;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1127
    const-string v0, "DisplaySettings"

    const-string v1, "cancel listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$14;->this$0:Lcom/android/lgesettings/DisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/DisplaySettings;->videoDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/lgesettings/DisplaySettings;->access$1102(Lcom/android/lgesettings/DisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1129
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$14;->this$0:Lcom/android/lgesettings/DisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/DisplaySettings;->isVideoDialogCheck:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/DisplaySettings;->access$1202(Lcom/android/lgesettings/DisplaySettings;Z)Z

    .line 1130
    return-void
.end method
