.class Lcom/android/lgesettings/GestureTilt$2;
.super Ljava/lang/Object;
.source "GestureTilt.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/GestureTilt;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/GestureTilt;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/GestureTilt;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return v3

    .line 97
    :pswitch_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    #getter for: Lcom/android/lgesettings/GestureTilt;->myVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/lgesettings/GestureTilt;->access$100(Lcom/android/lgesettings/GestureTilt;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    #setter for: Lcom/android/lgesettings/GestureTilt;->move:Z
    invoke-static {v0, v3}, Lcom/android/lgesettings/GestureTilt;->access$202(Lcom/android/lgesettings/GestureTilt;Z)Z

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    #getter for: Lcom/android/lgesettings/GestureTilt;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/GestureTilt;->access$300(Lcom/android/lgesettings/GestureTilt;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    invoke-virtual {v1}, Lcom/android/lgesettings/GestureTilt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/GestureTilt;->move:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/GestureTilt;->access$202(Lcom/android/lgesettings/GestureTilt;Z)Z

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    #getter for: Lcom/android/lgesettings/GestureTilt;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/lgesettings/GestureTilt;->access$300(Lcom/android/lgesettings/GestureTilt;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/GestureTilt$2;->this$0:Lcom/android/lgesettings/GestureTilt;

    invoke-virtual {v1}, Lcom/android/lgesettings/GestureTilt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
