.class Lcom/android/lgesettings/vibratecreation/VibratePicker$5;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker;->removePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$5;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 670
    const-string v0, "VibratePicker"

    const-string v1, "[Remove Dialog] Cancel event!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$5;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 672
    return-void
.end method
