.class Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;
.super Ljava/lang/Object;
.source "WifiScreenHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 140
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffest"
    .parameter "positionOffsetPixels"

    .prologue
    .line 138
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f0808da

    const v3, 0x7f0808d9

    .line 114
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrevPosition:I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$100(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 117
    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPageMark:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$200(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_1

    .line 121
    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$000(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 126
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080b61

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #setter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrevPosition:I
    invoke-static {v1, p1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$102(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;I)I

    .line 136
    .end local v0           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 127
    .restart local v0       #view:Landroid/view/View;
    :cond_3
    if-nez p1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0800fb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mPrev:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$300(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object v1, p0, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp$1;->this$0:Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;

    #getter for: Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->mNext:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;->access$400(Lcom/android/lgesettings/wifi/wifiscreen/WifiScreenHelp;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
