.class Lcom/android/lgesettings/DisplaySettings$11;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1059
    iput-object p1, p0, Lcom/android/lgesettings/DisplaySettings$11;->this$0:Lcom/android/lgesettings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1063
    const-string v0, "DisplaySettings"

    const-string v1, "cancel listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$11;->this$0:Lcom/android/lgesettings/DisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/DisplaySettings;->screenDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/lgesettings/DisplaySettings;->access$802(Lcom/android/lgesettings/DisplaySettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1065
    iget-object v0, p0, Lcom/android/lgesettings/DisplaySettings$11;->this$0:Lcom/android/lgesettings/DisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/DisplaySettings;->isDialogCheck:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/DisplaySettings;->access$902(Lcom/android/lgesettings/DisplaySettings;Z)Z

    .line 1066
    return-void
.end method
