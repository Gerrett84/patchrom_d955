.class Lcom/android/lgesettings/quietmode/QuietModeTimePreference$3;
.super Ljava/lang/Object;
.source "QuietModeTimePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$602(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;Landroid/widget/Button;)Landroid/widget/Button;

    .line 297
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mTimePikerOKButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$600(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 298
    return-void
.end method
