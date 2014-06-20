.class Lcom/android/lgesettings/nfc/AndroidBeam$4;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/AndroidBeam;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

.field final synthetic val$animationImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/AndroidBeam;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$4;->this$0:Lcom/android/lgesettings/nfc/AndroidBeam;

    iput-object p2, p0, Lcom/android/lgesettings/nfc/AndroidBeam$4;->val$animationImage:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$4;->val$animationImage:Landroid/widget/ImageView;

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 335
    iget-object v1, p0, Lcom/android/lgesettings/nfc/AndroidBeam$4;->val$animationImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 336
    .local v0, animation_repeat:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 337
    return-void
.end method
