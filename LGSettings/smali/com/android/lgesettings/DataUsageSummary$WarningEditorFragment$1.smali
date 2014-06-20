.class Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/lgesettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/android/lgesettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2500
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->this$0:Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2504
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2506
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 2507
    .local v0, bytes:J
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/lgesettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/lgesettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 2508
    iget-object v2, p0, Lcom/android/lgesettings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/android/lgesettings/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/lgesettings/DataUsageSummary;->access$100(Lcom/android/lgesettings/DataUsageSummary;Z)V

    .line 2509
    return-void
.end method
