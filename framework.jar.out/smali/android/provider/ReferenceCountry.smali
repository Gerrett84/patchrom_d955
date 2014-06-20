.class public Landroid/provider/ReferenceCountry;
.super Ljava/lang/Object;
.source "ReferenceCountry.java"


# instance fields
.field private areaCode:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private iddPrefix:Ljava/lang/String;

.field private index:I

.field private mccCode:Ljava/lang/String;

.field private nanp:Ljava/lang/String;

.field private nddPrefix:Ljava/lang/String;

.field private numLength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "countryName"
    .parameter "mccCode"
    .parameter "countryCode"
    .parameter "iddPrefix"
    .parameter "nddPrefix"
    .parameter "nanp"
    .parameter "areaCode"
    .parameter "numLength"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/provider/ReferenceCountry;->index:I

    .line 50
    iput-object p2, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    .line 57
    iput-object p9, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "countryName"
    .parameter "mccCode"
    .parameter "countryCode"
    .parameter "iddPrefix"
    .parameter "nddPrefix"
    .parameter "nanp"
    .parameter "areaCode"
    .parameter "numLength"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIddPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/provider/ReferenceCountry;->index:I

    return v0
.end method

.method public getMccCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNanp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    return-object v0
.end method

.method public getNddPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNumLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0
    .parameter "areaCode"

    .prologue
    .line 182
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->areaCode:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 118
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->countryCode:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0
    .parameter "countryName"

    .prologue
    .line 72
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->countryName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setIddPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "iddPrefix"

    .prologue
    .line 134
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->iddPrefix:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 95
    iput p1, p0, Landroid/provider/ReferenceCountry;->index:I

    .line 96
    return-void
.end method

.method public setMccCode(Ljava/lang/String;)V
    .locals 0
    .parameter "mccCode"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->mccCode:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setNanp(Ljava/lang/String;)V
    .locals 0
    .parameter "nanp"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->nanp:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setNddPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "nddPrefix"

    .prologue
    .line 150
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->nddPrefix:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setNumLength(Ljava/lang/String;)V
    .locals 0
    .parameter "numLength"

    .prologue
    .line 198
    iput-object p1, p0, Landroid/provider/ReferenceCountry;->numLength:Ljava/lang/String;

    .line 199
    return-void
.end method
