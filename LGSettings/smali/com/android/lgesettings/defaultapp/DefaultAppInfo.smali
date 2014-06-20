.class public Lcom/android/lgesettings/defaultapp/DefaultAppInfo;
.super Ljava/lang/Object;
.source "DefaultAppInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/lgesettings/defaultapp/DefaultAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "packageName"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mPackageName:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/lgesettings/defaultapp/DefaultAppInfo;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4
    check-cast p1, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/defaultapp/DefaultAppInfo;->compareTo(Lcom/android/lgesettings/defaultapp/DefaultAppInfo;)I

    move-result v0

    return v0
.end method
