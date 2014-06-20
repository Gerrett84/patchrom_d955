.class Lcom/android/lgesettings/vibratecreation/VibratePicker$8;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker;->createRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 735
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isDuplicateName(Ljava/lang/String;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->iskeyBlank(Ljava/lang/String;)Z

    move-result v0

    if-eq v2, v0, :cond_0

    .line 741
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    const-string v0, "hkk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matching!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1002(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1102(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 746
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->updateVibrateUserPatternName(Ljava/lang/String;Ljava/lang/String;)Z

    .line 748
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->updateList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$500(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->mUserPatternManager:Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibrateUserPatternManager;->updateVibrateUserPatternName(Ljava/lang/String;Ljava/lang/String;)Z

    .line 751
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->updateList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$500(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 755
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->removeVibratePattern(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveVibratePattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1002(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1000(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mOriginalDefaultVibrate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1102(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->renameVibrateNameOthers(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 763
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;I)V

    .line 772
    :goto_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->updateList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$500(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 766
    :cond_4
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mParent_Type:I
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mSelectPattern:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 770
    :cond_5
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$8;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->renameVibrateNameOthers(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
