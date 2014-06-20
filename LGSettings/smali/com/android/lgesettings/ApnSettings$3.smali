.class Lcom/android/lgesettings/ApnSettings$3;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/ApnSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/lgesettings/ApnSettings$3;->this$0:Lcom/android/lgesettings/ApnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/lgesettings/ApnSettings$3;->this$0:Lcom/android/lgesettings/ApnSettings;

    iget-object v1, p0, Lcom/android/lgesettings/ApnSettings$3;->this$0:Lcom/android/lgesettings/ApnSettings;

    #getter for: Lcom/android/lgesettings/ApnSettings;->buf_prevkey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/ApnSettings;->access$300(Lcom/android/lgesettings/ApnSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/ApnSettings;->access$800(Lcom/android/lgesettings/ApnSettings;Ljava/lang/String;)V

    .line 1219
    return-void
.end method
