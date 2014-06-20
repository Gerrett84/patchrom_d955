.class Lcom/android/lgesettings/EasyToUseSelectDescript$1;
.super Ljava/lang/Object;
.source "EasyToUseSelectDescript.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/EasyToUseSelectDescript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/EasyToUseSelectDescript;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$1;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$1;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$1;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    #getter for: Lcom/android/lgesettings/EasyToUseSelectDescript;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->access$000(Lcom/android/lgesettings/EasyToUseSelectDescript;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 64
    return-void
.end method
