.class Lcom/android/lgesettings/EasyToUseSelectDescript$4;
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
    .line 233
    iput-object p1, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$4;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUseSelectDescript$4;->this$0:Lcom/android/lgesettings/EasyToUseSelectDescript;

    invoke-virtual {v0}, Lcom/android/lgesettings/EasyToUseSelectDescript;->finish()V

    .line 245
    return-void
.end method
