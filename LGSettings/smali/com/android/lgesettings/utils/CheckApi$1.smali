.class Lcom/android/lgesettings/utils/CheckApi$1;
.super Ljava/lang/Object;
.source "CheckApi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/utils/CheckApi;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/utils/CheckApi;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/utils/CheckApi;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v0, v0, Lcom/android/lgesettings/utils/CheckApi;->mResult:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v1, v1, Lcom/android/lgesettings/utils/CheckApi;->mVibrateInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/lgesettings/utils/CheckApi;->CheckVibrateStrength(II)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/utils/CheckApi;->access$000(Lcom/android/lgesettings/utils/CheckApi;II)V

    .line 51
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v1, v1, Lcom/android/lgesettings/utils/CheckApi;->mVibrateInputNoti:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/android/lgesettings/utils/CheckApi;->CheckVibrateStrength(II)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/utils/CheckApi;->access$000(Lcom/android/lgesettings/utils/CheckApi;II)V

    .line 52
    iget-object v0, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckApi$1;->this$0:Lcom/android/lgesettings/utils/CheckApi;

    iget-object v1, v1, Lcom/android/lgesettings/utils/CheckApi;->mVibrateInputTouch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    #calls: Lcom/android/lgesettings/utils/CheckApi;->CheckVibrateStrength(II)V
    invoke-static {v0, v1, v2}, Lcom/android/lgesettings/utils/CheckApi;->access$000(Lcom/android/lgesettings/utils/CheckApi;II)V

    .line 54
    return-void
.end method
