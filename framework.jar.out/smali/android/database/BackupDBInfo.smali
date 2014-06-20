.class public Landroid/database/BackupDBInfo;
.super Ljava/lang/Object;
.source "BackupDBInfo.java"


# instance fields
.field private mBackupPath:Ljava/lang/String;

.field private mBackupStatus:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "backupPath"
    .parameter "backupStatus"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/BackupDBInfo;->mBackupPath:Ljava/lang/String;

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Landroid/database/BackupDBInfo;->mBackupStatus:I

    .line 31
    iput-object p1, p0, Landroid/database/BackupDBInfo;->mBackupPath:Ljava/lang/String;

    .line 32
    iput p2, p0, Landroid/database/BackupDBInfo;->mBackupStatus:I

    .line 33
    return-void
.end method


# virtual methods
.method public getBackupPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Landroid/database/BackupDBInfo;->mBackupPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupStatus()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/database/BackupDBInfo;->mBackupStatus:I

    return v0
.end method

.method setBackupStatus(I)V
    .locals 0
    .parameter "backupStatus"

    .prologue
    .line 48
    iput p1, p0, Landroid/database/BackupDBInfo;->mBackupStatus:I

    .line 49
    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "backupPath"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/database/BackupDBInfo;->mBackupPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/database/BackupDBInfo;->mBackupPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/BackupDBInfo;->mBackupStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
