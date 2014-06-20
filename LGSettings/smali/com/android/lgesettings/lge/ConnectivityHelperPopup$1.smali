.class Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;
.super Ljava/lang/Object;
.source "ConnectivityHelperPopup.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 153
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffest"
    .parameter "positionOffsetPixels"

    .prologue
    .line 151
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f0808da

    const/4 v3, 0x0

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$000(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$200(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrevPosition:I
    invoke-static {v2}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$100(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 128
    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$200(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mTotalPage:I
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$000(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$300(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$400(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080b61

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #setter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrevPosition:I
    invoke-static {v1, p1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$102(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;I)I

    .line 149
    .end local v0           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 139
    .restart local v0       #view:Landroid/view/View;
    :cond_3
    if-nez p1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$300(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$400(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$300(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/lge/ConnectivityHelperPopup$1;->this$0:Lcom/android/lgesettings/lge/ConnectivityHelperPopup;

    #getter for: Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/lge/ConnectivityHelperPopup;->access$400(Lcom/android/lgesettings/lge/ConnectivityHelperPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
