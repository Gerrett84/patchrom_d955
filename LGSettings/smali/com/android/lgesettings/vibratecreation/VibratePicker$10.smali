.class Lcom/android/lgesettings/vibratecreation/VibratePicker$10;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 788
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$10;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$10;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$10;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 792
    .local v0, input:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$10;->val$edit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 793
    return-void
.end method
