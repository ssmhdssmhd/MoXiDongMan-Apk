.class public final Landroid/support/v4/u;
.super Lorg/antlr/v4/runtime/atn/catch;
.source "SourceFile"


# instance fields
.field public final final:I

.field public final super:I

.field public final throw:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/finally;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/u;-><init>(Landroid/support/v4/finally;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/finally;IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/atn/catch;-><init>(Landroid/support/v4/finally;)V

    .line 3
    iput p2, p0, Landroid/support/v4/u;->final:I

    .line 4
    iput p3, p0, Landroid/support/v4/u;->super:I

    .line 5
    iput-boolean p4, p0, Landroid/support/v4/u;->throw:Z

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public new(III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/u;->final:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/u;->super:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
