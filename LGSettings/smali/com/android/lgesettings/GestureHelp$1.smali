.class Lcom/android/lgesettings/GestureHelp$1;
.super Ljava/lang/Object;
.source "GestureHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/GestureHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/GestureHelp;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/GestureHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 232
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffest"
    .parameter "positionOffsetPixels"

    .prologue
    .line 231
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f0808da

    const/4 v3, 0x0

    .line 207
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$000(Lcom/android/lgesettings/GestureHelp;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$200(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mPrevPosition:I
    invoke-static {v2}, Lcom/android/lgesettings/GestureHelp;->access$100(Lcom/android/lgesettings/GestureHelp;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$200(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$000(Lcom/android/lgesettings/GestureHelp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$300(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$400(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080b61

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 228
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #setter for: Lcom/android/lgesettings/GestureHelp;->mPrevPosition:I
    invoke-static {v1, p1}, Lcom/android/lgesettings/GestureHelp;->access$102(Lcom/android/lgesettings/GestureHelp;I)I

    .line 230
    :cond_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    if-nez p1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$300(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$400(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$300(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/android/lgesettings/GestureHelp$1;->this$0:Lcom/android/lgesettings/GestureHelp;

    #getter for: Lcom/android/lgesettings/GestureHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/GestureHelp;->access$400(Lcom/android/lgesettings/GestureHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
