.class public Lcom/wsw/cospa/vo/FindParentVo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private childVoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindChildVo;",
            ">;"
        }
    .end annotation
.end field

.field private parentName:Ljava/lang/String;

.field private parentTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildVoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindChildVo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindParentVo;->childVoList:Ljava/util/List;

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindParentVo;->parentName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindParentVo;->parentTag:Ljava/lang/String;

    return-object v0
.end method

.method public setChildVoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindChildVo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindParentVo;->childVoList:Ljava/util/List;

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindParentVo;->parentName:Ljava/lang/String;

    return-void
.end method

.method public setParentTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindParentVo;->parentTag:Ljava/lang/String;

    return-void
.end method
