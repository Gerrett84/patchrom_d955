.class Lcom/android/lgesettings/EasyToUseSelectDescript$2;
.super Ljava/lang/Object;
.source "EasyToUseSelectDescript.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/EasyToUseSelectDescript;->setButtonListener()V
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
    .line 207
    iput-object p1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$2;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$2;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    #getter for: Lcom/android/lgesettings/EasyToUseSelectDescript;->mHint:Landroid/widget/ViewFlipper;
    invoke-static {v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->access$100(Lcom/android/lgesettings/EasyToUseSelectDescript;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 212
    .local v0, childId:I
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$2;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    #getter for: Lcom/android/lgesettings/EasyToUseSelectDescript;->PAGE_COUNT:I
    invoke-static {v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->access$200(Lcom/android/lgesettings/EasyToUseSelectDescript;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$2;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    invoke-virtual {v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->finish()V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$2;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    #calls: Lcom/android/lgesettings/EasyToUseSelectDescript;->next()V
    invoke-static {v1}, Lcom/android/lgesettings/EasyToUseSelectDescript;->access$300(Lcom/android/lgesettings/EasyToUseSelectDescript;)V

    .line 216
    return-void
.end method
