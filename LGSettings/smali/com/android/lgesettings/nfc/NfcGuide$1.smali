.class Lcom/android/lgesettings/nfc/NfcGuide$1;
.super Ljava/lang/Object;
.source "NfcGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/nfc/NfcGuide;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/NfcGuide;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/NfcGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/lgesettings/nfc/NfcGuide$1;->this$0:Lcom/android/lgesettings/nfc/NfcGuide;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcGuide$1;->this$0:Lcom/android/lgesettings/nfc/NfcGuide;

    #getter for: Lcom/android/lgesettings/nfc/NfcGuide;->mAniImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcGuide;->access$000(Lcom/android/lgesettings/nfc/NfcGuide;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 56
    iget-object v1, p0, Lcom/android/lgesettings/nfc/NfcGuide$1;->this$0:Lcom/android/lgesettings/nfc/NfcGuide;

    #getter for: Lcom/android/lgesettings/nfc/NfcGuide;->mAniImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/NfcGuide;->access$000(Lcom/android/lgesettings/nfc/NfcGuide;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    .local v0, animation_repeat:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 58
    return-void
.end method
