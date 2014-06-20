.class Lcom/android/lgesettings/OneHandOperationHelp$1;
.super Ljava/lang/Object;
.source "OneHandOperationHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/OneHandOperationHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/OneHandOperationHelp;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/OneHandOperationHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 152
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

    .line 126
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$000(Lcom/android/lgesettings/OneHandOperationHelp;)I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$200(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPrevPosition:I
    invoke-static {v2}, Lcom/android/lgesettings/OneHandOperationHelp;->access$100(Lcom/android/lgesettings/OneHandOperationHelp;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$200(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$000(Lcom/android/lgesettings/OneHandOperationHelp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$300(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$400(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080b61

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #setter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPrevPosition:I
    invoke-static {v1, p1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$102(Lcom/android/lgesettings/OneHandOperationHelp;I)I

    .line 150
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    if-nez p1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$300(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$400(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$300(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/android/lgesettings/OneHandOperationHelp$1;->this$0:Lcom/android/lgesettings/OneHandOperationHelp;

    #getter for: Lcom/android/lgesettings/OneHandOperationHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/OneHandOperationHelp;->access$400(Lcom/android/lgesettings/OneHandOperationHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
