.class Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;
.super Ljava/lang/Object;
.source "VibrateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/vibratecreation/VibrateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Section"
.end annotation


# instance fields
.field adapter:Landroid/widget/Adapter;

.field caption:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateAdapter;Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 0
    .parameter
    .parameter "_caption"
    .parameter "_adapter"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->caption:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/android/lgesettings/vibratecreation/VibrateAdapter$Section;->adapter:Landroid/widget/Adapter;

    .line 150
    return-void
.end method
