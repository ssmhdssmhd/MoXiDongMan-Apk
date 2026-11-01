.class public Lcom/wsw/cospa/bean/StorageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isRemovable:Z

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/StorageInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isRemovable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/bean/StorageInfo;->isRemovable:Z

    return v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/StorageInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setRemovable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/bean/StorageInfo;->isRemovable:Z

    return-void
.end method
