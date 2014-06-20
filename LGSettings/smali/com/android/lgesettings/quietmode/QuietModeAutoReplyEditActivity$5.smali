.class Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$5;
.super Ljava/lang/Object;
.source "QuietModeAutoReplyEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$5;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->inputKeyboardRise(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$600(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;Landroid/view/View;)V

    .line 167
    return-void
.end method
