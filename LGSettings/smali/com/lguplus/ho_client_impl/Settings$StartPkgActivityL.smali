.class Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/ho_client_impl/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartPkgActivityL"
.end annotation


# instance fields
.field clsName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lguplus/ho_client_impl/Settings;


# direct methods
.method constructor <init>(Lcom/lguplus/ho_client_impl/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "clsName_"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;->clsName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "p"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;->this$0:Lcom/lguplus/ho_client_impl/Settings;

    iget-object v1, p0, Lcom/lguplus/ho_client_impl/Settings$StartPkgActivityL;->clsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lguplus/ho_client_impl/Settings;->startPkgActivity(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
