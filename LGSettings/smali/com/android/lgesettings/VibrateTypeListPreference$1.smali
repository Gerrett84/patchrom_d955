.class Lcom/android/lgesettings/VibrateTypeListPreference$1;
.super Ljava/lang/Object;
.source "VibrateTypeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/VibrateTypeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/VibrateTypeListPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/VibrateTypeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/lgesettings/VibrateTypeListPreference$1;->this$0:Lcom/android/lgesettings/VibrateTypeListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 45
    const-string v0, "VibrateTypeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected List : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference$1;->this$0:Lcom/android/lgesettings/VibrateTypeListPreference;

    #setter for: Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I
    invoke-static {v0, p2}, Lcom/android/lgesettings/VibrateTypeListPreference;->access$002(Lcom/android/lgesettings/VibrateTypeListPreference;I)I

    .line 47
    iget-object v0, p0, Lcom/android/lgesettings/VibrateTypeListPreference$1;->this$0:Lcom/android/lgesettings/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/lgesettings/VibrateTypeListPreference$1;->this$0:Lcom/android/lgesettings/VibrateTypeListPreference;

    #getter for: Lcom/android/lgesettings/VibrateTypeListPreference;->selectiedPosision:I
    invoke-static {v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->access$000(Lcom/android/lgesettings/VibrateTypeListPreference;)I

    move-result v1

    #calls: Lcom/android/lgesettings/VibrateTypeListPreference;->playVibrate(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/VibrateTypeListPreference;->access$100(Lcom/android/lgesettings/VibrateTypeListPreference;I)V

    .line 48
    return-void
.end method
