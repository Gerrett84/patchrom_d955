.class Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener$1;
.super Ljava/lang/Object;
.source "SettingsBreadCrumb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->onBackStackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener$1;->this$1:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener$1;->this$1:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    iget-object v0, v0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    #getter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$000(Lcom/android/lgesettings/SettingsBreadCrumb;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 163
    return-void
.end method
