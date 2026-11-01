.class public Lcom/wsw/cospa/web/utils/ReturnData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/lang/Object;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private isSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->isSuccess:Z

    const-string v0, "\u672a\u77e5\u9519\u8bef,\u8bf7\u8054\u7cfb\u5f00\u53d1\u8005!"

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->isSuccess:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->isSuccess:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->errorMsg:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/web/utils/ReturnData;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/web/utils/ReturnData;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/wsw/cospa/web/utils/ReturnData;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/web/utils/ReturnData;->isSuccess:Z

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/web/utils/ReturnData;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/web/utils/ReturnData;->isSuccess:Z

    return-void
.end method
