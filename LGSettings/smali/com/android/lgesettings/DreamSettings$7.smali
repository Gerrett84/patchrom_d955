.class Lcom/android/lgesettings/DreamSettings$7;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 335
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;

    move-result-object v3

    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mItemIndex:I
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$500(Lcom/android/lgesettings/DreamSettings;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mItemIndex:I
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$500(Lcom/android/lgesettings/DreamSettings;)I

    move-result v0

    if-ne v0, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/lgesettings/DreamBackend;->setActivatedOnDock(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;
    invoke-static {v0}, Lcom/android/lgesettings/DreamSettings;->access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;

    move-result-object v0

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mItemIndex:I
    invoke-static {v3}, Lcom/android/lgesettings/DreamSettings;->access$500(Lcom/android/lgesettings/DreamSettings;)I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings$7;->this$0:Lcom/android/lgesettings/DreamSettings;

    #getter for: Lcom/android/lgesettings/DreamSettings;->mItemIndex:I
    invoke-static {v3}, Lcom/android/lgesettings/DreamSettings;->access$500(Lcom/android/lgesettings/DreamSettings;)I

    move-result v3

    if-ne v3, v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/lgesettings/DreamBackend;->setActivatedOnSleep(Z)V

    .line 337
    return-void

    :cond_3
    move v0, v1

    .line 335
    goto :goto_0
.end method
