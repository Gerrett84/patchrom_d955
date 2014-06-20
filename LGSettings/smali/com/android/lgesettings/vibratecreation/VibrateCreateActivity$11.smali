.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->createRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 745
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isDuplicateName(Ljava/lang/String;)Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is duplicate name."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 765
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->iskeyBlank(Ljava/lang/String;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 749
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    const-string v2, "blank name"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPatternSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3100(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 754
    const-string v1, "VibrateCreateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, pattern:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mPattern:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$2700(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->removeToken(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3200(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string v1, "VibrateCreateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toekn remove mPattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/android/lgesettings/Utils;->isSPRModel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 759
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mParent_Type:I
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3300(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveSelectVibrate(ILjava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->saveVibratePattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    invoke-static {v4}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->setItemSelected(Z)V

    .line 763
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$11;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->finish()V

    goto/16 :goto_0
.end method
