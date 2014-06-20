.class Landroid/webkit/LGWebNotifications$1Task;
.super Landroid/os/AsyncTask;
.source "LGWebNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/LGWebNotifications;->show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field iconUrl:Ljava/lang/String;

.field id:I

.field text:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/LGWebNotifications;

.field title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/LGWebNotifications;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Landroid/webkit/LGWebNotifications$1Task;->this$0:Landroid/webkit/LGWebNotifications;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/webkit/LGWebNotifications$1Task;->this$0:Landroid/webkit/LGWebNotifications;

    iget-object v1, p0, Landroid/webkit/LGWebNotifications$1Task;->iconUrl:Ljava/lang/String;

    #calls: Landroid/webkit/LGWebNotifications;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/webkit/LGWebNotifications;->access$000(Landroid/webkit/LGWebNotifications;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/LGWebNotifications$1Task;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 163
    iget-object v0, p0, Landroid/webkit/LGWebNotifications$1Task;->this$0:Landroid/webkit/LGWebNotifications;

    iget v1, p0, Landroid/webkit/LGWebNotifications$1Task;->id:I

    iget-object v2, p0, Landroid/webkit/LGWebNotifications$1Task;->title:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LGWebNotifications$1Task;->text:Ljava/lang/String;

    #calls: Landroid/webkit/LGWebNotifications;->show(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, v3, p1}, Landroid/webkit/LGWebNotifications;->access$100(Landroid/webkit/LGWebNotifications;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/webkit/LGWebNotifications$1Task;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
