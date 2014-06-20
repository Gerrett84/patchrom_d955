.class Lcom/android/lgesettings/TimedSilentSettings$6;
.super Ljava/lang/Object;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TimedSilentSettings;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TimedSilentSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TimedSilentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    #setter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/lgesettings/TimedSilentSettings;->access$802(Lcom/android/lgesettings/TimedSilentSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 448
    iget-object v1, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    #setter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerCancelButton:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/lgesettings/TimedSilentSettings;->access$902(Lcom/android/lgesettings/TimedSilentSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 449
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/TimedSilentSettings;->access$900(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/TimedSilentSettings;->access$900(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/TimedSilentSettings$6$1;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/TimedSilentSettings$6$1;-><init>(Lcom/android/lgesettings/TimedSilentSettings$6;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/android/lgesettings/TimedSilentSettings$6;->this$0:Lcom/android/lgesettings/TimedSilentSettings;

    #getter for: Lcom/android/lgesettings/TimedSilentSettings;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/TimedSilentSettings;->access$800(Lcom/android/lgesettings/TimedSilentSettings;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 463
    :cond_1
    return-void
.end method
