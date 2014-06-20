.class Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;
.super Ljava/lang/Object;
.source "QuietModeTimePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeTimePreference;
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
    .line 204
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "_dialog"

    .prologue
    .line 208
    const-string v0, "QuietModeTimePreference"

    const-string v1, "popup dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mHour:I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$000(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->mMinute:I
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$100(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;)I

    move-result v2

    #calls: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->updateTime(II)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$200(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;II)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeTimePreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeTimePreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeTimePreference;->access$302(Lcom/android/lgesettings/quietmode/QuietModeTimePreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 211
    return-void
.end method
