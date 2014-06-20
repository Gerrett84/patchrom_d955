.class Lcom/android/internal/widget/LGScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "LGScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LGScrollingTabContainerView;->setTabSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LGScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LGScrollingTabContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/LGScrollingTabContainerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/LGScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z
    invoke-static {v0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->access$000(Lcom/android/internal/widget/LGScrollingTabContainerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/LGScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->access$200(Lcom/android/internal/widget/LGScrollingTabContainerView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/LGScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I
    invoke-static {v1}, Lcom/android/internal/widget/LGScrollingTabContainerView;->access$100(Lcom/android/internal/widget/LGScrollingTabContainerView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 185
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 178
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/LGScrollingTabContainerView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/LGScrollingTabContainerView;->access$002(Lcom/android/internal/widget/LGScrollingTabContainerView;Z)Z

    .line 174
    return-void
.end method
