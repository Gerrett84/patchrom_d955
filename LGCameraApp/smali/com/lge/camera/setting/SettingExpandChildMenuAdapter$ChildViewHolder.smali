.class public Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "SettingExpandChildMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildViewHolder"
.end annotation


# instance fields
.field mImage:Landroid/widget/ImageView;

.field mName:Landroid/widget/TextView;

.field mRadio:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lge/camera/setting/SettingExpandChildMenuAdapter$ChildViewHolder;->this$0:Lcom/lge/camera/setting/SettingExpandChildMenuAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
