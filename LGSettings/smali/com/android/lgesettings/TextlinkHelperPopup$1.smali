.class Lcom/android/lgesettings/TextlinkHelperPopup$1;
.super Ljava/lang/Object;
.source "TextlinkHelperPopup.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/TextlinkHelperPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/TextlinkHelperPopup;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/TextlinkHelperPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 151
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffest"
    .parameter "positionOffsetPixels"

    .prologue
    .line 149
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    const v5, 0x7f0808da

    const/4 v4, 0x0

    .line 120
    const-string v1, "TextlinkHelperPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate onPageSelected position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " COUNT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I
    invoke-static {v3}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$000(Lcom/android/lgesettings/TextlinkHelperPopup;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$000(Lcom/android/lgesettings/TextlinkHelperPopup;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$200(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPrevPosition:I
    invoke-static {v2}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$100(Lcom/android/lgesettings/TextlinkHelperPopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 126
    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$200(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$000(Lcom/android/lgesettings/TextlinkHelperPopup;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$300(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$400(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080b61

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #setter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPrevPosition:I
    invoke-static {v1, p1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$102(Lcom/android/lgesettings/TextlinkHelperPopup;I)I

    .line 147
    .end local v0           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 137
    .restart local v0       #view:Landroid/view/View;
    :cond_3
    if-nez p1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$300(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$400(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$300(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/lgesettings/TextlinkHelperPopup$1;->this$0:Lcom/android/lgesettings/TextlinkHelperPopup;

    #getter for: Lcom/android/lgesettings/TextlinkHelperPopup;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/TextlinkHelperPopup;->access$400(Lcom/android/lgesettings/TextlinkHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
