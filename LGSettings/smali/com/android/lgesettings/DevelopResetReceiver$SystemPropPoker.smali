.class Lcom/android/lgesettings/DevelopResetReceiver$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "DevelopResetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DevelopResetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/DevelopResetReceiver$SystemPropPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .line 221
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 227
    .local v8, services:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 228
    .local v7, service:Ljava/lang/String;
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 229
    .local v6, obj:Landroid/os/IBinder;
    if-eqz v6, :cond_0

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 232
    .local v1, data:Landroid/os/Parcel;
    const v9, 0x5f535052

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v6, v9, v1, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 227
    .end local v1           #data:Landroid/os/Parcel;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #obj:Landroid/os/IBinder;
    .end local v7           #service:Ljava/lang/String;
    .end local v8           #services:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 238
    :cond_1
    :goto_2
    return-object v12

    .line 224
    :catch_1
    move-exception v5

    .line 225
    .local v5, npe:Ljava/lang/NullPointerException;
    goto :goto_2

    .line 233
    .end local v5           #npe:Ljava/lang/NullPointerException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #data:Landroid/os/Parcel;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #obj:Landroid/os/IBinder;
    .restart local v7       #service:Ljava/lang/String;
    .restart local v8       #services:[Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_1
.end method
