.class Lcom/android/lgesettings/ResetSettings$3$3;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/ResetSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/ResetSettings$3;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ResetSettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/lgesettings/ResetSettings$3$3;->this$1:Lcom/android/lgesettings/ResetSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3$3;->this$1:Lcom/android/lgesettings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/ResetSettings;->access$202(Lcom/android/lgesettings/ResetSettings;Z)Z

    .line 203
    return-void
.end method
