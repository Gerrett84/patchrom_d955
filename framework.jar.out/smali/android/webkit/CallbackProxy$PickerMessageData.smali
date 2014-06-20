.class Landroid/webkit/CallbackProxy$PickerMessageData;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickerMessageData"
.end annotation


# instance fields
.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "value"

    .prologue
    .line 2049
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    iput-object p1, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mType:Ljava/lang/String;

    .line 2051
    iput-object p2, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mValue:Ljava/lang/String;

    .line 2052
    return-void
.end method

.method static synthetic access$300(Landroid/webkit/CallbackProxy$PickerMessageData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2045
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/CallbackProxy$PickerMessageData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2045
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/webkit/CallbackProxy$PickerMessageData;->mValue:Ljava/lang/String;

    return-object v0
.end method
