.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 775
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 778
    .local v0, input:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$13;->val$edit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 779
    return-void
.end method
