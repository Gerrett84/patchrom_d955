.class Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$300(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$300(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$3;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$300(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
