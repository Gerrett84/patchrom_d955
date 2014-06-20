.class Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;
.super Ljava/lang/Object;
.source "SettingExpandParentMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;


# direct methods
.method constructor <init>(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    :pswitch_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch mPressedCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    #getter for: Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->mPressedCount:I
    invoke-static {v2}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$200(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    return v0

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-static {v0, v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$212(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter$2;->this$0:Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;

    invoke-static {v0, v1}, Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;->access$220(Lcom/lge/camera/setting/SettingExpandParentMenuAdapter;I)I

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
