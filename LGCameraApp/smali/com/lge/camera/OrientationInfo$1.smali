.class Lcom/lge/camera/OrientationInfo$1;
.super Landroid/view/OrientationEventListener;
.source "OrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/OrientationInfo;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/OrientationInfo;


# direct methods
.method constructor <init>(Lcom/lge/camera/OrientationInfo;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 156
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mOrientationChangeEnabled:Z
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$000(Lcom/lge/camera/OrientationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    invoke-static {p1}, Lcom/lge/camera/util/ImageManager;->roundOrientation(I)I

    move-result v1

    #setter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$102(Lcom/lge/camera/OrientationInfo;I)I

    .line 158
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    #setter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$102(Lcom/lge/camera/OrientationInfo;I)I

    .line 164
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$200(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    #calls: Lcom/lge/camera/OrientationInfo;->setSlimPortProperty(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$300(Lcom/lge/camera/OrientationInfo;I)V

    .line 167
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    iget-object v1, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mLastOrientation:I
    invoke-static {v1}, Lcom/lge/camera/OrientationInfo;->access$100(Lcom/lge/camera/OrientationInfo;)I

    move-result v1

    #setter for: Lcom/lge/camera/OrientationInfo;->mLastOrientationBackup:I
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$202(Lcom/lge/camera/OrientationInfo;I)I

    .line 170
    :cond_0
    const/16 v0, 0xfa

    if-le p1, v0, :cond_2

    const/16 v0, 0x122

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$400(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    const/4 v1, 0x0

    #calls: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v1}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;I)V

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    const/16 v0, 0x154

    if-gt p1, v0, :cond_3

    const/16 v0, 0x14

    if-ge p1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$400(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 180
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #calls: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v2}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;I)V

    goto :goto_0

    .line 182
    :cond_4
    const/16 v0, 0xa0

    if-le p1, v0, :cond_5

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$400(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 186
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #calls: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;I)V

    goto :goto_0

    .line 188
    :cond_5
    const/16 v0, 0x46

    if-le p1, v0, :cond_6

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #getter for: Lcom/lge/camera/OrientationInfo;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$400(Lcom/lge/camera/OrientationInfo;)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 192
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #calls: Lcom/lge/camera/OrientationInfo;->changeOrientation(I)V
    invoke-static {v0, v3}, Lcom/lge/camera/OrientationInfo;->access$500(Lcom/lge/camera/OrientationInfo;I)V

    goto :goto_0

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/OrientationInfo$1;->this$0:Lcom/lge/camera/OrientationInfo;

    #calls: Lcom/lge/camera/OrientationInfo;->setOrientationDefault()V
    invoke-static {v0}, Lcom/lge/camera/OrientationInfo;->access$600(Lcom/lge/camera/OrientationInfo;)V

    goto :goto_0
.end method
