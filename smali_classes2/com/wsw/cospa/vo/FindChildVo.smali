.class public Lcom/wsw/cospa/vo/FindChildVo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private kindName:Ljava/lang/String;

.field private kindUrl:Ljava/lang/String;

.field private parentName:Ljava/lang/String;

.field private parentTag:Ljava/lang/String;

.field public position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/vo/FindChildVo;->position:I

    return-void
.end method


# virtual methods
.method public getKindName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindChildVo;->kindName:Ljava/lang/String;

    return-object v0
.end method

.method public getKindUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindChildVo;->kindUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindChildVo;->parentName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/vo/FindChildVo;->parentTag:Ljava/lang/String;

    return-object v0
.end method

.method public setKindName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindChildVo;->kindName:Ljava/lang/String;

    return-void
.end method

.method public setKindUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindChildVo;->kindUrl:Ljava/lang/String;

    return-void
.end method

.method public setParentName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindChildVo;->parentName:Ljava/lang/String;

    return-void
.end method

.method public setParentTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/vo/FindChildVo;->parentTag:Ljava/lang/String;

    return-void
.end method
