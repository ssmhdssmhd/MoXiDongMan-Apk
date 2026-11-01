.class public Lcom/wsw/cospa/bean/LocalComicBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private folderName:Ljava/lang/String;

.field private folderPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/LocalComicBean;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/bean/LocalComicBean;->folderPath:Ljava/lang/String;

    return-object v0
.end method

.method public setFolderName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/LocalComicBean;->folderName:Ljava/lang/String;

    return-void
.end method

.method public setFolderPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/bean/LocalComicBean;->folderPath:Ljava/lang/String;

    return-void
.end method
