.class Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;
.super Ljava/lang/Object;
.source "QuickCaseLollipopSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    #calls: Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->access$000(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_type"

    invoke-static {}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->access$100()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    #calls: Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->access$200(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lollipop_cover_type"

    invoke-static {}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->access$300()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    #calls: Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->operateCondition()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->access$400(Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;)V

    .line 171
    iget-object v0, p0, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings$5;->this$0:Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;

    invoke-virtual {v0}, Lcom/android/lgesettings/lge/QuickCaseLollipopSettings;->finish()V

    .line 172
    return-void
.end method
