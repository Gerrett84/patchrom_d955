.class Lcom/android/lgesettings/ResetSettings$2;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ResetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/lgesettings/ResetSettings$2;->this$0:Lcom/android/lgesettings/ResetSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/ResetSettings$2;->this$0:Lcom/android/lgesettings/ResetSettings;

    #getter for: Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/lgesettings/ResetSettings;->access$100(Lcom/android/lgesettings/ResetSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/lgesettings/ResetSettings$2;->this$0:Lcom/android/lgesettings/ResetSettings;

    #getter for: Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/lgesettings/ResetSettings;->access$100(Lcom/android/lgesettings/ResetSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/lgesettings/ResetSettings$2;->this$0:Lcom/android/lgesettings/ResetSettings;

    #getter for: Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/lgesettings/ResetSettings;->access$100(Lcom/android/lgesettings/ResetSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 147
    iget-object v1, p0, Lcom/android/lgesettings/ResetSettings$2;->this$0:Lcom/android/lgesettings/ResetSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/lgesettings/ResetSettings;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/lgesettings/ResetSettings;->access$102(Lcom/android/lgesettings/ResetSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
