.class Lcom/android/lgesettings/MultiTaskingGuide$1;
.super Ljava/lang/Object;
.source "MultiTaskingGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/MultiTaskingGuide;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MultiTaskingGuide;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MultiTaskingGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    iget-object v0, v0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    iget-object v0, v0, Lcom/android/lgesettings/MultiTaskingGuide;->mView:Landroid/view/View;

    const v2, 0x7f0a01bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    #setter for: Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;
    invoke-static {v1, v0}, Lcom/android/lgesettings/MultiTaskingGuide;->access$002(Lcom/android/lgesettings/MultiTaskingGuide;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 59
    iget-object v1, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    #getter for: Lcom/android/lgesettings/MultiTaskingGuide;->mAniImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/lgesettings/MultiTaskingGuide;->access$000(Lcom/android/lgesettings/MultiTaskingGuide;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v0}, Lcom/android/lgesettings/MultiTaskingGuide;->access$102(Lcom/android/lgesettings/MultiTaskingGuide;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    #getter for: Lcom/android/lgesettings/MultiTaskingGuide;->mAni:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/lgesettings/MultiTaskingGuide;->access$100(Lcom/android/lgesettings/MultiTaskingGuide;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 62
    iget-object v0, p0, Lcom/android/lgesettings/MultiTaskingGuide$1;->this$0:Lcom/android/lgesettings/MultiTaskingGuide;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/MultiTaskingGuide;->bRunAni:Z

    .line 64
    :cond_0
    return-void
.end method
