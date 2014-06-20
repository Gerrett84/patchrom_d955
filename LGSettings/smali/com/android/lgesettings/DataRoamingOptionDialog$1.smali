.class Lcom/android/lgesettings/DataRoamingOptionDialog$1;
.super Ljava/lang/Object;
.source "DataRoamingOptionDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataRoamingOptionDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataRoamingOptionDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataRoamingOptionDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/lgesettings/DataRoamingOptionDialog$1;->this$0:Lcom/android/lgesettings/DataRoamingOptionDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 145
    if-eqz p2, :cond_0

    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->access$102(I)I

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/lgesettings/DataRoamingOptionDialog;->access$102(I)I

    goto :goto_0
.end method
