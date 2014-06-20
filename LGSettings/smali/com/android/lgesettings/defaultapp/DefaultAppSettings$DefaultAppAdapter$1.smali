.class Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter$1;
.super Ljava/lang/Object;
.source "DefaultAppSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter$1;->this$1:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter$1;->this$1:Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;

    #calls: Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->onButtonClick(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;->access$300(Lcom/android/lgesettings/defaultapp/DefaultAppSettings$DefaultAppAdapter;Landroid/view/View;)V

    .line 342
    return-void
.end method
