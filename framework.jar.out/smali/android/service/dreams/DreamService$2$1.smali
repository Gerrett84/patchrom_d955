.class Landroid/service/dreams/DreamService$2$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$2;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Landroid/service/dreams/DreamService$2$1;->this$1:Landroid/service/dreams/DreamService$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 829
    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_0

    .line 830
    iget-object v0, p0, Landroid/service/dreams/DreamService$2$1;->this$1:Landroid/service/dreams/DreamService$2;

    iget-object v0, v0, Landroid/service/dreams/DreamService$2;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x0

    #calls: Landroid/service/dreams/DreamService;->hideNavigationBar(Z)V
    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->access$700(Landroid/service/dreams/DreamService;Z)V

    .line 831
    :cond_0
    return-void
.end method
