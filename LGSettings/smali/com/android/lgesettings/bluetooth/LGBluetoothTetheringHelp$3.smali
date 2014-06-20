.class Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;
.super Ljava/lang/Object;
.source "LGBluetoothTetheringHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 184
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffest"
    .parameter "positionOffsetPixels"

    .prologue
    .line 181
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 144
    const-string v1, "LGBluetoothTetheringHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LGBluetoothTetheringHelpGuide setOnPageChangeListener position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->Page_Count:I
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$200(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrevPosition:I
    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$400(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, mView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 150
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$300(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    .end local v0           #mView:Landroid/view/View;
    :cond_1
    if-nez p1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 172
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f081567

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #setter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrevPosition:I
    invoke-static {v1, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$402(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;I)I

    .line 178
    :cond_2
    return-void

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$600(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->TwoButtonlayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$700(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp$3;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothTetheringHelp;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f081568

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
