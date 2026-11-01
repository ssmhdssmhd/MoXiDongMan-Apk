.class public Landroid/support/v4/tf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private contentLength:J

.field private currentBytes:J

.field private done:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/support/v4/tf1;->currentBytes:J

    .line 3
    iput-wide p3, p0, Landroid/support/v4/tf1;->contentLength:J

    .line 4
    iput-boolean p5, p0, Landroid/support/v4/tf1;->done:Z

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/tf1;->contentLength:J

    return-wide v0
.end method

.method public getCurrentBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/tf1;->currentBytes:J

    return-wide v0
.end method

.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/tf1;->done:Z

    return v0
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/tf1;->contentLength:J

    return-void
.end method

.method public setCurrentBytes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/tf1;->currentBytes:J

    return-void
.end method

.method public setDone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/tf1;->done:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressModel{currentBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/tf1;->currentBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/v4/tf1;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", done="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v4/tf1;->done:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
