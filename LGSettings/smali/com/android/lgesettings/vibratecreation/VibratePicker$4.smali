.class Lcom/android/lgesettings/vibratecreation/VibratePicker$4;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 647
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$100(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mRemovePosition:I
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeVibratePattern(Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$100(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mRemovePosition:I
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->deleteVibrateUserPattern(Ljava/lang/String;)Z

    .line 658
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mDefaultVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$400(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->updateList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$500(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V

    .line 660
    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$100(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$4;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mRemovePosition:I
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeVibrateNameOthers(Ljava/lang/String;)V

    goto :goto_0
.end method
