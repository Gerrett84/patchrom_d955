.class Lcom/android/lgesettings/ResetSettings$3$2;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 171
    iput-object p1, p0, Lcom/android/lgesettings/ResetSettings$3$2;->this$1:Lcom/android/lgesettings/ResetSettings$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3$2;->this$1:Lcom/android/lgesettings/ResetSettings$3;

    iget-object v0, v0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "lge.settings.intent.action.RESET_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    return-void
.end method
