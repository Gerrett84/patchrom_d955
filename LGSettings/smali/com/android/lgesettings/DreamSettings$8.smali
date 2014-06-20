.class Lcom/android/lgesettings/DreamSettings$8;
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
    .line 328
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$8;->this$0:Lcom/android/lgesettings/DreamSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings$8;->this$0:Lcom/android/lgesettings/DreamSettings;

    #setter for: Lcom/android/lgesettings/DreamSettings;->mItemIndex:I
    invoke-static {v0, p2}, Lcom/android/lgesettings/DreamSettings;->access$502(Lcom/android/lgesettings/DreamSettings;I)I

    .line 331
    return-void
.end method
