.class public Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;
.super Ljava/lang/Object;
.source "DefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/defaultapp/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mButtonView:Landroid/widget/Button;

.field public mImageView:Landroid/widget/ImageView;

.field public mNameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/defaultapp/DefaultAppSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppSettings$ViewHolder;->this$0:Lcom/android/lgesettings/defaultapp/DefaultAppSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
