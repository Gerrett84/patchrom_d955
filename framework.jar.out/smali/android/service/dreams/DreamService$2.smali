.class Landroid/service/dreams/DreamService$2;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService;->hideNavigationBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 823
    iget-object v1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    #getter for: Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Landroid/service/dreams/DreamService;->access$600(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 824
    .local v0, v:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    .line 825
    const/16 v1, 0x602

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 826
    new-instance v1, Landroid/service/dreams/DreamService$2$1;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$2$1;-><init>(Landroid/service/dreams/DreamService$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 837
    :goto_1
    return-void

    .line 823
    .end local v0           #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    #getter for: Landroid/service/dreams/DreamService;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Landroid/service/dreams/DreamService;->access$600(Landroid/service/dreams/DreamService;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 835
    .restart local v0       #v:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    #getter for: Landroid/service/dreams/DreamService;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/service/dreams/DreamService;->access$100(Landroid/service/dreams/DreamService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "posted Runnable(HideNavigationBar) is disregared becauce mWindow is null !!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
