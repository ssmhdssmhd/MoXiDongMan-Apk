.class public Landroid/support/v4/xi1;
.super Landroid/support/v4/wi1;
.source "SourceFile"


# instance fields
.field private final mNetworkException:Landroid/support/v4/c31;

.field private final mQuicDetailedErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/wi1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    new-instance v0, Landroid/support/v4/c31;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/c31;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroid/support/v4/xi1;->mNetworkException:Landroid/support/v4/c31;

    .line 3
    iput p4, p0, Landroid/support/v4/xi1;->mQuicDetailedErrorCode:I

    return-void
.end method


# virtual methods
.method public getCronetInternalErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xi1;->mNetworkException:Landroid/support/v4/c31;

    invoke-virtual {v0}, Landroid/support/v4/c31;->getCronetInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xi1;->mNetworkException:Landroid/support/v4/c31;

    invoke-virtual {v0}, Landroid/support/v4/c31;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/xi1;->mNetworkException:Landroid/support/v4/c31;

    invoke-virtual {v1}, Landroid/support/v4/c31;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", QuicDetailedErrorCode="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/xi1;->mQuicDetailedErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuicDetailedErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/xi1;->mQuicDetailedErrorCode:I

    return v0
.end method

.method public immediatelyRetryable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xi1;->mNetworkException:Landroid/support/v4/c31;

    invoke-virtual {v0}, Landroid/support/v4/c31;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
